package io.github.lazyimmortal.sesame.model.task.protectEcology;

import fi.iki.elonen.NanoHTTPD;
import io.github.lazyimmortal.sesame.data.ModelFields;
import io.github.lazyimmortal.sesame.data.ModelGroup;
import io.github.lazyimmortal.sesame.data.modelFieldExt.BooleanModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.ChoiceModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.IntegerModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.SelectAndCountModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField;
import io.github.lazyimmortal.sesame.data.task.ModelTask;
import io.github.lazyimmortal.sesame.entity.AlipayAnimal;
import io.github.lazyimmortal.sesame.entity.AlipayBeach;
import io.github.lazyimmortal.sesame.entity.AlipayMarathon;
import io.github.lazyimmortal.sesame.entity.AlipayNewAncientTree;
import io.github.lazyimmortal.sesame.entity.AlipayReserve;
import io.github.lazyimmortal.sesame.entity.AlipayTree;
import io.github.lazyimmortal.sesame.entity.CooperateUser;
import io.github.lazyimmortal.sesame.hook.Toast;
import io.github.lazyimmortal.sesame.model.base.TaskCommon;
import io.github.lazyimmortal.sesame.model.task.antForest.AntForestRpcCall;
import io.github.lazyimmortal.sesame.util.IconRegistry;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.MessageUtil;
import io.github.lazyimmortal.sesame.util.Status;
import io.github.lazyimmortal.sesame.util.StringUtil;
import io.github.lazyimmortal.sesame.util.TaskIconUtil;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import io.github.lazyimmortal.sesame.util.idMap.AnimalIdMap;
import io.github.lazyimmortal.sesame.util.idMap.BeachIdMap;
import io.github.lazyimmortal.sesame.util.idMap.CooperationIdMap;
import io.github.lazyimmortal.sesame.util.idMap.MarathonIdMap;
import io.github.lazyimmortal.sesame.util.idMap.NewAncientTreeIdMap;
import io.github.lazyimmortal.sesame.util.idMap.ReserveIdMap;
import io.github.lazyimmortal.sesame.util.idMap.TreeIdMap;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ProtectEcology extends ModelTask {
    private static final String TAG = "ProtectEcology";
    private static BooleanModelField cooperateWater = null;
    private static SelectAndCountModelField cooperateWaterList = null;
    private static SelectAndCountModelField cooperateWaterTotalLimitList = null;
    private static String pkSeasonActivityId = "pkSeason4";
    private static int pkUserRankLevel;
    private static BooleanModelField protectAncientMinNum;
    private static BooleanModelField protectAnimal;
    private static SelectModelField protectAnimalList;
    private static BooleanModelField protectBeach;
    private static SelectAndCountModelField protectBeachList;
    private static BooleanModelField protectBeachMinNum;
    private static SelectAndCountModelField protectMarathonList;
    private static ChoiceModelField protectMarathonType;
    private static SelectAndCountModelField protectNewAncientTreeList;
    private static ChoiceModelField protectNewAncientTreeType;
    private static BooleanModelField protectReserve;
    private static SelectAndCountModelField protectReserveList;
    private static BooleanModelField protectReserveMinNum;
    private static BooleanModelField protectTree;
    private static SelectAndCountModelField protectTreeList;
    private IntegerModelField protectBeachNum;
    private IntegerModelField protectReserveNum;

    public interface ProtectType {
        public static final int COLLECT = 1;
        public static final int NONE = 0;
        public static final int SELECT = 2;
        public static final String[] nickNames = {"不保护", "集邮模式", "列表模式"};
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public String getName() {
        return "保护";
    }

    @Override // io.github.lazyimmortal.sesame.data.Model
    public ModelGroup getGroup() {
        return ModelGroup.FOREST;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public ModelFields getFields() {
        ModelFields modelFields = new ModelFields();
        BooleanModelField booleanModelField = new BooleanModelField("cooperateWater", "合种 | 浇水", false);
        cooperateWater = booleanModelField;
        modelFields.addField(booleanModelField);
        SelectAndCountModelField selectAndCountModelField = new SelectAndCountModelField("cooperateWaterList", "合种 | 日浇水量列表", new LinkedHashMap(), new SelectAndCountModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.protectEcology.ProtectEcology$$ExternalSyntheticLambda0
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectAndCountModelField.SelectListFunc
            public final List getList() {
                return CooperateUser.getList();
            }
        }, "请填写浇水克数(每日)");
        cooperateWaterList = selectAndCountModelField;
        modelFields.addField(selectAndCountModelField);
        SelectAndCountModelField selectAndCountModelField2 = new SelectAndCountModelField("cooperateWaterTotalLimitList", "合种 | 总浇水量列表", new LinkedHashMap(), new SelectAndCountModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.protectEcology.ProtectEcology$$ExternalSyntheticLambda0
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectAndCountModelField.SelectListFunc
            public final List getList() {
                return CooperateUser.getList();
            }
        }, "请填写浇水克数(上限总量)");
        cooperateWaterTotalLimitList = selectAndCountModelField2;
        modelFields.addField(selectAndCountModelField2);
        BooleanModelField booleanModelField2 = new BooleanModelField("protectAncientMinNum", "PK赛 | 保护古树", false);
        protectAncientMinNum = booleanModelField2;
        modelFields.addField(booleanModelField2);
        ChoiceModelField choiceModelField = new ChoiceModelField("protectMarathonType", "碳中和 | 马拉松", 0, ProtectType.nickNames);
        protectMarathonType = choiceModelField;
        modelFields.addField(choiceModelField);
        SelectAndCountModelField selectAndCountModelField3 = new SelectAndCountModelField("protectMarathonList", "碳中和 | 马拉松列表", new LinkedHashMap(), new SelectAndCountModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.protectEcology.ProtectEcology$$ExternalSyntheticLambda1
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectAndCountModelField.SelectListFunc
            public final List getList() {
                return AlipayMarathon.getList();
            }
        }, "请填写助力能量克数(上限总量)");
        protectMarathonList = selectAndCountModelField3;
        modelFields.addField(selectAndCountModelField3);
        ChoiceModelField choiceModelField2 = new ChoiceModelField("protectNewAncientTreeType", "碳中和 | 古树医生", 0, ProtectType.nickNames);
        protectNewAncientTreeType = choiceModelField2;
        modelFields.addField(choiceModelField2);
        SelectAndCountModelField selectAndCountModelField4 = new SelectAndCountModelField("protectNewAncientTreeList", "碳中和 | 古树医生列表", new LinkedHashMap(), new SelectAndCountModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.protectEcology.ProtectEcology$$ExternalSyntheticLambda2
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectAndCountModelField.SelectListFunc
            public final List getList() {
                return AlipayNewAncientTree.getList();
            }
        }, "请填写助力能量克数(上限总量)");
        protectNewAncientTreeList = selectAndCountModelField4;
        modelFields.addField(selectAndCountModelField4);
        BooleanModelField booleanModelField3 = new BooleanModelField("protectTree", "保护森林 | 植树", false);
        protectTree = booleanModelField3;
        modelFields.addField(booleanModelField3);
        SelectAndCountModelField selectAndCountModelField5 = new SelectAndCountModelField("protectTreeList", "保护森林 | 植树列表", new LinkedHashMap(), new SelectAndCountModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.protectEcology.ProtectEcology$$ExternalSyntheticLambda3
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectAndCountModelField.SelectListFunc
            public final List getList() {
                return AlipayTree.getList();
            }
        }, "请填写保护次数(上限总量)");
        protectTreeList = selectAndCountModelField5;
        modelFields.addField(selectAndCountModelField5);
        BooleanModelField booleanModelField4 = new BooleanModelField("protectReserve", "保护动物 | 保护地", false);
        protectReserve = booleanModelField4;
        modelFields.addField(booleanModelField4);
        SelectAndCountModelField selectAndCountModelField6 = new SelectAndCountModelField("reserveList", "保护动物 | 保护地列表", new LinkedHashMap(), new SelectAndCountModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.protectEcology.ProtectEcology$$ExternalSyntheticLambda4
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectAndCountModelField.SelectListFunc
            public final List getList() {
                return AlipayReserve.getList();
            }
        }, "请填写保护次数(每日)");
        protectReserveList = selectAndCountModelField6;
        modelFields.addField(selectAndCountModelField6);
        BooleanModelField booleanModelField5 = new BooleanModelField("protectReserveMinNum", "保护地 | 最少保护", false);
        protectReserveMinNum = booleanModelField5;
        modelFields.addField(booleanModelField5);
        IntegerModelField integerModelField = new IntegerModelField("protectReserveNum", "保护地 |最少保护下限", 1);
        this.protectReserveNum = integerModelField;
        modelFields.addField(integerModelField);
        BooleanModelField booleanModelField6 = new BooleanModelField("protectAnimal", "保护动物 | 护林员", false);
        protectAnimal = booleanModelField6;
        modelFields.addField(booleanModelField6);
        SelectModelField selectModelField = new SelectModelField("protectAnimalList", "保护动物 | 护林员列表", new HashSet(), new SelectModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.protectEcology.ProtectEcology$$ExternalSyntheticLambda5
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField.SelectListFunc
            public final List getList() {
                return AlipayAnimal.getList();
            }
        }, "请选择需要点亮的护林员");
        protectAnimalList = selectModelField;
        modelFields.addField(selectModelField);
        BooleanModelField booleanModelField7 = new BooleanModelField("protectBeachMinNum", "保护海洋 | 海滩最少保护", false);
        protectBeachMinNum = booleanModelField7;
        modelFields.addField(booleanModelField7);
        IntegerModelField integerModelField2 = new IntegerModelField("protectBeachNum", "保护海洋 |海滩保护下限", 1);
        this.protectBeachNum = integerModelField2;
        modelFields.addField(integerModelField2);
        BooleanModelField booleanModelField8 = new BooleanModelField("protectBeach", "保护海洋 | 海滩", false);
        protectBeach = booleanModelField8;
        modelFields.addField(booleanModelField8);
        SelectAndCountModelField selectAndCountModelField7 = new SelectAndCountModelField("protectOceanList", "保护海洋 | 海滩列表", new LinkedHashMap(), new SelectAndCountModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.protectEcology.ProtectEcology$$ExternalSyntheticLambda6
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectAndCountModelField.SelectListFunc
            public final List getList() {
                return AlipayBeach.getList();
            }
        }, "请填写保护次数(上限总量)");
        protectBeachList = selectAndCountModelField7;
        modelFields.addField(selectAndCountModelField7);
        return modelFields;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public Boolean check() {
        if (TaskCommon.IS_ENERGY_TIME.booleanValue()) {
            Log.forest("任务暂停⏸️生态保护:当前为仅收能量时间");
            return false;
        }
        return true;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public void run() {
        if (cooperateWater.getValue().booleanValue()) {
            cooperateWater();
        }
        if (protectAncientMinNum.getValue().booleanValue()) {
            protectAncientMinNum();
        }
        if (protectMarathonType.getValue().intValue() != 0 || protectNewAncientTreeType.getValue().intValue() != 0) {
            protectCarbon();
        }
        if (protectTree.getValue().booleanValue()) {
            protectTree();
        }
        if (protectReserve.getValue().booleanValue()) {
            protectReserve();
        }
        if (protectReserveMinNum.getValue().booleanValue()) {
            protectReserveMinNum(this.protectReserveNum.getValue().intValue());
        }
        if (protectAnimal.getValue().booleanValue()) {
            protectAnimal();
        }
        if (protectBeachMinNum.getValue().booleanValue()) {
            protectBeachMinNum(this.protectBeachNum.getValue().intValue());
        }
        if (protectBeach.getValue().booleanValue()) {
            protectBeach();
        }
    }

    public static void initForest() {
        try {
            JSONArray jSONArrayQueryTreeItemsForExchange = queryTreeItemsForExchange("AVAILABLE", "project");
            if (jSONArrayQueryTreeItemsForExchange == null) {
                return;
            }
            ReserveIdMap.load();
            for (int i = 0; i < jSONArrayQueryTreeItemsForExchange.length(); i++) {
                JSONObject jSONObject = jSONArrayQueryTreeItemsForExchange.getJSONObject(i);
                String string = jSONObject.getString("itemId");
                String string2 = jSONObject.getString("itemName");
                if ("TREE".equals(jSONObject.getString("projectType"))) {
                    String string3 = jSONObject.getString("organization");
                    TreeIdMap.add(string, (string2 + "[" + jSONObject.getString("region") + "|" + string3 + "]") + "(" + jSONObject.getInt("energy") + "g)");
                    IconRegistry.put(IconRegistry.SCOPE_TREE, string, TaskIconUtil.extractIcon(jSONObject));
                } else if ("RESERVE".equals(jSONObject.getString("projectType"))) {
                    ReserveIdMap.add(string, string2 + "(" + jSONObject.getInt("energy") + "g)");
                    IconRegistry.put(IconRegistry.SCOPE_RESERVE, string, TaskIconUtil.extractIcon(jSONObject));
                } else if ("ANIMAL".equals(jSONObject.getString("projectType"))) {
                    AnimalIdMap.add(string, string2 + "(" + jSONObject.getInt("energy") + "g)");
                    IconRegistry.put(IconRegistry.SCOPE_ANIMAL, string, TaskIconUtil.extractIcon(jSONObject));
                }
            }
            TreeIdMap.save();
            ReserveIdMap.save();
            AnimalIdMap.save();
            IconRegistry.saveAndPrefetch();
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "initForest err:");
            Log.printStackTrace(str, th);
        }
    }

    public static void initOcean() {
        try {
            JSONArray jSONArrayQueryCultivationList = queryCultivationList();
            if (jSONArrayQueryCultivationList == null) {
                return;
            }
            BeachIdMap.load();
            for (int i = 0; i < jSONArrayQueryCultivationList.length(); i++) {
                JSONObject jSONObject = jSONArrayQueryCultivationList.getJSONObject(i);
                String strOptString = jSONObject.optString("templateCode");
                if (!strOptString.isEmpty()) {
                    IconRegistry.put(IconRegistry.SCOPE_BEACH, strOptString, TaskIconUtil.extractIcon(jSONObject));
                }
                if ("AVAILABLE".equals(jSONObject.getString("applyAction")) && ("BEACH".equals(jSONObject.optString("templateSubType")) || "COOPERATE_PLANT".equals(jSONObject.getString("templateType")) || "PROTECT".equals(jSONObject.getString("templateType")))) {
                    BeachIdMap.add(strOptString, jSONObject.getString("cultivationName") + "(" + jSONObject.getInt("energy") + "g)");
                }
            }
            BeachIdMap.save();
            IconRegistry.saveAndPrefetch();
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "initOcean err:");
            Log.printStackTrace(str, th);
        }
    }

    private static void cooperateWater() {
        try {
            JSONObject jSONObject = new JSONObject(CooperateRpcCall.queryUserCooperatePlantList());
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                String currentUid = UserIdMap.getCurrentUid();
                JSONArray jSONArray = jSONObject.getJSONArray("cooperatePlants");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    String string = jSONObject2.getString("cooperationId");
                    JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("cooperateTemplate");
                    if (jSONObjectOptJSONObject != null) {
                        IconRegistry.put(IconRegistry.SCOPE_COOPERATE, string, jSONObjectOptJSONObject.optString("iconUrl"));
                    }
                    queryCooperatePlant(currentUid, string);
                }
                IconRegistry.saveAndPrefetch();
                CooperationIdMap.save(currentUid);
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "cooperateWater err:");
            Log.printStackTrace(str, th);
        }
    }

    private static void queryCooperatePlant(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(CooperateRpcCall.queryCooperatePlant(str2));
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                int i = jSONObject.getInt("userCurrentEnergy");
                JSONObject jSONObject2 = jSONObject.getJSONObject("cooperatePlant");
                String string = jSONObject2.getString("name");
                CooperationIdMap.add(str2, string);
                int energyCount = getEnergyCount(str, str2, jSONObject2.getInt("waterDayLimit"));
                if (energyCount <= 0 || energyCount > i || !cooperateWater(str, str2, energyCount, string).booleanValue()) {
                    return;
                }
                TimeUtil.sleep(300L);
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "queryCooperatePlant err:");
            Log.printStackTrace(str3, th);
        }
    }

    private static Boolean cooperateWater(String str, String str2, int i, String str3) {
        try {
            JSONObject jSONObject = new JSONObject(CooperateRpcCall.cooperateWater(str, str2, i));
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                Log.forest("合种浇水🚿[" + str3 + "]#" + jSONObject.getString("barrageText"));
                Toast.show("合种浇水🚿[" + str3 + "]#" + jSONObject.getString("barrageText"));
                return true;
            }
        } catch (Throwable th) {
            String str4 = TAG;
            Log.i(str4, "cooperateWater err:");
            Log.printStackTrace(str4, th);
        }
        return false;
    }

    private static int getEnergyCount(String str, String str2, int i) {
        Integer num = cooperateWaterList.getValue().get(str2);
        if (num == null) {
            return 0;
        }
        int energySummation = getEnergySummation("D", str2, str);
        int energySummation2 = getEnergySummation("A", str2, str);
        int iMin = Math.min(num.intValue() - energySummation, i);
        Integer num2 = cooperateWaterTotalLimitList.getValue().get(str2);
        if (num2 != null) {
            iMin = Math.min(num.intValue(), num2.intValue() - energySummation2);
        }
        if (iMin < 10) {
            return 0;
        }
        return iMin;
    }

    private static int getEnergySummation(String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject(CooperateRpcCall.queryCooperateRank(str, str2));
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArray = jSONObject.getJSONArray("cooperateRankInfos");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    if (Objects.equals(str3, jSONObject2.getString("userId"))) {
                        return jSONObject2.optInt("energySummation");
                    }
                }
            }
        } catch (Throwable th) {
            String str4 = TAG;
            Log.i(str4, "getEnergySummation err:");
            Log.printStackTrace(str4, th);
        }
        return 0;
    }

    private static void protectTree() {
        for (Map.Entry<String, Integer> entry : protectTreeList.getValue().entrySet()) {
            Integer value = entry.getValue();
            if (value != null && value.intValue() >= 0) {
                int i = Integer.parseInt(entry.getKey());
                for (ExchangeableTree exchangeableTreeQueryTreeForExchange = queryTreeForExchange(i); exchangeableTreeQueryTreeForExchange.canExchange && exchangeableTreeQueryTreeForExchange.certCount < value.intValue(); exchangeableTreeQueryTreeForExchange = queryTreeForExchange(i)) {
                    String str = exchangeableTreeQueryTreeForExchange.projectName;
                    Log.forest("生态保护🏕️申请[" + str + "]#第" + (exchangeableTreeQueryTreeForExchange.certCount + 1) + "次");
                    if (!exchangeTree(i, str).booleanValue()) {
                        break;
                    }
                    TimeUtil.sleep(300L);
                }
            }
        }
    }

    private static void protectReserve() {
        for (Map.Entry<String, Integer> entry : protectReserveList.getValue().entrySet()) {
            Integer value = entry.getValue();
            if (value != null && value.intValue() >= 0) {
                int i = Integer.parseInt(entry.getKey());
                while (Status.canExchangeReserveToday(i, value.intValue()).booleanValue()) {
                    ExchangeableTree exchangeableTreeQueryTreeForExchange = queryTreeForExchange(i);
                    if (!exchangeableTreeQueryTreeForExchange.canExchange) {
                        break;
                    }
                    String str = exchangeableTreeQueryTreeForExchange.projectName;
                    Log.forest("生态保护🏕️申请[" + str + "]#第" + (Status.getExchangeReserveCountToday(i) + 1) + "次");
                    if (!exchangeTree(i, str).booleanValue()) {
                        break;
                    }
                    Status.exchangeReserveToday(i);
                    TimeUtil.sleep(300L);
                }
            }
        }
    }

    private static void protectAnimal() {
        Iterator<String> it = protectAnimalList.getValue().iterator();
        while (it.hasNext()) {
            int i = Integer.parseInt(it.next());
            ExchangeableTree exchangeableTreeQueryTreeForExchange = queryTreeForExchange(i);
            while (exchangeableTreeQueryTreeForExchange.canExchange && exchangeTree(i, exchangeableTreeQueryTreeForExchange.projectName).booleanValue()) {
                exchangeableTreeQueryTreeForExchange = queryTreeForExchange(i);
                TimeUtil.sleep(300L);
            }
        }
    }

    public static JSONArray queryTreeItemsForExchange(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(ProtectTreeRpcCall.queryTreeItemsForExchange(str, str2));
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                return jSONObject.getJSONArray("treeItems");
            }
            return null;
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "queryTreeItemsForExchange err:");
            Log.printStackTrace(str3, th);
            return null;
        }
    }

    private static ExchangeableTree queryTreeForExchange(int i) {
        ExchangeableTree exchangeableTree = new ExchangeableTree(i);
        try {
            JSONObject jSONObject = new JSONObject(ProtectTreeRpcCall.queryTreeForExchange(Integer.valueOf(i)));
            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                return exchangeableTree;
            }
            String string = jSONObject.getString("applyAction");
            int i2 = jSONObject.getInt("currentEnergy");
            JSONArray jSONArray = jSONObject.getJSONArray("subTreeVOs");
            JSONObject jSONObject2 = jSONObject.getJSONObject("exchangeableTree");
            exchangeableTree.certCount = jSONObject2.getInt("certCount");
            exchangeableTree.projectName = jSONObject2.getString("projectName");
            if (!"AVAILABLE".equals(string)) {
                Log.record("生态保护🏕️保护[" + exchangeableTree.projectName + "]停止:数量不足");
                return exchangeableTree;
            }
            if (i2 < jSONObject2.getInt("energy")) {
                Log.record("生态保护🏕️保护[" + exchangeableTree.projectName + "]停止:能量不足");
                return exchangeableTree;
            }
            if ("ANIMAL".equals(jSONObject2.getString("type"))) {
                if (exchangeableTree.certCount == 0) {
                    for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                        if (jSONArray.getJSONObject(i3).getInt("certCountForAlias") == 0) {
                            exchangeableTree.canExchange = true;
                            break;
                        }
                    }
                    if (!exchangeableTree.canExchange) {
                        applyGoldAnimalCert(i);
                    }
                }
            } else {
                exchangeableTree.canExchange = true;
            }
            return exchangeableTree;
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryTreeForExchange err:");
            Log.printStackTrace(str, th);
        }
    }

    private static Boolean exchangeTree(int i, String str) {
        try {
            JSONObject jSONObject = new JSONObject(ProtectTreeRpcCall.exchangeTree(i));
            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                return false;
            }
            int iOptInt = jSONObject.optInt("vitalityAmount", 0);
            String str2 = "";
            if (iOptInt > 0) {
                str2 = "#获得[" + iOptInt + "活力值]";
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("userCertificate");
            if ("ANIMAL".equals(jSONObject2.getString("type"))) {
                str2 = "#获得[" + jSONObject2.getString("projectName") + "]";
            }
            Log.forest("生态保护🏕️保护[" + str + "]" + str2);
            return true;
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "exchangeTree err:");
            Log.printStackTrace(str3, th);
            return false;
        }
    }

    private static void applyGoldAnimalCert(int i) {
        try {
            JSONObject jSONObject = new JSONObject(ProtectTreeRpcCall.applyGoldAnimalCert(i));
            if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                Log.record("生态保护🏕️点亮[" + jSONObject.getJSONObject("goldAnimalCertVO").getString("name") + "]");
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "applyGoldAnimalCert err:");
            Log.printStackTrace(str, th);
        }
    }

    private static void protectCarbon() {
        try {
            JSONArray jSONArrayQueryTreeItemsForExchange = queryTreeItemsForExchange("AVAILABLE", "special");
            if (jSONArrayQueryTreeItemsForExchange == null) {
                return;
            }
            MarathonIdMap.load();
            NewAncientTreeIdMap.load();
            for (int i = 0; i < jSONArrayQueryTreeItemsForExchange.length(); i++) {
                JSONObject jSONObject = jSONArrayQueryTreeItemsForExchange.getJSONObject(i).getJSONObject("extendInfo");
                String strOptString = jSONObject.optString("activityName");
                if (IconRegistry.SCOPE_MARATHON.equals(jSONObject.optString("activityType"))) {
                    String subString = StringUtil.getSubString(jSONObject.getString("actionUrl"), "activityId%3D", "%26");
                    MarathonIdMap.add(subString, strOptString);
                    IconRegistry.put(IconRegistry.SCOPE_MARATHON, subString, TaskIconUtil.extractIcon(jSONObject));
                    if (protectMarathonType.getValue().intValue() != 0) {
                        marathonQueryActivity(subString);
                    }
                } else if (strOptString.contains("古树医生")) {
                    String subString2 = StringUtil.getSubString(jSONObject.getString("actionUrl"), "activityId%3D", "%26");
                    NewAncientTreeIdMap.add(subString2, strOptString);
                    IconRegistry.put(IconRegistry.SCOPE_ANCIENT_TREE, subString2, TaskIconUtil.extractIcon(jSONObject));
                    if (protectNewAncientTreeType.getValue().intValue() != 0) {
                        carbonQueryActivity(subString2);
                    }
                }
            }
            MarathonIdMap.save();
            NewAncientTreeIdMap.save();
            IconRegistry.saveAndPrefetch();
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "protectCarbon err:");
            Log.printStackTrace(str, th);
        }
    }

    private static void loadPkSeasonInfo() {
        pkSeasonActivityId = "pkSeason4";
        pkUserRankLevel = 0;
        try {
            JSONObject jSONObjectOptJSONObject = new JSONObject(AntForestRpcCall.queryHomePage()).optJSONObject("combineHandlerVOMap");
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject == null ? null : jSONObjectOptJSONObject.optJSONObject("energyChallengeRank");
            if (jSONObjectOptJSONObject2 == null) {
                return;
            }
            pkUserRankLevel = jSONObjectOptJSONObject2.optInt("level");
            JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject2.optJSONArray("rankHeadPortraitVOS");
            if (jSONArrayOptJSONArray == null) {
                return;
            }
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject3 = jSONArrayOptJSONArray.optJSONObject(i);
                JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject3 == null ? null : jSONObjectOptJSONObject3.optJSONObject("extInfo");
                JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject4 == null ? null : jSONObjectOptJSONObject4.optJSONArray("protectList");
                if (jSONArrayOptJSONArray2 != null) {
                    for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                        JSONObject jSONObjectOptJSONObject5 = jSONArrayOptJSONArray2.optJSONObject(i2);
                        if (jSONObjectOptJSONObject5 != null) {
                            Matcher matcher = Pattern.compile("pk(\\d+)Level\\d+").matcher(jSONObjectOptJSONObject5.optString("protectId"));
                            if (matcher.find()) {
                                pkSeasonActivityId = "pkSeason" + matcher.group(1);
                                return;
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            Log.printStackTrace(TAG, th);
        }
    }

    private static void protectAncientMinNum() {
        int iOptInt;
        JSONObject jSONObjectOptJSONObject;
        try {
            loadPkSeasonInfo();
            JSONObject jSONObject = new JSONObject(ProtectTreeRpcCall.pkQueryTreeMap(pkSeasonActivityId));
            if (!"SUCCESS".equals(jSONObject.optString("resultCode"))) {
                Log.record("古树保护🌳PK赛查询古树地图失败: " + jSONObject.optString("resultDesc"));
                return;
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("actionData");
            JSONObject jSONObjectOptJSONObject3 = null;
            JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject2 == null ? null : jSONObjectOptJSONObject2.optJSONObject("resultData");
            if (jSONObjectOptJSONObject4 != null) {
                jSONObjectOptJSONObject3 = jSONObjectOptJSONObject4.optJSONObject("protectProgress");
            }
            if (jSONObjectOptJSONObject3 == null) {
                Log.record("古树保护🌳PK赛古树地图无保护进度数据");
                return;
            }
            JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject3.optJSONArray("levelProtectList");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() != 0) {
                int iOptInt2 = jSONObjectOptJSONObject3.optInt("userRankLevel", 0);
                if (iOptInt2 <= 0) {
                    iOptInt2 = pkUserRankLevel;
                }
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject5 = jSONArrayOptJSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject5 != null && (iOptInt = jSONObjectOptJSONObject5.optInt("level")) <= iOptInt2 && jSONObjectOptJSONObject5.optInt("protectCount") <= 0) {
                        String str = pkSeasonActivityId.replace("pkSeason", "pk") + "Level" + iOptInt;
                        JSONObject jSONObject2 = new JSONObject(ProtectTreeRpcCall.pkSeason2Home(str));
                        String str2 = TAG;
                        if (MessageUtil.checkResultCode(str2, jSONObject2).booleanValue() && (jSONObjectOptJSONObject = jSONObject2.optJSONObject("resultData")) != null) {
                            JSONObject jSONObjectOptJSONObject6 = jSONObjectOptJSONObject.optJSONObject("donateConfigVO");
                            int iOptInt3 = NanoHTTPD.SOCKET_READ_TIMEOUT;
                            if (jSONObjectOptJSONObject6 != null) {
                                iOptInt3 = jSONObjectOptJSONObject6.optInt("donateNum", NanoHTTPD.SOCKET_READ_TIMEOUT);
                            }
                            long jOptLong = jSONObjectOptJSONObject.optLong("currentEnergy");
                            if (jOptLong < iOptInt3) {
                                Log.record("古树保护🌳PK赛能量不足[" + jOptLong + "/" + iOptInt3 + "]停止保护");
                                return;
                            }
                            JSONObject jSONObjectOptJSONObject7 = jSONObject2.optJSONObject("pageProperties");
                            String strOptString = jSONObjectOptJSONObject7 == null ? str : jSONObjectOptJSONObject7.optString("activityName", str);
                            String strPkSeason2Water = ProtectTreeRpcCall.pkSeason2Water(str, iOptInt3);
                            if (strPkSeason2Water != null) {
                                JSONObject jSONObject3 = new JSONObject(strPkSeason2Water);
                                if (MessageUtil.checkResultCode(str2, jSONObject3).booleanValue()) {
                                    Log.forest("古树保护🌳PK赛领取证书[LV" + iOptInt + "·" + strOptString + "]消耗能量" + iOptInt3 + "g");
                                    TimeUtil.sleep(500L);
                                } else {
                                    Log.record("古树保护🌳PK赛[LV" + iOptInt + "]浇水失败: " + jSONObject3.optString("resultDesc"));
                                }
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "protectAncientMinNum err:");
            Log.printStackTrace(str3, th);
        }
    }

    private static void marathonQueryActivity(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("donateQueryActionParam", "marathonWater");
            JSONObject jSONObject2 = new JSONObject(ProtectTreeRpcCall.doRubickActivity("marathonHome", str, jSONObject));
            if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                JSONObject jSONObject3 = jSONObject2.getJSONObject("resultData");
                int i = jSONObject3.getInt("currentEnergy");
                Integer num = protectMarathonList.getValue().get(str);
                if (!jSONObject3.optBoolean("certLockStatus", true)) {
                    int i2 = jSONObject3.getJSONObject("donateConfigVO").getInt("donateNum");
                    if (protectMarathonType.getValue().intValue() == 2 && (num == null || num.intValue() < i2)) {
                        return;
                    }
                    if (i >= i2 && carbonCharityActivity("marathonWater", str, i2).booleanValue()) {
                        i -= i2;
                    }
                }
                if (protectMarathonType.getValue().intValue() == 1) {
                    return;
                }
                int iIntValue = num == null ? 0 : num.intValue() - jSONObject3.getJSONObject("activityCertVO").getInt("energy");
                Integer numValueOf = Integer.valueOf(iIntValue);
                int i3 = jSONObject3.getJSONObject("donateConfigVO").getInt("secondDonateMinNum");
                numValueOf.getClass();
                if (iIntValue >= i3) {
                    numValueOf.getClass();
                    if (i >= iIntValue) {
                        numValueOf.getClass();
                        carbonCharityActivity("marathonWater", str, iIntValue);
                    }
                }
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "marathonQueryActivity err:");
            Log.printStackTrace(str2, th);
        }
    }

    private static void carbonQueryActivity(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("donateQueryActionParam", "carbonWater");
            JSONObject jSONObject2 = new JSONObject(ProtectTreeRpcCall.doRubickActivity("carbonHome", str, jSONObject));
            if (MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                JSONObject jSONObject3 = jSONObject2.getJSONObject("resultData");
                int i = jSONObject3.getInt("currentEnergy");
                Integer num = protectNewAncientTreeList.getValue().get(str);
                if (!jSONObject3.optBoolean("certLockStatus", true)) {
                    int i2 = jSONObject3.getJSONObject("donateConfigVO").getInt("donateNum");
                    if (protectNewAncientTreeType.getValue().intValue() == 2 && (num == null || num.intValue() < i2)) {
                        return;
                    }
                    if (i >= i2 && carbonCharityActivity("carbonWater", str, i2).booleanValue()) {
                        i -= i2;
                    }
                }
                if (protectNewAncientTreeType.getValue().intValue() == 1) {
                    return;
                }
                int iIntValue = num == null ? 0 : num.intValue() - jSONObject3.getJSONObject("activityCertVO").getInt("energy");
                Integer numValueOf = Integer.valueOf(iIntValue);
                int i3 = jSONObject3.getJSONObject("donateConfigVO").getInt("secondDonateMinNum");
                numValueOf.getClass();
                if (iIntValue >= i3) {
                    numValueOf.getClass();
                    if (i >= iIntValue) {
                        numValueOf.getClass();
                        carbonCharityActivity("carbonWater", str, iIntValue);
                    }
                }
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "carbonQueryActivity err:");
            Log.printStackTrace(str2, th);
        }
    }

    private static Boolean carbonCharityActivity(String str, String str2, int i) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("donateNum", i);
            jSONObject.put("incrNum", i);
            JSONObject jSONObject2 = new JSONObject(ProtectTreeRpcCall.doRubickActivity(str, str2, jSONObject));
            if (!MessageUtil.checkResultCode(TAG, jSONObject2).booleanValue()) {
                return false;
            }
            JSONObject jSONObject3 = jSONObject2.getJSONObject("resultData").getJSONObject("activityCertVO");
            Log.forest("生态保护🏕️助力[" + jSONObject3.getString("name") + "]#累计[" + jSONObject3.getInt("energy") + "g能量]");
            return true;
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "carbonCharityActivity err:");
            Log.printStackTrace(str3, th);
            return false;
        }
    }

    private static JSONArray queryCultivationList() {
        try {
            String strQueryCultivationList = ProtectOceanRpcCall.queryCultivationList();
            if (strQueryCultivationList != null && !strQueryCultivationList.isEmpty()) {
                JSONObject jSONObject = new JSONObject(strQueryCultivationList);
                if (MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                    return jSONObject.getJSONArray("cultivationItemVOList");
                }
                return null;
            }
            return null;
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "queryCultivationList err:");
            Log.printStackTrace(str, th);
        }
    }

    private static void protectReserveMinNum(int i) {
        if (i > 0) {
            try {
                JSONArray jSONArrayQueryTreeItemsForExchange = queryTreeItemsForExchange("AVAILABLE", "project");
                if (jSONArrayQueryTreeItemsForExchange == null) {
                    return;
                }
                for (int i2 = 0; i2 < jSONArrayQueryTreeItemsForExchange.length(); i2++) {
                    JSONObject jSONObject = jSONArrayQueryTreeItemsForExchange.getJSONObject(i2);
                    jSONObject.getString("itemId");
                    jSONObject.getString("itemName");
                    int iOptInt = jSONObject.optInt("certCountForAlias");
                    int iOptInt2 = jSONObject.optInt("projectId");
                    if ("RESERVE".equals(jSONObject.getString("projectType")) && iOptInt < i) {
                        while (iOptInt < i) {
                            ExchangeableTree exchangeableTreeQueryTreeForExchange = queryTreeForExchange(iOptInt2);
                            if (!exchangeableTreeQueryTreeForExchange.canExchange) {
                                break;
                            }
                            String str = exchangeableTreeQueryTreeForExchange.projectName;
                            iOptInt++;
                            Log.forest("生态保护🏕️申请[" + str + "]#第" + iOptInt + "次");
                            if (!exchangeTree(iOptInt2, str).booleanValue()) {
                                break;
                            }
                            Status.exchangeReserveToday(iOptInt2);
                            TimeUtil.sleep(300L);
                        }
                    }
                }
            } catch (Throwable th) {
                String str2 = TAG;
                Log.i(str2, "protectReserveMinNum err:");
                Log.printStackTrace(str2, th);
            }
        }
    }

    private static void protectBeachMinNum(int i) {
        if (i > 0) {
            try {
                JSONArray jSONArrayQueryCultivationList = queryCultivationList();
                if (jSONArrayQueryCultivationList == null) {
                    return;
                }
                for (int i2 = 0; i2 < jSONArrayQueryCultivationList.length(); i2++) {
                    JSONObject jSONObject = jSONArrayQueryCultivationList.getJSONObject(i2);
                    if ("AVAILABLE".equals(jSONObject.getString("applyAction"))) {
                        String string = jSONObject.getString("cultivationCode");
                        String string2 = jSONObject.getJSONObject("projectConfigVO").getString("code");
                        int i3 = jSONObject.getInt("certNum");
                        if (jSONObject.optInt("energy", 0) <= 1000) {
                            while (i > i3 && queryCultivationDetail(string, string2).booleanValue()) {
                                i3++;
                                TimeUtil.sleep(300L);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                String str = TAG;
                Log.i(str, "protectBeachMinNum err:");
                Log.printStackTrace(str, th);
            }
        }
    }

    private static void protectBeach() {
        Map<String, Integer> value = protectBeachList.getValue();
        try {
            JSONArray jSONArrayQueryCultivationList = queryCultivationList();
            if (jSONArrayQueryCultivationList == null) {
                return;
            }
            for (int i = 0; i < jSONArrayQueryCultivationList.length(); i++) {
                JSONObject jSONObject = jSONArrayQueryCultivationList.getJSONObject(i);
                if ("AVAILABLE".equals(jSONObject.getString("applyAction"))) {
                    String string = jSONObject.getString("cultivationCode");
                    String string2 = jSONObject.getJSONObject("projectConfigVO").getString("code");
                    int i2 = jSONObject.getInt("certNum");
                    Integer num = value.get(string);
                    if (num != null) {
                        while (num.intValue() > i2 && queryCultivationDetail(string, string2).booleanValue()) {
                            i2++;
                            TimeUtil.sleep(300L);
                        }
                    }
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "protectBeach err:");
            Log.printStackTrace(str, th);
        }
    }

    private static Boolean queryCultivationDetail(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(ProtectOceanRpcCall.queryCultivationDetail(str, str2));
            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                return false;
            }
            int i = jSONObject.getJSONObject("userInfoVO").getInt("currentEnergy");
            JSONObject jSONObject2 = jSONObject.getJSONObject("cultivationDetailVO");
            String string = jSONObject2.getString("cultivationName");
            if (!"AVAILABLE".equals(jSONObject2.getString("applyAction"))) {
                Log.record("保护海洋🏖️保护[" + string + "]停止:数量不足");
                return false;
            }
            if (i < jSONObject2.getInt("energy")) {
                Log.record("保护海洋🏖️保护[" + string + "]停止:能量不足");
                return false;
            }
            Log.forest("保护海洋🏖️申请[" + string + "]#第" + (jSONObject2.getInt("certNum") + 1) + "次");
            return oceanExchangeTree(str, str2, string);
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "queryCultivationDetail err:");
            Log.printStackTrace(str3, th);
            return false;
        }
    }

    private static Boolean oceanExchangeTree(String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject(ProtectOceanRpcCall.oceanExchangeTree(str, str2));
            if (!MessageUtil.checkResultCode(TAG, jSONObject).booleanValue()) {
                return false;
            }
            JSONArray jSONArray = jSONObject.getJSONArray("rewardItemVOs");
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                if (i > 0) {
                    sb.append(";");
                }
                sb.append(jSONObject2.getString("name"));
                sb.append("*");
                sb.append(jSONObject2.getInt("num"));
            }
            Log.forest("保护海洋🏖️保护[" + str3 + "]#获得[" + ((Object) sb) + "]");
            return true;
        } catch (Throwable th) {
            String str4 = TAG;
            Log.i(str4, "oceanExchangeTree err:");
            Log.printStackTrace(str4, th);
            return false;
        }
    }

    public static class ExchangeableTree {
        boolean canExchange = false;
        int certCount;
        int projectId;
        String projectName;

        ExchangeableTree(int i) {
            this.projectId = i;
        }
    }
}
