package io.github.lazyimmortal.sesame.model.task.antFarm;

import io.github.lazyimmortal.sesame.data.ConfigV2;
import io.github.lazyimmortal.sesame.data.ModelFields;
import io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField;
import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.model.base.TaskAlternative;
import io.github.lazyimmortal.sesame.model.normal.base.BaseModel;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.MessageUtil;
import io.github.lazyimmortal.sesame.util.RandomUtil;
import io.github.lazyimmortal.sesame.util.Status;
import io.github.lazyimmortal.sesame.util.TaskIconUtil;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import io.github.lazyimmortal.sesame.util.idMap.AntFarmChickenChefTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.MiniGameTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ChickenKitchen {
    private static final int AI_KITCHEN_EXPLORATION_RESERVE = 3;
    private static final int AI_KITCHEN_INGREDIENT_COUNT = 3;
    private static final int AI_KITCHEN_MAX_COOK_TIMES = 20;
    private static final String TAG = "AntFarm";
    private static final Map<String, List<AiKitchenDish>> AI_KITCHEN_DISH_CACHE = new HashMap();

    public interface ChickenChefCookStrategy {
        public static final int MASTERY = 0;
        public static final int RANDOM = 2;
        public static final int RICHNESS = 1;
        public static final String[] nickNames = {"精通优先", "丰富优先", "随机制作"};
    }

    private static final class AiKitchenDish {
        private int highestScore;
        private final List<String> ingredientIds;

        private AiKitchenDish(List<String> list, int i) {
            this.ingredientIds = list;
            this.highestScore = i;
        }
    }

    public static void collectDailyFoodMaterial(String str) {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.enterKitchen(str));
            String str2 = TAG;
            if (MessageUtil.checkMemo(str2, jSONObject).booleanValue()) {
                boolean z = jSONObject.getBoolean("canCollectDailyFoodMaterial");
                int i = jSONObject.getInt("dailyFoodMaterialAmount");
                int iOptInt = jSONObject.optInt("garbageAmount", 0);
                if (jSONObject.has("orchardFoodMaterialStatus") && "FINISHED".equals(jSONObject.getJSONObject("orchardFoodMaterialStatus").optString("foodStatus"))) {
                    JSONObject jSONObject2 = new JSONObject(AntFarmRpcCall.farmFoodMaterialCollect());
                    if ("100".equals(jSONObject2.getString("resultCode"))) {
                        Log.farm("小鸡厨房👨🏻\u200d🍳农场食材#领取[" + jSONObject2.getInt("foodMaterialAddCount") + "g食材]");
                    } else {
                        Log.i(str2, jSONObject2.toString());
                    }
                }
                if (z && MessageUtil.checkMemo(str2, new JSONObject(AntFarmRpcCall.collectDailyFoodMaterial(i))).booleanValue()) {
                    Log.farm("小鸡厨房👨🏻\u200d🍳今日食材#领取[" + i + "g食材]");
                }
                if (iOptInt > 0) {
                    JSONObject jSONObject3 = new JSONObject(AntFarmRpcCall.collectKitchenGarbage());
                    if (MessageUtil.checkMemo(str2, jSONObject3).booleanValue()) {
                        Log.farm("小鸡厨房👨🏻\u200d🍳收集厨余#获得[" + jSONObject3.getInt("recievedKitchenGarbageAmount") + "g肥料]");
                    }
                }
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "collectDailyFoodMaterial err:");
            Log.printStackTrace(str3, th);
        }
    }

    public static void collectDailyLimitedFoodMaterial() {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.queryFoodMaterialPack());
            String str = TAG;
            if (MessageUtil.checkMemo(str, jSONObject).booleanValue() && jSONObject.getBoolean("canCollectDailyLimitedFoodMaterial")) {
                int i = jSONObject.getInt("dailyLimitedFoodMaterialAmount");
                if (MessageUtil.checkMemo(str, new JSONObject(AntFarmRpcCall.collectDailyLimitedFoodMaterial(i))).booleanValue()) {
                    Log.farm("小鸡厨房👨🏻\u200d🍳领取[爱心食材店食材]#" + i + "g");
                }
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "collectDailyLimitedFoodMaterial err:");
            Log.printStackTrace(str2, th);
        }
    }

    public static void cook(String str) {
        int i;
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.enterKitchen(str));
            if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue() && (i = jSONObject.getInt("cookTimesAllowed")) > 0) {
                for (int i2 = 0; i2 < i; i2++) {
                    JSONObject jSONObject2 = new JSONObject(AntFarmRpcCall.cook(str));
                    if (MessageUtil.checkMemo(TAG, jSONObject2).booleanValue()) {
                        Log.farm("小鸡厨房👨🏻\u200d🍳制作[" + jSONObject2.getJSONObject("cuisineVO").getString("name") + "]");
                    }
                    TimeUtil.sleep(RandomUtil.delay());
                }
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "cook err:");
            Log.printStackTrace(str2, th);
        }
    }

    private static List<JSONObject> getSortedCuisineList(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.optJSONObject(i));
        }
        Collections.sort(arrayList, new Comparator<JSONObject>() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.ChickenKitchen.1
            @Override // java.util.Comparator
            public int compare(JSONObject jSONObject, JSONObject jSONObject2) {
                return jSONObject2.optInt("count") - jSONObject.optInt("count");
            }
        });
        return arrayList;
    }

    public static void useFarmFood(JSONArray jSONArray) {
        try {
            List<JSONObject> sortedCuisineList = getSortedCuisineList(jSONArray);
            for (int i = 0; i < sortedCuisineList.size() && useFarmFoodOne(sortedCuisineList.get(i)).booleanValue(); i++) {
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "useFarmFood err:");
            Log.printStackTrace(str, th);
        }
    }

    private static Boolean useFarmFoodOne(JSONObject jSONObject) {
        if (!Status.canUseSpecialFoodToday().booleanValue()) {
            return false;
        }
        try {
            String string = jSONObject.getString("cookbookId");
            String string2 = jSONObject.getString("cuisineId");
            String string3 = jSONObject.getString("name");
            int i = jSONObject.getInt("count");
            for (int i2 = 0; i2 < i; i2++) {
                JSONObject jSONObject2 = new JSONObject(AntFarmRpcCall.useFarmFood(string, string2));
                if (!MessageUtil.checkMemo(TAG, jSONObject2).booleanValue()) {
                    return false;
                }
                Log.farm("使用美食🍱[" + string3 + "]#加速" + jSONObject2.getJSONObject("foodEffect").getDouble("deltaProduce") + "颗爱心鸡蛋");
                Status.useSpecialFoodToday();
                if (!Status.canUseSpecialFoodToday().booleanValue()) {
                    break;
                }
            }
            return true;
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "useFarmFoodOne err:");
            Log.printStackTrace(str, th);
            return false;
        }
    }

    public static void chickenChefCook(int i) {
        List<JSONObject> listRandomCombo;
        AiKitchenDish aiKitchenDishPickMasteryComboDish;
        AiKitchenDish aiKitchenDishPickMasteryComboDish2;
        List<AiKitchenDish> list = null;
        Set<String> setBuildUsedCombos = null;
        boolean z = false;
        for (int i2 = 0; i2 < 20; i2++) {
            try {
                JSONObject jSONObject = new JSONObject(AntFarmRpcCall.enterAiKitchen());
                if (!MessageUtil.checkMemo(TAG, jSONObject).booleanValue() || !jSONObject.optBoolean("canCook", false)) {
                    return;
                }
                String strOptString = jSONObject.optString("seasonId", "AIKitchenSeasonOne");
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("ingredientList");
                if (jSONArrayOptJSONArray == null) {
                    return;
                }
                if (!z) {
                    String currentUid = UserIdMap.getCurrentUid();
                    Map<String, List<AiKitchenDish>> map = AI_KITCHEN_DISH_CACHE;
                    List<AiKitchenDish> listLoadAiKitchenDishes = map.get(currentUid);
                    if (listLoadAiKitchenDishes == null && (listLoadAiKitchenDishes = loadAiKitchenDishes(strOptString)) != null) {
                        map.put(currentUid, listLoadAiKitchenDishes);
                    }
                    list = listLoadAiKitchenDishes;
                    if (list != null) {
                        setBuildUsedCombos = buildUsedCombos(list);
                    }
                    z = true;
                }
                if (i2 == 0) {
                    StringBuilder sb = new StringBuilder();
                    int iOptInt = 0;
                    for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i3);
                        if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optInt("count") > 0) {
                            iOptInt += jSONObjectOptJSONObject.optInt("count");
                            if (sb.length() > 0) {
                                sb.append(' ');
                            }
                            sb.append(jSONObjectOptJSONObject.optString("ingredientName"));
                            sb.append(jSONObjectOptJSONObject.optInt("count"));
                        }
                    }
                    Log.record("小鸡大厨👨🏻\u200d🍳食材库存[" + ((Object) sb) + "]#可烹饪" + (iOptInt / 3) + "次");
                }
                ArrayList arrayList = new ArrayList();
                for (int i4 = 0; i4 < jSONArrayOptJSONArray.length(); i4++) {
                    JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i4);
                    if (jSONObjectOptJSONObject2 != null && jSONObjectOptJSONObject2.optInt("count") > 0) {
                        arrayList.add(jSONObjectOptJSONObject2);
                    }
                }
                if (arrayList.size() < 3) {
                    Log.record("小鸡大厨👨🏻\u200d🍳食材不足，跳过做美食");
                    return;
                }
                Collections.sort(arrayList, new Comparator<JSONObject>() { // from class: io.github.lazyimmortal.sesame.model.task.antFarm.ChickenKitchen.2
                    @Override // java.util.Comparator
                    public int compare(JSONObject jSONObject2, JSONObject jSONObject3) {
                        return jSONObject3.optInt("count") - jSONObject2.optInt("count");
                    }
                });
                if (i == 0) {
                    aiKitchenDishPickMasteryComboDish = pickMasteryComboDish(list, arrayList);
                    if (aiKitchenDishPickMasteryComboDish != null) {
                        listRandomCombo = buildComboFromDish(aiKitchenDishPickMasteryComboDish, arrayList);
                    } else if (allCombosUsed(arrayList, setBuildUsedCombos)) {
                        listRandomCombo = chooseFullComboCombo(arrayList, list);
                        if (listRandomCombo == null) {
                            Log.record("小鸡大厨👨🏻\u200d🍳精通已完成，全组合下可消耗食材不足，跳过做美食");
                            return;
                        }
                    } else {
                        listRandomCombo = chooseExplorationCombo(arrayList, list, setBuildUsedCombos);
                        if (listRandomCombo == null) {
                            Log.record("小鸡大厨👨🏻\u200d🍳精通已完成，没有可用于探索的食材，跳过做美食");
                            return;
                        }
                    }
                } else {
                    if (i == 1) {
                        listRandomCombo = chooseNewAiKitchenCombo(arrayList, setBuildUsedCombos);
                        if (listRandomCombo == null && allCombosUsed(arrayList, setBuildUsedCombos)) {
                            listRandomCombo = chooseFullComboCombo(arrayList, list);
                            if (listRandomCombo == null) {
                                Log.record("小鸡大厨👨🏻\u200d🍳剩余食材不足，跳过做美食#策略[" + ChickenChefCookStrategy.nickNames[i] + "]#原因[全组合下可消耗食材不足3种]");
                                return;
                            }
                        } else if (listRandomCombo == null) {
                            StringBuilder sb2 = new StringBuilder("手帐已无可用新组合");
                            if (hasOverstockIngredient(arrayList)) {
                                aiKitchenDishPickMasteryComboDish2 = pickMasteryComboDish(list, arrayList);
                                if (aiKitchenDishPickMasteryComboDish2 == null) {
                                    sb2.append("、精通配方食材不足");
                                }
                            } else {
                                sb2.append("、无单种食材超过3份");
                                aiKitchenDishPickMasteryComboDish2 = null;
                            }
                            List<JSONObject> listBuildComboFromDish = aiKitchenDishPickMasteryComboDish2 != null ? buildComboFromDish(aiKitchenDishPickMasteryComboDish2, arrayList) : null;
                            if (listBuildComboFromDish == null) {
                                List<JSONObject> listStockListTop3AboveReserve = stockListTop3AboveReserve(arrayList);
                                if (listStockListTop3AboveReserve == null) {
                                    sb2.append("、超过3份的食材不足3种");
                                    Log.record("小鸡大厨👨🏻\u200d🍳剩余食材不足，跳过做美食#策略[" + ChickenChefCookStrategy.nickNames[i] + "]#原因[" + ((Object) sb2) + "]");
                                    return;
                                }
                                listRandomCombo = listStockListTop3AboveReserve;
                            } else {
                                listRandomCombo = listBuildComboFromDish;
                            }
                            aiKitchenDishPickMasteryComboDish = aiKitchenDishPickMasteryComboDish2;
                        }
                    } else if (allCombosUsed(arrayList, setBuildUsedCombos)) {
                        listRandomCombo = chooseFullComboCombo(arrayList, list);
                        if (listRandomCombo == null) {
                            Log.record("小鸡大厨👨🏻\u200d🍳随机制作：全组合下可消耗食材不足，跳过做美食");
                            return;
                        }
                    } else {
                        listRandomCombo = randomCombo(arrayList, list);
                        if (listRandomCombo == null) {
                            Log.record("小鸡大厨👨🏻\u200d🍳随机制作：剩余组合均为满分菜品，跳过做美食");
                            return;
                        }
                    }
                    aiKitchenDishPickMasteryComboDish = null;
                }
                StringBuilder sb3 = new StringBuilder();
                ArrayList arrayList2 = new ArrayList();
                for (int i5 = 0; i5 < listRandomCombo.size(); i5++) {
                    String strOptString2 = listRandomCombo.get(i5).optString("ingredientId");
                    arrayList2.add(strOptString2);
                    if (i5 > 0) {
                        sb3.append(',');
                    }
                    sb3.append('\"');
                    sb3.append(strOptString2);
                    sb3.append('\"');
                }
                JSONObject jSONObject2 = new JSONObject(AntFarmRpcCall.cookAiKitchen(sb3.toString(), strOptString));
                if (!MessageUtil.checkMemo(TAG, jSONObject2).booleanValue()) {
                    return;
                }
                if (setBuildUsedCombos != null) {
                    setBuildUsedCombos.add(aiKitchenComboKey(arrayList2));
                }
                if (aiKitchenDishPickMasteryComboDish != null) {
                    aiKitchenDishPickMasteryComboDish.highestScore = Math.max(aiKitchenDishPickMasteryComboDish.highestScore, jSONObject2.optInt("highestScore", aiKitchenDishPickMasteryComboDish.highestScore));
                }
                boolean zOptBoolean = jSONObject2.optBoolean("firstUnlock");
                if (zOptBoolean) {
                    AI_KITCHEN_DISH_CACHE.remove(UserIdMap.getCurrentUid());
                }
                Log.farm("小鸡大厨👨🏻\u200d🍳制作[" + jSONObject2.optString("dishName") + "]#厨神分+" + jSONObject2.optInt("chefScoreDelta") + (zOptBoolean ? "#首次解锁新菜" : ""));
                TimeUtil.sleep((long) RandomUtil.delay());
            } catch (Throwable th) {
                String str = TAG;
                Log.i(str, "chickenChefCook err:");
                Log.printStackTrace(str, th);
                return;
            }
        }
    }

    private static List<AiKitchenDish> loadAiKitchenDishes(String str) {
        JSONArray jSONArrayOptJSONArray;
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.getAiKitchenCookbookInfo(str));
            if (!MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("dishList");
            if (jSONArrayOptJSONArray2 == null) {
                return arrayList;
            }
            for (int i = 0; i < jSONArrayOptJSONArray2.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray2.optJSONObject(i);
                if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optInt("cookCount") > 0) {
                    String strOptString = jSONObjectOptJSONObject.optString("dishId");
                    if (!strOptString.isEmpty()) {
                        JSONObject jSONObject2 = new JSONObject(AntFarmRpcCall.queryAiKitchenDishDetail(strOptString, str));
                        if (MessageUtil.checkMemo(TAG, jSONObject2).booleanValue() && (jSONArrayOptJSONArray = jSONObject2.optJSONArray("ingredientList")) != null && jSONArrayOptJSONArray.length() == 3) {
                            ArrayList arrayList2 = new ArrayList();
                            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i2);
                                if (jSONObjectOptJSONObject2 != null) {
                                    arrayList2.add(jSONObjectOptJSONObject2.optString("ingredientId"));
                                }
                            }
                            if (arrayList2.size() == 3) {
                                arrayList.add(new AiKitchenDish(arrayList2, jSONObjectOptJSONObject.optInt("highestScore")));
                            }
                            TimeUtil.sleep(RandomUtil.delay());
                        }
                    }
                }
            }
            Log.record("小鸡大厨👨🏻\u200d🍳风味手帐菜品" + arrayList.size() + "道");
            return arrayList;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "loadAiKitchenDishes err:");
            Log.printStackTrace(str2, th);
            return null;
        }
    }

    private static Set<String> buildUsedCombos(List<AiKitchenDish> list) {
        HashSet hashSet = new HashSet();
        Iterator<AiKitchenDish> it = list.iterator();
        while (it.hasNext()) {
            hashSet.add(aiKitchenComboKey(it.next().ingredientIds));
        }
        return hashSet;
    }

    private static AiKitchenDish pickMasteryComboDish(List<AiKitchenDish> list, List<JSONObject> list2) {
        AiKitchenDish aiKitchenDish = null;
        if (list != null && !list.isEmpty()) {
            for (AiKitchenDish aiKitchenDish2 : list) {
                if (aiKitchenDish2.highestScore < 100 && hasAllIngredients(aiKitchenDish2, list2) && (aiKitchenDish == null || aiKitchenDish2.highestScore > aiKitchenDish.highestScore)) {
                    aiKitchenDish = aiKitchenDish2;
                }
            }
        }
        return aiKitchenDish;
    }

    private static boolean allMasteryFull(List<AiKitchenDish> list) {
        if (list == null || list.isEmpty()) {
            return false;
        }
        Iterator<AiKitchenDish> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().highestScore < 100) {
                return false;
            }
        }
        return true;
    }

    private static boolean hasOverstockIngredient(List<JSONObject> list) {
        Iterator<JSONObject> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().optInt("count") > 3) {
                return true;
            }
        }
        return false;
    }

    private static boolean hasAllIngredients(AiKitchenDish aiKitchenDish, List<JSONObject> list) {
        for (String str : aiKitchenDish.ingredientIds) {
            for (JSONObject jSONObject : list) {
                if (!str.equals(jSONObject.optString("ingredientId")) || jSONObject.optInt("count") <= 0) {
                }
            }
            return false;
        }
        return true;
    }

    private static List<JSONObject> buildComboFromDish(AiKitchenDish aiKitchenDish, List<JSONObject> list) {
        JSONObject next;
        if (aiKitchenDish == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : aiKitchenDish.ingredientIds) {
            Iterator<JSONObject> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (str.equals(next.optString("ingredientId")) && next.optInt("count") > 0) {
                    break;
                }
            }
            if (next == null) {
                return null;
            }
            arrayList.add(next);
        }
        if (arrayList.size() == 3) {
            return arrayList;
        }
        return null;
    }

    private static List<JSONObject> stockListTop3AboveReserve(List<JSONObject> list) {
        ArrayList arrayList = new ArrayList();
        for (JSONObject jSONObject : list) {
            if (jSONObject.optInt("count") > 3) {
                arrayList.add(jSONObject);
            }
        }
        if (arrayList.size() < 3) {
            return null;
        }
        return new ArrayList(arrayList.subList(0, 3));
    }

    /* JADX WARN: Code duplicated, block: B:33:0x009d  */
    private static List<JSONObject> randomCombo(List<JSONObject> list, List<AiKitchenDish> list2) {
        boolean z = (list2 == null || list2.isEmpty()) ? false : true;
        HashSet hashSet = new HashSet();
        if (z) {
            for (AiKitchenDish aiKitchenDish : list2) {
                if (aiKitchenDish.highestScore >= 100) {
                    hashSet.add(aiKitchenComboKey(aiKitchenDish.ingredientIds));
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        int i = 0;
        while (i < size - 2) {
            int i2 = i + 1;
            int i3 = i2;
            while (i3 < size - 1) {
                int i4 = i3 + 1;
                for (int i5 = i4; i5 < size; i5++) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(list.get(i));
                    arrayList2.add(list.get(i3));
                    arrayList2.add(list.get(i5));
                    if (z) {
                        ArrayList arrayList3 = new ArrayList();
                        Iterator it = arrayList2.iterator();
                        while (it.hasNext()) {
                            arrayList3.add(((JSONObject) it.next()).optString("ingredientId"));
                        }
                        if (!hashSet.contains(aiKitchenComboKey(arrayList3))) {
                            arrayList.add(arrayList2);
                        }
                    } else {
                        arrayList.add(arrayList2);
                    }
                }
                i3 = i4;
            }
            i = i2;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return (List) arrayList.get(RandomUtil.nextInt(0, arrayList.size()));
    }

    private static List<JSONObject> chooseFullComboCombo(List<JSONObject> list, List<AiKitchenDish> list2) {
        if (list2 == null || allMasteryFull(list2)) {
            return randomAnyCombo(list);
        }
        HashSet hashSet = new HashSet();
        for (AiKitchenDish aiKitchenDish : list2) {
            if (aiKitchenDish.highestScore < 100) {
                hashSet.addAll(aiKitchenDish.ingredientIds);
            }
        }
        ArrayList arrayList = new ArrayList();
        for (JSONObject jSONObject : list) {
            if (!hashSet.contains(jSONObject.optString("ingredientId"))) {
                arrayList.add(jSONObject);
            }
        }
        if (arrayList.size() < 3) {
            return null;
        }
        return randomAnyCombo(arrayList);
    }

    private static List<JSONObject> randomAnyCombo(List<JSONObject> list) {
        ArrayList arrayList = new ArrayList(list);
        Collections.shuffle(arrayList);
        return new ArrayList(arrayList.subList(0, 3));
    }

    private static boolean allCombosUsed(List<JSONObject> list, Set<String> set) {
        if (set == null || set.isEmpty()) {
            return false;
        }
        int size = list.size();
        int i = 0;
        while (i < size - 2) {
            int i2 = i + 1;
            int i3 = i2;
            while (i3 < size - 1) {
                int i4 = i3 + 1;
                for (int i5 = i4; i5 < size; i5++) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(list.get(i).optString("ingredientId"));
                    arrayList.add(list.get(i3).optString("ingredientId"));
                    arrayList.add(list.get(i5).optString("ingredientId"));
                    if (!set.contains(aiKitchenComboKey(arrayList))) {
                        return false;
                    }
                }
                i3 = i4;
            }
            i = i2;
        }
        return true;
    }

    private static List<JSONObject> buildExplorationStock(List<JSONObject> list, List<AiKitchenDish> list2) {
        HashSet hashSet = new HashSet();
        if (list2 != null) {
            Iterator<AiKitchenDish> it = list2.iterator();
            while (it.hasNext()) {
                hashSet.addAll(it.next().ingredientIds);
            }
        }
        ArrayList arrayList = new ArrayList();
        for (JSONObject jSONObject : list) {
            if (!hashSet.contains(jSONObject.optString("ingredientId")) || jSONObject.optInt("count") > 3) {
                arrayList.add(jSONObject);
            }
        }
        return arrayList;
    }

    private static List<JSONObject> chooseExplorationCombo(List<JSONObject> list, List<AiKitchenDish> list2, Set<String> set) {
        List<JSONObject> listBuildExplorationStock = buildExplorationStock(list, list2);
        if (listBuildExplorationStock.size() < 3) {
            return null;
        }
        List<JSONObject> listChooseNewAiKitchenCombo = chooseNewAiKitchenCombo(listBuildExplorationStock, set);
        return listChooseNewAiKitchenCombo != null ? listChooseNewAiKitchenCombo : randomCombo(listBuildExplorationStock, list2);
    }

    private static List<JSONObject> chooseNewAiKitchenCombo(List<JSONObject> list, Set<String> set) {
        int size = list.size();
        int i = 0;
        while (i < size - 2) {
            int i2 = i + 1;
            int i3 = i2;
            while (i3 < size - 1) {
                int i4 = i3 + 1;
                for (int i5 = i4; i5 < size; i5++) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(list.get(i).optString("ingredientId"));
                    arrayList.add(list.get(i3).optString("ingredientId"));
                    arrayList.add(list.get(i5).optString("ingredientId"));
                    if (set == null || !set.contains(aiKitchenComboKey(arrayList))) {
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(list.get(i));
                        arrayList2.add(list.get(i3));
                        arrayList2.add(list.get(i5));
                        return arrayList2;
                    }
                }
                i3 = i4;
            }
            i = i2;
        }
        return null;
    }

    private static String aiKitchenComboKey(List<String> list) {
        ArrayList<String> arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        StringBuilder sb = new StringBuilder();
        for (String str : arrayList) {
            if (sb.length() > 0) {
                sb.append(',');
            }
            sb.append(str);
        }
        return sb.toString();
    }

    public static void chickenChefCookbookInfo() {
        try {
            JSONObject jSONObject = new JSONObject(AntFarmRpcCall.getAiKitchenCookbookInfo("AIKitchenSeasonOne"));
            if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                StringBuilder sb = new StringBuilder();
                sb.append("小鸡大厨👨🏻\u200d🍳[");
                sb.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                sb.append("]");
                sb.append("[");
                sb.append(jSONObject.optString("seasonName"));
                sb.append("]");
                sb.append("厨神分");
                sb.append(jSONObject.optInt("chefScore"));
                sb.append(";精通分");
                sb.append(jSONObject.optInt("masteryScore"));
                sb.append(";丰富度");
                sb.append(jSONObject.optInt("richnessScore"));
                sb.append(";图鉴");
                sb.append(jSONObject.optInt("totalUnlockedDishCount"));
                sb.append("/");
                sb.append(jSONObject.optInt("totalNormalDishCount"));
                sb.append("(黑暗");
                sb.append(jSONObject.optInt("unlockedDarkDishCount"));
                sb.append("/");
                sb.append(jSONObject.optInt("totalDarkDishCount"));
                sb.append(");");
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("dishList");
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                    sb.append("拿手菜");
                    sb.append(jSONArrayOptJSONArray.length());
                    sb.append("道[");
                    for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                        if (jSONObjectOptJSONObject != null) {
                            if (i > 0) {
                                sb.append(';');
                            }
                            sb.append(jSONObjectOptJSONObject.optString("dishName"));
                            sb.append('(');
                            sb.append(jSONObjectOptJSONObject.optString("highestGrade"));
                            sb.append(' ');
                            sb.append(jSONObjectOptJSONObject.optInt("highestScore"));
                            sb.append("分/");
                            sb.append(jSONObjectOptJSONObject.optInt("cookCount"));
                            sb.append("次)");
                        }
                    }
                    sb.append("];");
                }
                Log.info(sb.toString());
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "chickenChefCookbookInfo err:");
            Log.printStackTrace(str, th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x006d A[Catch: all -> 0x0251, TRY_LEAVE, TryCatch #0 {all -> 0x0251, blocks: (B:3:0x0002, B:6:0x0018, B:7:0x0020, B:9:0x0026, B:12:0x005a, B:15:0x006d, B:18:0x0079, B:20:0x0087, B:22:0x009e, B:27:0x00b9, B:31:0x00cb, B:33:0x00d4, B:34:0x00ff, B:36:0x010e, B:39:0x0116, B:42:0x012a, B:45:0x013b, B:46:0x015d, B:47:0x01c0, B:49:0x01cf, B:51:0x01d7, B:52:0x01dd, B:54:0x01ee, B:57:0x021c), top: B:64:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:18:0x0079 A[Catch: all -> 0x0251, TRY_ENTER, TryCatch #0 {all -> 0x0251, blocks: (B:3:0x0002, B:6:0x0018, B:7:0x0020, B:9:0x0026, B:12:0x005a, B:15:0x006d, B:18:0x0079, B:20:0x0087, B:22:0x009e, B:27:0x00b9, B:31:0x00cb, B:33:0x00d4, B:34:0x00ff, B:36:0x010e, B:39:0x0116, B:42:0x012a, B:45:0x013b, B:46:0x015d, B:47:0x01c0, B:49:0x01cf, B:51:0x01d7, B:52:0x01dd, B:54:0x01ee, B:57:0x021c), top: B:64:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:20:0x0087 A[Catch: all -> 0x0251, TryCatch #0 {all -> 0x0251, blocks: (B:3:0x0002, B:6:0x0018, B:7:0x0020, B:9:0x0026, B:12:0x005a, B:15:0x006d, B:18:0x0079, B:20:0x0087, B:22:0x009e, B:27:0x00b9, B:31:0x00cb, B:33:0x00d4, B:34:0x00ff, B:36:0x010e, B:39:0x0116, B:42:0x012a, B:45:0x013b, B:46:0x015d, B:47:0x01c0, B:49:0x01cf, B:51:0x01d7, B:52:0x01dd, B:54:0x01ee, B:57:0x021c), top: B:64:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x009e A[Catch: all -> 0x0251, TryCatch #0 {all -> 0x0251, blocks: (B:3:0x0002, B:6:0x0018, B:7:0x0020, B:9:0x0026, B:12:0x005a, B:15:0x006d, B:18:0x0079, B:20:0x0087, B:22:0x009e, B:27:0x00b9, B:31:0x00cb, B:33:0x00d4, B:34:0x00ff, B:36:0x010e, B:39:0x0116, B:42:0x012a, B:45:0x013b, B:46:0x015d, B:47:0x01c0, B:49:0x01cf, B:51:0x01d7, B:52:0x01dd, B:54:0x01ee, B:57:0x021c), top: B:64:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:25:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:26:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:46:0x015d A[Catch: all -> 0x0251, TryCatch #0 {all -> 0x0251, blocks: (B:3:0x0002, B:6:0x0018, B:7:0x0020, B:9:0x0026, B:12:0x005a, B:15:0x006d, B:18:0x0079, B:20:0x0087, B:22:0x009e, B:27:0x00b9, B:31:0x00cb, B:33:0x00d4, B:34:0x00ff, B:36:0x010e, B:39:0x0116, B:42:0x012a, B:45:0x013b, B:46:0x015d, B:47:0x01c0, B:49:0x01cf, B:51:0x01d7, B:52:0x01dd, B:54:0x01ee, B:57:0x021c), top: B:64:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x01c0 A[Catch: all -> 0x0251, TryCatch #0 {all -> 0x0251, blocks: (B:3:0x0002, B:6:0x0018, B:7:0x0020, B:9:0x0026, B:12:0x005a, B:15:0x006d, B:18:0x0079, B:20:0x0087, B:22:0x009e, B:27:0x00b9, B:31:0x00cb, B:33:0x00d4, B:34:0x00ff, B:36:0x010e, B:39:0x0116, B:42:0x012a, B:45:0x013b, B:46:0x015d, B:47:0x01c0, B:49:0x01cf, B:51:0x01d7, B:52:0x01dd, B:54:0x01ee, B:57:0x021c), top: B:64:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x01cf A[Catch: all -> 0x0251, TryCatch #0 {all -> 0x0251, blocks: (B:3:0x0002, B:6:0x0018, B:7:0x0020, B:9:0x0026, B:12:0x005a, B:15:0x006d, B:18:0x0079, B:20:0x0087, B:22:0x009e, B:27:0x00b9, B:31:0x00cb, B:33:0x00d4, B:34:0x00ff, B:36:0x010e, B:39:0x0116, B:42:0x012a, B:45:0x013b, B:46:0x015d, B:47:0x01c0, B:49:0x01cf, B:51:0x01d7, B:52:0x01dd, B:54:0x01ee, B:57:0x021c), top: B:64:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x01d7 A[Catch: all -> 0x0251, TryCatch #0 {all -> 0x0251, blocks: (B:3:0x0002, B:6:0x0018, B:7:0x0020, B:9:0x0026, B:12:0x005a, B:15:0x006d, B:18:0x0079, B:20:0x0087, B:22:0x009e, B:27:0x00b9, B:31:0x00cb, B:33:0x00d4, B:34:0x00ff, B:36:0x010e, B:39:0x0116, B:42:0x012a, B:45:0x013b, B:46:0x015d, B:47:0x01c0, B:49:0x01cf, B:51:0x01d7, B:52:0x01dd, B:54:0x01ee, B:57:0x021c), top: B:64:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x01dd A[Catch: all -> 0x0251, TryCatch #0 {all -> 0x0251, blocks: (B:3:0x0002, B:6:0x0018, B:7:0x0020, B:9:0x0026, B:12:0x005a, B:15:0x006d, B:18:0x0079, B:20:0x0087, B:22:0x009e, B:27:0x00b9, B:31:0x00cb, B:33:0x00d4, B:34:0x00ff, B:36:0x010e, B:39:0x0116, B:42:0x012a, B:45:0x013b, B:46:0x015d, B:47:0x01c0, B:49:0x01cf, B:51:0x01d7, B:52:0x01dd, B:54:0x01ee, B:57:0x021c), top: B:64:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x01ee A[Catch: all -> 0x0251, TryCatch #0 {all -> 0x0251, blocks: (B:3:0x0002, B:6:0x0018, B:7:0x0020, B:9:0x0026, B:12:0x005a, B:15:0x006d, B:18:0x0079, B:20:0x0087, B:22:0x009e, B:27:0x00b9, B:31:0x00cb, B:33:0x00d4, B:34:0x00ff, B:36:0x010e, B:39:0x0116, B:42:0x012a, B:45:0x013b, B:46:0x015d, B:47:0x01c0, B:49:0x01cf, B:51:0x01d7, B:52:0x01dd, B:54:0x01ee, B:57:0x021c), top: B:64:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x021c A[Catch: all -> 0x0251, TRY_LEAVE, TryCatch #0 {all -> 0x0251, blocks: (B:3:0x0002, B:6:0x0018, B:7:0x0020, B:9:0x0026, B:12:0x005a, B:15:0x006d, B:18:0x0079, B:20:0x0087, B:22:0x009e, B:27:0x00b9, B:31:0x00cb, B:33:0x00d4, B:34:0x00ff, B:36:0x010e, B:39:0x0116, B:42:0x012a, B:45:0x013b, B:46:0x015d, B:47:0x01c0, B:49:0x01cf, B:51:0x01d7, B:52:0x01dd, B:54:0x01ee, B:57:0x021c), top: B:64:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:75:0x021b A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:20:0x0087, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:22:0x009e, please report this as an issue */
    public static void chickenChefTask(String str, Set<String> set, SelectModelField selectModelField) {
        String str2;
        JSONArray jSONArray;
        int iOptInt;
        int iOptInt2;
        int iRightsTimesToDo;
        int i;
        String str3;
        JSONObject jSONObject;
        String strOptString;
        boolean z;
        try {
            JSONObject jSONObject2 = new JSONObject(AntFarmRpcCall.listAiKitchenTask());
            if (MessageUtil.checkMemo(TAG, jSONObject2).booleanValue()) {
                JSONArray jSONArray2 = jSONObject2.getJSONArray("farmTaskList");
                int i2 = 0;
                int i3 = 0;
                while (i3 < jSONArray2.length()) {
                    JSONObject jSONObject3 = jSONArray2.getJSONObject(i3);
                    String strOptString2 = jSONObject3.optString("title");
                    String strOptString3 = jSONObject3.optString("taskId");
                    String strOptString4 = jSONObject3.optString("bizKey", strOptString3);
                    String strOptString5 = jSONObject3.optString("taskType", strOptString3);
                    String strOptString6 = jSONObject3.optString("taskStatus", "TODO");
                    if (AntFarm.TaskStatus.FINISHED.name().equals(strOptString6)) {
                        chickenChefTaskAward(jSONObject3, strOptString2, strOptString5);
                        if (jSONObject3.optInt("rightsTimesLimit", i2) <= jSONObject3.optInt("rightsTimes", i2)) {
                            jSONArray = jSONArray2;
                        } else {
                            str2 = "]";
                            if (set.contains(strOptString2)) {
                                strOptString = jSONObject3.optString("desc");
                                if (strOptString4.contains("GAME")) {
                                    z = true;
                                } else {
                                    if ((strOptString2 + strOptString).contains("玩游戏得")) {
                                        z = true;
                                    } else {
                                        if ((strOptString2 + strOptString).contains("去玩")) {
                                            z = true;
                                        } else {
                                            z = false;
                                        }
                                    }
                                }
                                jSONArray = jSONArray2;
                                if (!AntFarm.TaskStatus.TODO.name().equals(strOptString6) && z) {
                                    MiniGameTaskListMap.add(strOptString2, strOptString, "AntFarmChickenChefTaskList");
                                    if (BaseModel.isMiniGameTaskDisallowed(strOptString2, strOptString, "AntFarmChickenChefTaskList")) {
                                        Log.i("游戏任务🎮跳过[" + MiniGameTaskListMap.name(strOptString2, strOptString) + "]场景[" + MessageUtil.getTaskListName("AntFarmChickenChefTaskList") + "]#已加入不允许执行列表");
                                    } else {
                                        int iRightsTimesToDo2 = TaskAlternative.rightsTimesToDo(jSONObject3.optInt("rightsTimes"), jSONObject3.optInt("rightsTimesLimit"));
                                        for (int i4 = 0; i4 < iRightsTimesToDo2 && TaskAlternative.hasExecuteQuota("AntFarmChickenChefTaskList", strOptString2, strOptString); i4++) {
                                            JSONObject jSONObject4 = new JSONObject(doFarmTaskPseudo(strOptString4, AntFarmRpcCall.AI_KITCHEN_TASK_SCENE));
                                            MessageUtil.checkResultCodeAndMarkTaskBlackList("AntFarmChickenChefTaskList", strOptString2, jSONObject4);
                                            if (MessageUtil.isSecurityVerify(jSONObject4)) {
                                                break;
                                            }
                                            TaskAlternative.recordExecuteQuota("AntFarmChickenChefTaskList", strOptString2, strOptString);
                                            if (!MessageUtil.checkSuccess(TAG, jSONObject4).booleanValue()) {
                                                break;
                                            }
                                            Log.farm("小鸡大厨🧾申报[" + strOptString2 + "]");
                                            TimeUtil.sleep(1000L);
                                            chickenChefTaskAward(jSONObject3, strOptString2, strOptString5);
                                        }
                                    }
                                } else {
                                    TaskAlternative.handleGameTask(new TaskAlternative.GameTask("AntFarmChickenChefTaskList", strOptString2, strOptString, jSONObject3.optString("targetUrl"), strOptString6).bizKey(strOptString4).rights(jSONObject3.optInt("rightsTimes", 0), jSONObject3.optInt("rightsTimesLimit", 0)).taskRemain(Math.max(0, jSONObject3.optInt("taskRequire", 0) - jSONObject3.optInt("taskProgress", 0))).taskPlayType(jSONObject3.optString("taskPlayType", "OTHER")).taskMode(jSONObject3.optString("taskMode")).taskSceneCode(AntFarmRpcCall.AI_KITCHEN_TASK_SCENE).scene("ANTFARM", "H5").version(AntFarmRpcCall.VERSION));
                                }
                            } else {
                                jSONArray = jSONArray2;
                                if (AntFarm.TaskStatus.TODO.name().equals(strOptString6)) {
                                    if ("给好友送食材".equals(strOptString2)) {
                                        chickenChefShareIngredient(jSONObject3, selectModelField);
                                    } else {
                                        iOptInt = jSONObject3.optInt("rightsTimesLimit");
                                        iOptInt2 = jSONObject3.optInt("rightsTimes");
                                        iRightsTimesToDo = TaskAlternative.rightsTimesToDo(iOptInt2, iOptInt);
                                        for (i = 0; i < iRightsTimesToDo; i++) {
                                            StringBuilder sb = new StringBuilder();
                                            sb.append(str);
                                            str3 = str2;
                                            sb.append(System.currentTimeMillis());
                                            jSONObject = new JSONObject(AntFarmRpcCall.finishTaskantfarm(strOptString4, sb.toString(), strOptString5, str));
                                            MessageUtil.checkResultCodeAndMarkTaskBlackList("AntFarmChickenChefTaskList", strOptString2, jSONObject);
                                            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                                                break;
                                            }
                                            StringBuilder sb2 = new StringBuilder();
                                            sb2.append("小鸡大厨🧾完成[");
                                            sb2.append(strOptString2);
                                            str2 = str3;
                                            sb2.append(str2);
                                            sb2.append(TaskAlternative.rightsProgressText(iOptInt2, iOptInt, i));
                                            Log.farm(sb2.toString());
                                            TimeUtil.sleep(1000L);
                                            chickenChefTaskAward(jSONObject3, strOptString2, strOptString5);
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        str2 = "]";
                        if (set.contains(strOptString2)) {
                            strOptString = jSONObject3.optString("desc");
                            if (strOptString4.contains("GAME")) {
                                if ((strOptString2 + strOptString).contains("玩游戏得")) {
                                    if ((strOptString2 + strOptString).contains("去玩")) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                } else {
                                    z = true;
                                }
                            } else {
                                z = true;
                            }
                            jSONArray = jSONArray2;
                            if (!AntFarm.TaskStatus.TODO.name().equals(strOptString6)) {
                                TaskAlternative.handleGameTask(new TaskAlternative.GameTask("AntFarmChickenChefTaskList", strOptString2, strOptString, jSONObject3.optString("targetUrl"), strOptString6).bizKey(strOptString4).rights(jSONObject3.optInt("rightsTimes", 0), jSONObject3.optInt("rightsTimesLimit", 0)).taskRemain(Math.max(0, jSONObject3.optInt("taskRequire", 0) - jSONObject3.optInt("taskProgress", 0))).taskPlayType(jSONObject3.optString("taskPlayType", "OTHER")).taskMode(jSONObject3.optString("taskMode")).taskSceneCode(AntFarmRpcCall.AI_KITCHEN_TASK_SCENE).scene("ANTFARM", "H5").version(AntFarmRpcCall.VERSION));
                            } else {
                                TaskAlternative.handleGameTask(new TaskAlternative.GameTask("AntFarmChickenChefTaskList", strOptString2, strOptString, jSONObject3.optString("targetUrl"), strOptString6).bizKey(strOptString4).rights(jSONObject3.optInt("rightsTimes", 0), jSONObject3.optInt("rightsTimesLimit", 0)).taskRemain(Math.max(0, jSONObject3.optInt("taskRequire", 0) - jSONObject3.optInt("taskProgress", 0))).taskPlayType(jSONObject3.optString("taskPlayType", "OTHER")).taskMode(jSONObject3.optString("taskMode")).taskSceneCode(AntFarmRpcCall.AI_KITCHEN_TASK_SCENE).scene("ANTFARM", "H5").version(AntFarmRpcCall.VERSION));
                            }
                        } else {
                            jSONArray = jSONArray2;
                            if (AntFarm.TaskStatus.TODO.name().equals(strOptString6)) {
                                if ("给好友送食材".equals(strOptString2)) {
                                    chickenChefShareIngredient(jSONObject3, selectModelField);
                                } else {
                                    iOptInt = jSONObject3.optInt("rightsTimesLimit");
                                    iOptInt2 = jSONObject3.optInt("rightsTimes");
                                    iRightsTimesToDo = TaskAlternative.rightsTimesToDo(iOptInt2, iOptInt);
                                    while (i < iRightsTimesToDo) {
                                        StringBuilder sb3 = new StringBuilder();
                                        sb3.append(str);
                                        str3 = str2;
                                        sb3.append(System.currentTimeMillis());
                                        jSONObject = new JSONObject(AntFarmRpcCall.finishTaskantfarm(strOptString4, sb3.toString(), strOptString5, str));
                                        MessageUtil.checkResultCodeAndMarkTaskBlackList("AntFarmChickenChefTaskList", strOptString2, jSONObject);
                                        if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                                            break;
                                            break;
                                        }
                                        StringBuilder sb4 = new StringBuilder();
                                        sb4.append("小鸡大厨🧾完成[");
                                        sb4.append(strOptString2);
                                        str2 = str3;
                                        sb4.append(str2);
                                        sb4.append(TaskAlternative.rightsProgressText(iOptInt2, iOptInt, i));
                                        Log.farm(sb4.toString());
                                        TimeUtil.sleep(1000L);
                                        chickenChefTaskAward(jSONObject3, strOptString2, strOptString5);
                                    }
                                }
                            }
                        }
                    }
                    i3++;
                    jSONArray2 = jSONArray;
                    i2 = 0;
                }
            }
        } catch (Throwable th) {
            String str4 = TAG;
            Log.i(str4, "chickenChefTask err:");
            Log.printStackTrace(str4, th);
        }
    }

    private static void chickenChefTaskAward(JSONObject jSONObject, String str, String str2) {
        try {
            if (MessageUtil.checkResultCode(TAG, new JSONObject(AntFarmRpcCall.receiveTaskAwardantfarm(jSONObject.optInt("canReceiveAwardCount", jSONObject.optInt("awardCount")), AntFarmRpcCall.AI_KITCHEN_TASK_SCENE, str2))).booleanValue()) {
                Log.farm("小鸡大厨🎖️领取[" + str + "]奖励");
            }
            TimeUtil.sleep(1000L);
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "chickenChefTaskAward err:");
            Log.printStackTrace(str3, th);
        }
    }

    private static void chickenChefShareIngredient(JSONObject jSONObject, SelectModelField selectModelField) {
        try {
            int iOptInt = jSONObject.optInt("rightsTimesLimit") - jSONObject.optInt("rightsTimes");
            if (iOptInt <= 0) {
                return;
            }
            Set<String> value = selectModelField != null ? selectModelField.getValue() : null;
            if (value != null && !value.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                for (String str : value) {
                    if (!str.equals(UserIdMap.getCurrentUid())) {
                        arrayList.add(str);
                    }
                }
                if (arrayList.isEmpty()) {
                    Log.record("小鸡大厨👨🏻\u200d🍳未配置可赠送好友列表，跳过给好友送食材任务");
                    return;
                }
                JSONObject jSONObject2 = new JSONObject(AntFarmRpcCall.enterAiKitchen());
                if (MessageUtil.checkMemo(TAG, jSONObject2).booleanValue()) {
                    String strOptString = jSONObject2.optString("seasonId", "AIKitchenSeasonOne");
                    JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("ingredientList");
                    ArrayList arrayList2 = new ArrayList();
                    if (jSONArrayOptJSONArray != null) {
                        for (int i = 0; i < jSONArrayOptJSONArray.length() && arrayList2.size() < iOptInt; i++) {
                            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                            if (jSONObjectOptJSONObject != null) {
                                int iOptInt2 = jSONObjectOptJSONObject.optInt("count");
                                for (int i2 = 0; i2 < iOptInt2 && arrayList2.size() < iOptInt; i2++) {
                                    arrayList2.add(jSONObjectOptJSONObject);
                                }
                            }
                        }
                    }
                    if (arrayList2.isEmpty()) {
                        Log.record("小鸡大厨👨🏻\u200d🍳食材不足，跳过给好友送食材任务");
                        return;
                    }
                    for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                        String str2 = (String) arrayList.get(i3 % arrayList.size());
                        JSONObject jSONObject3 = (JSONObject) arrayList2.get(i3);
                        if (!MessageUtil.checkMemo(TAG, new JSONObject(AntFarmRpcCall.shareAiKitchenIngredient(jSONObject3.optString("ingredientId"), str2, strOptString))).booleanValue()) {
                            return;
                        }
                        Log.farm("小鸡大厨👨🏻\u200d🍳赠送[" + UserIdMap.getMaskName(str2) + "]食材[" + jSONObject3.optString("ingredientName") + "]");
                        TimeUtil.sleep(1000L);
                    }
                    return;
                }
                return;
            }
            Log.record("小鸡大厨👨🏻\u200d🍳未配置可赠送好友列表，跳过给好友送食材任务");
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "chickenChefShareIngredient err:");
            Log.printStackTrace(str3, th);
        }
    }

    private static String doFarmTaskPseudo(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antfarm.doFarmTask", "[{\"bizKey\":\"" + str + "\",\"requestType\":\"RPC\",\"sceneCode\":\"ANTFARM\",\"source\":\"H5\",\"taskSceneCode\":\"" + str2 + "\",\"version\":\"1.8.2302070202.46\"}]");
    }

    public static void initChickenChefTaskListMap(boolean z, boolean z2, String str, String str2) {
        SelectModelField selectModelField;
        if (z2) {
            try {
                AntFarmChickenChefTaskListMap.load();
                JSONObject jSONObject = new JSONObject(AntFarmRpcCall.listAiKitchenTask());
                if (MessageUtil.checkMemo(TAG, jSONObject).booleanValue()) {
                    JSONArray jSONArray = jSONObject.getJSONArray("farmTaskList");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        AntFarmChickenChefTaskListMap.add(jSONObject2.getString("title"), TaskIconUtil.extractIcon(jSONObject2));
                    }
                }
                AntFarmChickenChefTaskListMap.save();
                Log.record("同步任务🉑小鸡大厨任务列表");
                if (z) {
                    HashSet<String> hashSet = new HashSet();
                    ModelFields modelFields = ConfigV2.INSTANCE.getModelFieldsMap().get(str);
                    if (modelFields == null || (selectModelField = (SelectModelField) modelFields.get(str2)) == null) {
                        return;
                    }
                    Set<String> value = selectModelField.getValue();
                    if (value != null) {
                        for (String str3 : hashSet) {
                            if (!value.contains(str3)) {
                                selectModelField.add(str3, 0);
                            }
                        }
                    }
                    if (ConfigV2.save(UserIdMap.getCurrentUid(), false).booleanValue()) {
                        Log.record("黑白名单🈲小鸡大厨任务自动设置: " + selectModelField.getValue());
                        return;
                    }
                    Log.record("小鸡大厨任务黑白名单设置失败");
                }
            } catch (Throwable th) {
                String str4 = TAG;
                Log.i(str4, "initChickenChefTaskListMap err:");
                Log.printStackTrace(str4, th);
            }
        }
    }
}
