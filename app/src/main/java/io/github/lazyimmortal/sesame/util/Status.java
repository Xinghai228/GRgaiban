package io.github.lazyimmortal.sesame.util;

import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import io.github.lazyimmortal.sesame.data.ConfigV2;
import io.github.lazyimmortal.sesame.data.ModelField;
import io.github.lazyimmortal.sesame.data.ModelFields;
import io.github.lazyimmortal.sesame.data.task.ModelTask;
import io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm;
import io.github.lazyimmortal.sesame.model.task.antForest.AntForestV2;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.io.File;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class Status {
    public static final Status INSTANCE = new Status();
    private static final String TAG = "Status";
    private final Map<String, Integer> waterFriendLogList = new HashMap();
    private final Map<String, Integer> wateredFriendLogList = new HashMap();
    private final Map<String, Integer> wateringFriendLogList = new HashMap();
    private final Map<String, Integer> forestHuntHelpLogList = new HashMap();
    private final Map<String, Integer> vitality_ExchangeBenefitLogList = new HashMap();
    private final Map<Integer, Integer> exchangeReserveLogList = new HashMap();
    private final Set<String> ancientTreeCityCodeList = new HashSet();
    private int doubleTimes = 0;
    private final Map<String, Integer> feedFriendLogList = new HashMap();
    private final Map<String, Integer> visitFriendLogList = new HashMap();
    private final Map<String, Integer> gameCenterBuyMallItemList = new HashMap();
    private int useAccelerateToolCount = 0;
    private int useSpecialFoodCount = 0;
    private final Set<String> orchardShareP2PLogList = new HashSet();
    private final Map<String, Integer> stallHelpedCountLogList = new HashMap();
    private final Set<String> stallShareP2PLogList = new HashSet();
    private final Set<String> memberPointExchangeBenefitLogList = new HashSet();
    private final Map<String, Integer> goldenBeanExchangeLogList = new HashMap();
    private final Set<String> flagLogList = new HashSet();
    private final Map<String, Integer> dayCountLogList = new HashMap();
    private final Map<String, Integer> gameTaskSubmitLogList = new HashMap();
    private Long saveTime = 0L;
    private boolean greenFinancePointFriend = false;
    private final Set<Integer> greenFinancePrizesSet = new HashSet();

    protected boolean canEqual(Object obj) {
        return obj instanceof Status;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        if (!status.canEqual(this) || getDoubleTimes() != status.getDoubleTimes() || getUseAccelerateToolCount() != status.getUseAccelerateToolCount() || getUseSpecialFoodCount() != status.getUseSpecialFoodCount() || isGreenFinancePointFriend() != status.isGreenFinancePointFriend()) {
            return false;
        }
        Long saveTime = getSaveTime();
        Long saveTime2 = status.getSaveTime();
        if (saveTime != null ? !saveTime.equals(saveTime2) : saveTime2 != null) {
            return false;
        }
        Map<String, Integer> waterFriendLogList = getWaterFriendLogList();
        Map<String, Integer> waterFriendLogList2 = status.getWaterFriendLogList();
        if (waterFriendLogList != null ? !waterFriendLogList.equals(waterFriendLogList2) : waterFriendLogList2 != null) {
            return false;
        }
        Map<String, Integer> wateredFriendLogList = getWateredFriendLogList();
        Map<String, Integer> wateredFriendLogList2 = status.getWateredFriendLogList();
        if (wateredFriendLogList != null ? !wateredFriendLogList.equals(wateredFriendLogList2) : wateredFriendLogList2 != null) {
            return false;
        }
        Map<String, Integer> wateringFriendLogList = getWateringFriendLogList();
        Map<String, Integer> wateringFriendLogList2 = status.getWateringFriendLogList();
        if (wateringFriendLogList != null ? !wateringFriendLogList.equals(wateringFriendLogList2) : wateringFriendLogList2 != null) {
            return false;
        }
        Map<String, Integer> forestHuntHelpLogList = getForestHuntHelpLogList();
        Map<String, Integer> forestHuntHelpLogList2 = status.getForestHuntHelpLogList();
        if (forestHuntHelpLogList != null ? !forestHuntHelpLogList.equals(forestHuntHelpLogList2) : forestHuntHelpLogList2 != null) {
            return false;
        }
        Map<String, Integer> vitality_ExchangeBenefitLogList = getVitality_ExchangeBenefitLogList();
        Map<String, Integer> vitality_ExchangeBenefitLogList2 = status.getVitality_ExchangeBenefitLogList();
        if (vitality_ExchangeBenefitLogList != null ? !vitality_ExchangeBenefitLogList.equals(vitality_ExchangeBenefitLogList2) : vitality_ExchangeBenefitLogList2 != null) {
            return false;
        }
        Map<Integer, Integer> exchangeReserveLogList = getExchangeReserveLogList();
        Map<Integer, Integer> exchangeReserveLogList2 = status.getExchangeReserveLogList();
        if (exchangeReserveLogList != null ? !exchangeReserveLogList.equals(exchangeReserveLogList2) : exchangeReserveLogList2 != null) {
            return false;
        }
        Set<String> ancientTreeCityCodeList = getAncientTreeCityCodeList();
        Set<String> ancientTreeCityCodeList2 = status.getAncientTreeCityCodeList();
        if (ancientTreeCityCodeList != null ? !ancientTreeCityCodeList.equals(ancientTreeCityCodeList2) : ancientTreeCityCodeList2 != null) {
            return false;
        }
        Map<String, Integer> feedFriendLogList = getFeedFriendLogList();
        Map<String, Integer> feedFriendLogList2 = status.getFeedFriendLogList();
        if (feedFriendLogList != null ? !feedFriendLogList.equals(feedFriendLogList2) : feedFriendLogList2 != null) {
            return false;
        }
        Map<String, Integer> visitFriendLogList = getVisitFriendLogList();
        Map<String, Integer> visitFriendLogList2 = status.getVisitFriendLogList();
        if (visitFriendLogList != null ? !visitFriendLogList.equals(visitFriendLogList2) : visitFriendLogList2 != null) {
            return false;
        }
        Map<String, Integer> gameCenterBuyMallItemList = getGameCenterBuyMallItemList();
        Map<String, Integer> gameCenterBuyMallItemList2 = status.getGameCenterBuyMallItemList();
        if (gameCenterBuyMallItemList != null ? !gameCenterBuyMallItemList.equals(gameCenterBuyMallItemList2) : gameCenterBuyMallItemList2 != null) {
            return false;
        }
        Set<String> orchardShareP2PLogList = getOrchardShareP2PLogList();
        Set<String> orchardShareP2PLogList2 = status.getOrchardShareP2PLogList();
        if (orchardShareP2PLogList != null ? !orchardShareP2PLogList.equals(orchardShareP2PLogList2) : orchardShareP2PLogList2 != null) {
            return false;
        }
        Map<String, Integer> stallHelpedCountLogList = getStallHelpedCountLogList();
        Map<String, Integer> stallHelpedCountLogList2 = status.getStallHelpedCountLogList();
        if (stallHelpedCountLogList != null ? !stallHelpedCountLogList.equals(stallHelpedCountLogList2) : stallHelpedCountLogList2 != null) {
            return false;
        }
        Set<String> stallShareP2PLogList = getStallShareP2PLogList();
        Set<String> stallShareP2PLogList2 = status.getStallShareP2PLogList();
        if (stallShareP2PLogList != null ? !stallShareP2PLogList.equals(stallShareP2PLogList2) : stallShareP2PLogList2 != null) {
            return false;
        }
        Set<String> memberPointExchangeBenefitLogList = getMemberPointExchangeBenefitLogList();
        Set<String> memberPointExchangeBenefitLogList2 = status.getMemberPointExchangeBenefitLogList();
        if (memberPointExchangeBenefitLogList != null ? !memberPointExchangeBenefitLogList.equals(memberPointExchangeBenefitLogList2) : memberPointExchangeBenefitLogList2 != null) {
            return false;
        }
        Map<String, Integer> goldenBeanExchangeLogList = getGoldenBeanExchangeLogList();
        Map<String, Integer> goldenBeanExchangeLogList2 = status.getGoldenBeanExchangeLogList();
        if (goldenBeanExchangeLogList != null ? !goldenBeanExchangeLogList.equals(goldenBeanExchangeLogList2) : goldenBeanExchangeLogList2 != null) {
            return false;
        }
        Set<String> flagLogList = getFlagLogList();
        Set<String> flagLogList2 = status.getFlagLogList();
        if (flagLogList != null ? !flagLogList.equals(flagLogList2) : flagLogList2 != null) {
            return false;
        }
        Map<String, Integer> dayCountLogList = getDayCountLogList();
        Map<String, Integer> dayCountLogList2 = status.getDayCountLogList();
        if (dayCountLogList != null ? !dayCountLogList.equals(dayCountLogList2) : dayCountLogList2 != null) {
            return false;
        }
        Map<String, Integer> gameTaskSubmitLogList = getGameTaskSubmitLogList();
        Map<String, Integer> gameTaskSubmitLogList2 = status.getGameTaskSubmitLogList();
        if (gameTaskSubmitLogList != null ? !gameTaskSubmitLogList.equals(gameTaskSubmitLogList2) : gameTaskSubmitLogList2 != null) {
            return false;
        }
        Set<Integer> greenFinancePrizesSet = getGreenFinancePrizesSet();
        Set<Integer> greenFinancePrizesSet2 = status.getGreenFinancePrizesSet();
        return greenFinancePrizesSet != null ? greenFinancePrizesSet.equals(greenFinancePrizesSet2) : greenFinancePrizesSet2 == null;
    }

    public int hashCode() {
        int doubleTimes = ((((((getDoubleTimes() + 59) * 59) + getUseAccelerateToolCount()) * 59) + getUseSpecialFoodCount()) * 59) + (isGreenFinancePointFriend() ? 79 : 97);
        Long saveTime = getSaveTime();
        int iHashCode = (doubleTimes * 59) + (saveTime == null ? 43 : saveTime.hashCode());
        Map<String, Integer> waterFriendLogList = getWaterFriendLogList();
        int iHashCode2 = (iHashCode * 59) + (waterFriendLogList == null ? 43 : waterFriendLogList.hashCode());
        Map<String, Integer> wateredFriendLogList = getWateredFriendLogList();
        int iHashCode3 = (iHashCode2 * 59) + (wateredFriendLogList == null ? 43 : wateredFriendLogList.hashCode());
        Map<String, Integer> wateringFriendLogList = getWateringFriendLogList();
        int iHashCode4 = (iHashCode3 * 59) + (wateringFriendLogList == null ? 43 : wateringFriendLogList.hashCode());
        Map<String, Integer> forestHuntHelpLogList = getForestHuntHelpLogList();
        int iHashCode5 = (iHashCode4 * 59) + (forestHuntHelpLogList == null ? 43 : forestHuntHelpLogList.hashCode());
        Map<String, Integer> vitality_ExchangeBenefitLogList = getVitality_ExchangeBenefitLogList();
        int iHashCode6 = (iHashCode5 * 59) + (vitality_ExchangeBenefitLogList == null ? 43 : vitality_ExchangeBenefitLogList.hashCode());
        Map<Integer, Integer> exchangeReserveLogList = getExchangeReserveLogList();
        int iHashCode7 = (iHashCode6 * 59) + (exchangeReserveLogList == null ? 43 : exchangeReserveLogList.hashCode());
        Set<String> ancientTreeCityCodeList = getAncientTreeCityCodeList();
        int iHashCode8 = (iHashCode7 * 59) + (ancientTreeCityCodeList == null ? 43 : ancientTreeCityCodeList.hashCode());
        Map<String, Integer> feedFriendLogList = getFeedFriendLogList();
        int iHashCode9 = (iHashCode8 * 59) + (feedFriendLogList == null ? 43 : feedFriendLogList.hashCode());
        Map<String, Integer> visitFriendLogList = getVisitFriendLogList();
        int iHashCode10 = (iHashCode9 * 59) + (visitFriendLogList == null ? 43 : visitFriendLogList.hashCode());
        Map<String, Integer> gameCenterBuyMallItemList = getGameCenterBuyMallItemList();
        int iHashCode11 = (iHashCode10 * 59) + (gameCenterBuyMallItemList == null ? 43 : gameCenterBuyMallItemList.hashCode());
        Set<String> orchardShareP2PLogList = getOrchardShareP2PLogList();
        int iHashCode12 = (iHashCode11 * 59) + (orchardShareP2PLogList == null ? 43 : orchardShareP2PLogList.hashCode());
        Map<String, Integer> stallHelpedCountLogList = getStallHelpedCountLogList();
        int iHashCode13 = (iHashCode12 * 59) + (stallHelpedCountLogList == null ? 43 : stallHelpedCountLogList.hashCode());
        Set<String> stallShareP2PLogList = getStallShareP2PLogList();
        int iHashCode14 = (iHashCode13 * 59) + (stallShareP2PLogList == null ? 43 : stallShareP2PLogList.hashCode());
        Set<String> memberPointExchangeBenefitLogList = getMemberPointExchangeBenefitLogList();
        int iHashCode15 = (iHashCode14 * 59) + (memberPointExchangeBenefitLogList == null ? 43 : memberPointExchangeBenefitLogList.hashCode());
        Map<String, Integer> goldenBeanExchangeLogList = getGoldenBeanExchangeLogList();
        int iHashCode16 = (iHashCode15 * 59) + (goldenBeanExchangeLogList == null ? 43 : goldenBeanExchangeLogList.hashCode());
        Set<String> flagLogList = getFlagLogList();
        int iHashCode17 = (iHashCode16 * 59) + (flagLogList == null ? 43 : flagLogList.hashCode());
        Map<String, Integer> dayCountLogList = getDayCountLogList();
        int iHashCode18 = (iHashCode17 * 59) + (dayCountLogList == null ? 43 : dayCountLogList.hashCode());
        Map<String, Integer> gameTaskSubmitLogList = getGameTaskSubmitLogList();
        int iHashCode19 = (iHashCode18 * 59) + (gameTaskSubmitLogList == null ? 43 : gameTaskSubmitLogList.hashCode());
        Set<Integer> greenFinancePrizesSet = getGreenFinancePrizesSet();
        return (iHashCode19 * 59) + (greenFinancePrizesSet != null ? greenFinancePrizesSet.hashCode() : 43);
    }

    public void setDoubleTimes(int i) {
        this.doubleTimes = i;
    }

    public void setGreenFinancePointFriend(boolean z) {
        this.greenFinancePointFriend = z;
    }

    public void setSaveTime(Long l) {
        this.saveTime = l;
    }

    public void setUseAccelerateToolCount(int i) {
        this.useAccelerateToolCount = i;
    }

    public void setUseSpecialFoodCount(int i) {
        this.useSpecialFoodCount = i;
    }

    public String toString() {
        return "Status(waterFriendLogList=" + getWaterFriendLogList() + ", wateredFriendLogList=" + getWateredFriendLogList() + ", wateringFriendLogList=" + getWateringFriendLogList() + ", forestHuntHelpLogList=" + getForestHuntHelpLogList() + ", vitality_ExchangeBenefitLogList=" + getVitality_ExchangeBenefitLogList() + ", exchangeReserveLogList=" + getExchangeReserveLogList() + ", ancientTreeCityCodeList=" + getAncientTreeCityCodeList() + ", doubleTimes=" + getDoubleTimes() + ", feedFriendLogList=" + getFeedFriendLogList() + ", visitFriendLogList=" + getVisitFriendLogList() + ", gameCenterBuyMallItemList=" + getGameCenterBuyMallItemList() + ", useAccelerateToolCount=" + getUseAccelerateToolCount() + ", useSpecialFoodCount=" + getUseSpecialFoodCount() + ", orchardShareP2PLogList=" + getOrchardShareP2PLogList() + ", stallHelpedCountLogList=" + getStallHelpedCountLogList() + ", stallShareP2PLogList=" + getStallShareP2PLogList() + ", memberPointExchangeBenefitLogList=" + getMemberPointExchangeBenefitLogList() + ", goldenBeanExchangeLogList=" + getGoldenBeanExchangeLogList() + ", flagLogList=" + getFlagLogList() + ", dayCountLogList=" + getDayCountLogList() + ", gameTaskSubmitLogList=" + getGameTaskSubmitLogList() + ", saveTime=" + getSaveTime() + ", greenFinancePointFriend=" + isGreenFinancePointFriend() + ", greenFinancePrizesSet=" + getGreenFinancePrizesSet() + ")";
    }

    public Map<String, Integer> getWaterFriendLogList() {
        return this.waterFriendLogList;
    }

    public Map<String, Integer> getWateredFriendLogList() {
        return this.wateredFriendLogList;
    }

    public Map<String, Integer> getWateringFriendLogList() {
        return this.wateringFriendLogList;
    }

    public Map<String, Integer> getForestHuntHelpLogList() {
        return this.forestHuntHelpLogList;
    }

    public Map<String, Integer> getVitality_ExchangeBenefitLogList() {
        return this.vitality_ExchangeBenefitLogList;
    }

    public Map<Integer, Integer> getExchangeReserveLogList() {
        return this.exchangeReserveLogList;
    }

    public Set<String> getAncientTreeCityCodeList() {
        return this.ancientTreeCityCodeList;
    }

    public int getDoubleTimes() {
        return this.doubleTimes;
    }

    public Map<String, Integer> getFeedFriendLogList() {
        return this.feedFriendLogList;
    }

    public Map<String, Integer> getVisitFriendLogList() {
        return this.visitFriendLogList;
    }

    public Map<String, Integer> getGameCenterBuyMallItemList() {
        return this.gameCenterBuyMallItemList;
    }

    public int getUseAccelerateToolCount() {
        return this.useAccelerateToolCount;
    }

    public int getUseSpecialFoodCount() {
        return this.useSpecialFoodCount;
    }

    public Set<String> getOrchardShareP2PLogList() {
        return this.orchardShareP2PLogList;
    }

    public Map<String, Integer> getStallHelpedCountLogList() {
        return this.stallHelpedCountLogList;
    }

    public Set<String> getStallShareP2PLogList() {
        return this.stallShareP2PLogList;
    }

    public Set<String> getMemberPointExchangeBenefitLogList() {
        return this.memberPointExchangeBenefitLogList;
    }

    public Map<String, Integer> getGoldenBeanExchangeLogList() {
        return this.goldenBeanExchangeLogList;
    }

    public Set<String> getFlagLogList() {
        return this.flagLogList;
    }

    public Map<String, Integer> getDayCountLogList() {
        return this.dayCountLogList;
    }

    public Map<String, Integer> getGameTaskSubmitLogList() {
        return this.gameTaskSubmitLogList;
    }

    public Long getSaveTime() {
        return this.saveTime;
    }

    public boolean isGreenFinancePointFriend() {
        return this.greenFinancePointFriend;
    }

    public Set<Integer> getGreenFinancePrizesSet() {
        return this.greenFinancePrizesSet;
    }

    public static Boolean hasFlagToday(String str) {
        return Boolean.valueOf(INSTANCE.flagLogList.contains(str));
    }

    public static void flagToday(String str) {
        if (hasFlagToday(str).booleanValue()) {
            return;
        }
        INSTANCE.flagLogList.add(str);
        save();
    }

    public static int getCountToday(String str) {
        Integer num = INSTANCE.dayCountLogList.get(str);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public static void incrCountToday(String str) {
        INSTANCE.dayCountLogList.put(str, Integer.valueOf(getCountToday(str) + 1));
        save();
    }

    public static int getGameTaskSubmitCountToday(String str) {
        Integer num = INSTANCE.gameTaskSubmitLogList.get(str);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public static void incrGameTaskSubmitToday(String str) {
        INSTANCE.gameTaskSubmitLogList.put(str, Integer.valueOf(getGameTaskSubmitCountToday(str) + 1));
        save();
    }

    public static void flagToday(String str, String str2) {
        if (hasFlagToday(str).booleanValue() || !str2.equals(UserIdMap.getCurrentUid())) {
            return;
        }
        INSTANCE.flagLogList.add(str);
        save();
    }

    public static void clearFlag(String str) {
        Status status = INSTANCE;
        if (status.flagLogList.contains(str)) {
            status.flagLogList.remove(str);
            save();
        }
    }

    public static void forestHuntHelpToday(String str, int i, String str2) {
        if (str2.equals(UserIdMap.getCurrentUid())) {
            INSTANCE.forestHuntHelpLogList.put(str, Integer.valueOf(i));
            save();
        }
    }

    public static Integer getforestHuntHelpToday(String str) {
        Integer num = INSTANCE.forestHuntHelpLogList.get(str);
        if (num == null) {
            return 0;
        }
        return num;
    }

    public static void rpcRequestListToday(String str, int i) {
        INSTANCE.forestHuntHelpLogList.put(str, Integer.valueOf(i));
        save();
    }

    public static Integer getrpcRequestListToday(String str) {
        Integer num = INSTANCE.forestHuntHelpLogList.get(str);
        if (num == null) {
            return 0;
        }
        return num;
    }

    public static void wateredFriendToday(String str) {
        Status status = INSTANCE;
        Integer num = status.wateredFriendLogList.get(str);
        if (num == null) {
            num = 0;
        }
        status.wateredFriendLogList.put(str, Integer.valueOf(num.intValue() + 1));
        save();
    }

    public static void getWateredFriendToday() {
        getWateredFriendToday(false);
    }

    public static void getWateredFriendToday(boolean z) {
        Integer value;
        ModelField<?> modelField;
        Status status = INSTANCE;
        int size = status.wateredFriendLogList.size();
        int iIntValue = 0;
        for (Map.Entry<String, Integer> entry : status.wateredFriendLogList.entrySet()) {
            String key = entry.getKey();
            Integer value2 = entry.getValue();
            if (value2 == null) {
                value2 = 0;
            }
            logWaterLog(z, "统计被水🍯被[" + UserIdMap.getShowName(key) + "]浇水" + value2 + "次");
            iIntValue += value2.intValue();
        }
        logWaterLog(z, "统计被水🍯共计被" + size + "个好友浇水" + iIntValue + "次#[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
        Map map = null;
        try {
            ModelFields modelFields = ConfigV2.INSTANCE.getModelFieldsMap().get("AntForestV2");
            if (modelFields != null && (modelField = modelFields.get("wateredFriendList")) != null && (modelField.getValue() instanceof Map)) {
                map = (Map) modelField.getValue();
            }
        } catch (Exception e) {
            String str = TAG;
            Log.i(str, "获取wateredFriendList配置失败:");
            Log.printStackTrace(str, e);
        }
        if (map == null || map.isEmpty()) {
            return;
        }
        Iterator it = map.entrySet().iterator();
        int i = 0;
        int iIntValue2 = 0;
        while (it.hasNext()) {
            Integer num = (Integer) ((Map.Entry) it.next()).getValue();
            if (num != null && num.intValue() > 0) {
                i++;
                iIntValue2 += num.intValue();
            }
        }
        logWaterLog(z, "统计被水🍯预计被" + i + "个好友浇水" + iIntValue2 + "次#[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
        for (Map.Entry entry2 : map.entrySet()) {
            String str2 = (String) entry2.getKey();
            Integer num2 = (Integer) entry2.getValue();
            if (num2 != null && num2.intValue() > 0) {
                Integer num3 = INSTANCE.wateredFriendLogList.get(str2);
                String showName = UserIdMap.getShowName(str2);
                int iIntValue3 = num2.intValue() - (num3 == null ? 0 : num3.intValue());
                if (iIntValue3 > 0) {
                    logWaterLog(z, "统计被水🍯被[" + showName + "]少浇" + iIntValue3 + "次");
                } else if (iIntValue3 < 0) {
                    logWaterLog(z, "统计被水🍯被[" + showName + "]多浇" + (-iIntValue3) + "次");
                }
            }
        }
        for (Map.Entry<String, Integer> entry3 : INSTANCE.wateredFriendLogList.entrySet()) {
            String key2 = entry3.getKey();
            if (!map.containsKey(key2) && (value = entry3.getValue()) != null && value.intValue() > 0) {
                logWaterLog(z, "统计被水🍯被[" + UserIdMap.getShowName(key2) + "]多浇" + value + "次");
            }
        }
    }

    private static void logWaterLog(boolean z, String str) {
        if (z) {
            Log.info(str);
        } else {
            Log.forest(str);
        }
    }

    public static void fillWateredFriendList() {
        ModelField<?> modelField;
        ModelField<?> modelField2;
        Map<String, Integer> map = INSTANCE.wateredFriendLogList;
        if (map == null || map.isEmpty()) {
            Log.forest("填入被水🍯[当前没有被浇水数据]");
            return;
        }
        Map linkedHashMap = null;
        try {
            ModelFields modelFields = ConfigV2.INSTANCE.getModelFieldsMap().get("AntForestV2");
            if (modelFields != null && (modelField2 = modelFields.get("wateredFriendList")) != null && (modelField2.getValue() instanceof Map)) {
                linkedHashMap = (Map) modelField2.getValue();
            }
        } catch (Exception e) {
            String str = TAG;
            Log.i(str, "获取wateredFriendList配置失败:");
            Log.printStackTrace(str, e);
        }
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap();
        }
        int i = 0;
        int i2 = 0;
        for (Map.Entry<String, Integer> entry : map.entrySet()) {
            String key = entry.getKey();
            Integer value = entry.getValue();
            if (value != null && value.intValue() > 0) {
                if (linkedHashMap.containsKey(key)) {
                    linkedHashMap.put(key, value);
                    i2++;
                    Log.forest("填入被水🍯更新[" + UserIdMap.getShowName(key) + "]为" + value + "次");
                } else {
                    linkedHashMap.put(key, value);
                    i++;
                    Log.forest("填入被水🍯新增[" + UserIdMap.getShowName(key) + "]" + value + "次");
                }
            }
        }
        Iterator it = linkedHashMap.entrySet().iterator();
        int i3 = 0;
        while (it.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it.next();
            String str2 = (String) entry2.getKey();
            if (!map.containsKey(str2)) {
                Integer num = (Integer) entry2.getValue();
                it.remove();
                i3++;
                String showName = UserIdMap.getShowName(str2);
                StringBuilder sb = new StringBuilder("填入被水🍯清除[");
                sb.append(showName);
                sb.append("]");
                sb.append(num != null ? num.intValue() : 0);
                sb.append("次");
                Log.forest(sb.toString());
            }
        }
        try {
            ModelFields modelFields2 = ConfigV2.INSTANCE.getModelFieldsMap().get("AntForestV2");
            if (modelFields2 == null || (modelField = modelFields2.get("wateredFriendList")) == null) {
                return;
            }
            modelField.setObjectValue(linkedHashMap);
            ConfigV2.save(UserIdMap.getCurrentUid(), true);
            Log.forest("填入被水🍯完成新增" + i + "个更新" + i2 + "个清除" + i3 + "个#[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
        } catch (Exception e2) {
            String str3 = TAG;
            Log.i(str3, "保存wateredFriendList配置失败:");
            Log.printStackTrace(str3, e2);
        }
    }

    public static void wateringFriendToday(String str) {
        Status status = INSTANCE;
        Integer num = status.wateringFriendLogList.get(str);
        if (num == null) {
            num = 0;
        }
        status.wateringFriendLogList.put(str, Integer.valueOf(num.intValue() + 1));
    }

    public static void getWateringFriendToday() {
        getWateringFriendToday(false);
    }

    public static void getWateringFriendToday(boolean z) {
        ModelField<?> modelField;
        Status status = INSTANCE;
        int size = status.wateringFriendLogList.size();
        int iIntValue = 0;
        for (Map.Entry<String, Integer> entry : status.wateringFriendLogList.entrySet()) {
            String key = entry.getKey();
            Integer value = entry.getValue();
            if (value == null) {
                value = 0;
            }
            logWaterLog(z, "统计浇水🚿给[" + UserIdMap.getShowName(key) + "]浇水" + value + "次");
            iIntValue += value.intValue();
        }
        logWaterLog(z, "统计浇水🚿共计给" + size + "个好友浇水" + iIntValue + "次#[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
        Map map = null;
        try {
            ModelFields modelFields = ConfigV2.INSTANCE.getModelFieldsMap().get("AntForestV2");
            if (modelFields != null && (modelField = modelFields.get("waterFriendList")) != null && (modelField.getValue() instanceof Map)) {
                map = (Map) modelField.getValue();
            }
        } catch (Exception e) {
            String str = TAG;
            Log.i(str, "获取waterFriendList配置失败:");
            Log.printStackTrace(str, e);
        }
        if (map == null || map.isEmpty()) {
            return;
        }
        Iterator it = map.entrySet().iterator();
        int i = 0;
        int iIntValue2 = 0;
        while (it.hasNext()) {
            Integer num = (Integer) ((Map.Entry) it.next()).getValue();
            if (num != null && num.intValue() > 0) {
                i++;
                iIntValue2 += num.intValue();
            }
        }
        logWaterLog(z, "统计浇水🚿预计给" + i + "个好友浇水" + iIntValue2 + "次#[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
        for (Map.Entry entry2 : map.entrySet()) {
            String str2 = (String) entry2.getKey();
            Integer num2 = (Integer) entry2.getValue();
            if (num2 != null && num2.intValue() > 0) {
                Integer num3 = INSTANCE.wateringFriendLogList.get(str2);
                String showName = UserIdMap.getShowName(str2);
                int iIntValue3 = num2.intValue() - (num3 == null ? 0 : num3.intValue());
                if (iIntValue3 != 0) {
                    logWaterLog(z, "统计浇水🚿给[" + showName + "]缺少" + iIntValue3 + "次");
                }
            }
        }
    }

    public static Boolean canWaterFriendToday(String str, int i) {
        Integer num = INSTANCE.waterFriendLogList.get(str);
        if (num == null) {
            return true;
        }
        return Boolean.valueOf(num.intValue() < i);
    }

    public static void waterFriendToday(String str, int i, String str2) {
        if (str2.equals(UserIdMap.getCurrentUid())) {
            INSTANCE.waterFriendLogList.put(str, Integer.valueOf(i));
            save();
        }
    }

    public static int getVitalityExchangeBenefitCountToday(String str) {
        Integer num = INSTANCE.vitality_ExchangeBenefitLogList.get(str);
        if (num == null) {
            num = 0;
        }
        return num.intValue();
    }

    public static Boolean canVitalityExchangeBenefitToday(String str, int i) {
        StringBuilder sb = new StringBuilder("forest::exchangeLimit::");
        sb.append(str);
        return Boolean.valueOf(!hasFlagToday(sb.toString()).booleanValue() && getVitalityExchangeBenefitCountToday(str) < i);
    }

    public static void vitalityExchangeBenefitToday(String str) {
        INSTANCE.vitality_ExchangeBenefitLogList.put(str, Integer.valueOf(getVitalityExchangeBenefitCountToday(str) + 1));
        save();
    }

    public static int getGameCenterBuyMallItemCountToday(String str) {
        Integer num = INSTANCE.gameCenterBuyMallItemList.get(str);
        if (num == null) {
            num = 0;
        }
        return num.intValue();
    }

    public static Boolean canGameCenterBuyMallItemToday(String str, int i) {
        StringBuilder sb = new StringBuilder("farm::buyLimit::");
        sb.append(str);
        return Boolean.valueOf(!hasFlagToday(sb.toString()).booleanValue() && getGameCenterBuyMallItemCountToday(str) < i);
    }

    public static void gameCenterBuyMallItemToday(String str) {
        INSTANCE.gameCenterBuyMallItemList.put(str, Integer.valueOf(getGameCenterBuyMallItemCountToday(str) + 1));
        save();
    }

    public static int getExchangeReserveCountToday(int i) {
        Integer num = INSTANCE.exchangeReserveLogList.get(Integer.valueOf(i));
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public static Boolean canExchangeReserveToday(int i, int i2) {
        return Boolean.valueOf(getExchangeReserveCountToday(i) < i2);
    }

    public static void exchangeReserveToday(int i) {
        INSTANCE.exchangeReserveLogList.put(Integer.valueOf(i), Integer.valueOf(getExchangeReserveCountToday(i) + 1));
        save();
    }

    public static Boolean canMemberPointExchangeBenefitToday(String str) {
        return Boolean.valueOf(!INSTANCE.memberPointExchangeBenefitLogList.contains(str));
    }

    public static int getGoldenBeanExchangeCountToday(String str) {
        Integer num = INSTANCE.goldenBeanExchangeLogList.get(str);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public static void goldenBeanExchangeToday(String str, int i) {
        INSTANCE.goldenBeanExchangeLogList.put(str, Integer.valueOf(getGoldenBeanExchangeCountToday(str) + i));
        save();
    }

    public static void memberPointExchangeBenefitToday(String str) {
        if (canMemberPointExchangeBenefitToday(str).booleanValue()) {
            INSTANCE.memberPointExchangeBenefitLogList.add(str);
            save();
        }
    }

    public static Boolean canAncientTreeToday(String str) {
        return Boolean.valueOf(!INSTANCE.ancientTreeCityCodeList.contains(str));
    }

    public static void ancientTreeToday(String str) {
        Status status = INSTANCE;
        if (status.ancientTreeCityCodeList.contains(str)) {
            return;
        }
        status.ancientTreeCityCodeList.add(str);
        save();
    }

    private static int getFeedFriendCountToday(String str) {
        Integer num = INSTANCE.feedFriendLogList.get(str);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public static Boolean canFeedFriendToday(String str, int i) {
        return Boolean.valueOf(!hasFlagToday("farm::feedFriendAnimalLimit").booleanValue() && getFeedFriendCountToday(str) < i);
    }

    public static void feedFriendToday(String str) {
        INSTANCE.feedFriendLogList.put(str, Integer.valueOf(getFeedFriendCountToday(str) + 1));
        save();
    }

    private static int getVisitFriendCountToday(String str) {
        Integer num = INSTANCE.visitFriendLogList.get(str);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public static Boolean canVisitFriendToday(String str, int i) {
        boolean z = false;
        int iMin = Math.min(Math.max(i, 0), 3);
        if (!hasFlagToday("farm::visitFriendLimit::" + str).booleanValue() && getVisitFriendCountToday(str) < iMin) {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    public static void visitFriendToday(String str) {
        INSTANCE.visitFriendLogList.put(str, Integer.valueOf(getVisitFriendCountToday(str) + 1));
        save();
    }

    public static void visitFriendToday(String str, int i) {
        INSTANCE.visitFriendLogList.put(str, Integer.valueOf(i));
        save();
    }

    public static boolean canStallHelpToday(String str) {
        Integer num = INSTANCE.stallHelpedCountLogList.get(str);
        return num == null || num.intValue() < 3;
    }

    public static void stallHelpToday(String str, boolean z) {
        int iValueOf;
        Status status = INSTANCE;
        Integer num = status.stallHelpedCountLogList.get(str);
        if (num == null) {
            num = 0;
        }
        if (z) {
            iValueOf = 3;
        } else {
            iValueOf = Integer.valueOf(num.intValue() + 1);
        }
        status.stallHelpedCountLogList.put(str, iValueOf);
        save();
    }

    public static Boolean canUseAccelerateToolToday() {
        return Boolean.valueOf(!hasFlagToday("farm::useFarmToolLimit::ACCELERATETOOL").booleanValue() && INSTANCE.useAccelerateToolCount < 8);
    }

    public static void useAccelerateToolToday() {
        INSTANCE.useAccelerateToolCount++;
        save();
    }

    public static Boolean canUseSpecialFoodToday() {
        AntFarm antFarm = (AntFarm) ModelTask.getModel(AntFarm.class);
        if (antFarm == null) {
            return false;
        }
        int iIntValue = antFarm.getUseSpecialFoodCountLimit().getValue().intValue();
        if (iIntValue == 0) {
            return true;
        }
        return Boolean.valueOf(INSTANCE.useSpecialFoodCount < iIntValue);
    }

    public static void useSpecialFoodToday() {
        INSTANCE.useSpecialFoodCount++;
        save();
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0030  */
    public static Boolean canOrchardShareP2PToday(String str) {
        boolean z;
        if (hasFlagToday("orchard::shareP2PLimit").booleanValue()) {
            z = false;
        } else {
            if (hasFlagToday("orchard::shareP2PLimit::" + str).booleanValue() || INSTANCE.orchardShareP2PLogList.contains(str)) {
                z = false;
            } else {
                z = true;
            }
        }
        return Boolean.valueOf(z);
    }

    public static void orchardShareP2PToday(String str) {
        if (canOrchardShareP2PToday(str).booleanValue()) {
            INSTANCE.orchardShareP2PLogList.add(str);
            save();
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0030  */
    public static Boolean canStallShareP2PToday(String str) {
        boolean z;
        if (hasFlagToday("stall::shareP2PLimit").booleanValue()) {
            z = false;
        } else {
            if (hasFlagToday("stall::shareP2PLimit::" + str).booleanValue() || INSTANCE.stallShareP2PLogList.contains(str)) {
                z = false;
            } else {
                z = true;
            }
        }
        return Boolean.valueOf(z);
    }

    public static void stallShareP2PToday(String str) {
        if (canStallShareP2PToday(str).booleanValue()) {
            INSTANCE.stallShareP2PLogList.add(str);
            save();
        }
    }

    public static boolean canDoubleToday() {
        AntForestV2 antForestV2 = (AntForestV2) ModelTask.getModel(AntForestV2.class);
        return antForestV2 != null && INSTANCE.doubleTimes < antForestV2.getDoubleCountLimit().getValue().intValue();
    }

    public static void DoubleToday() {
        INSTANCE.doubleTimes++;
        save();
    }

    public static boolean canGreenFinancePointFriend() {
        return !INSTANCE.greenFinancePointFriend;
    }

    public static void greenFinancePointFriend() {
        Status status = INSTANCE;
        if (status.greenFinancePointFriend) {
            return;
        }
        status.greenFinancePointFriend = true;
        save();
    }

    public static boolean canGreenFinancePrizesMap() {
        return !INSTANCE.greenFinancePrizesSet.contains(Integer.valueOf(TimeUtil.getWeekNumber(new Date())));
    }

    public static void greenFinancePrizesMap() {
        int weekNumber = TimeUtil.getWeekNumber(new Date());
        Status status = INSTANCE;
        if (status.greenFinancePrizesSet.contains(Integer.valueOf(weekNumber))) {
            return;
        }
        status.greenFinancePrizesSet.add(Integer.valueOf(weekNumber));
        save();
    }

    public static synchronized Status load() {
        Status status;
        String currentUid = UserIdMap.getCurrentUid();
        try {
            if (StringUtil.isEmpty(currentUid)) {
                Log.i(TAG, "用户为空，状态加载失败");
                throw new RuntimeException("用户为空，状态加载失败");
            }
            File statusFile = FileUtil.getStatusFile(currentUid);
            if (statusFile.exists()) {
                String fromFile = FileUtil.readFromFile(statusFile);
                ObjectMapper objectMapperCopyMapper = JsonUtil.copyMapper();
                Status status2 = INSTANCE;
                objectMapperCopyMapper.readerForUpdating(status2).readValue(fromFile);
                String formatJsonString = JsonUtil.toFormatJsonString(status2);
                if (formatJsonString != null && !formatJsonString.equals(fromFile)) {
                    String str = TAG;
                    Log.i(str, "重新格式化 status.json");
                    Log.system(str, "重新格式化 status.json");
                    FileUtil.write2File(formatJsonString, FileUtil.getStatusFile(currentUid));
                }
            } else {
                ObjectMapper objectMapperCopyMapper2 = JsonUtil.copyMapper();
                Status status3 = INSTANCE;
                objectMapperCopyMapper2.updateValue(status3, new Status());
                String str2 = TAG;
                Log.i(str2, "初始化 status.json");
                Log.system(str2, "初始化 status.json");
                FileUtil.write2File(JsonUtil.toFormatJsonString(status3), FileUtil.getStatusFile(currentUid));
            }
            status = INSTANCE;
            if (status.saveTime.longValue() == 0) {
                status.saveTime = Long.valueOf(System.currentTimeMillis());
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.printStackTrace(str3, th);
            Log.i(str3, "状态文件格式有误，已重置");
            Log.system(str3, "状态文件格式有误，已重置");
            try {
                ObjectMapper objectMapperCopyMapper3 = JsonUtil.copyMapper();
                Status status4 = INSTANCE;
                objectMapperCopyMapper3.updateValue(status4, new Status());
                FileUtil.write2File(JsonUtil.toFormatJsonString(status4), FileUtil.getStatusFile(currentUid));
            } catch (JsonMappingException e) {
                Log.printStackTrace(TAG, e);
            }
        }
        return status;
    }

    public static synchronized void unload() {
        try {
            JsonUtil.copyMapper().updateValue(INSTANCE, new Status());
        } catch (JsonMappingException e) {
            Log.printStackTrace(TAG, e);
        }
    }

    public static synchronized void save() {
        save(Calendar.getInstance());
    }

    public static synchronized void save(Calendar calendar) {
        String currentUid = UserIdMap.getCurrentUid();
        if (StringUtil.isEmpty(currentUid)) {
            Log.record("用户为空，状态保存失败");
            throw new RuntimeException("用户为空，状态保存失败");
        }
        if (updateDay(calendar).booleanValue()) {
            Log.system(TAG, "重置 status.json");
        } else {
            Log.system(TAG, "保存 status.json");
        }
        Status status = INSTANCE;
        Long l = status.saveTime;
        l.longValue();
        try {
            status.saveTime = Long.valueOf(System.currentTimeMillis());
            FileUtil.write2File(JsonUtil.toFormatJsonString(status), FileUtil.getStatusFile(currentUid));
        } catch (Exception e) {
            INSTANCE.saveTime = l;
            throw e;
        }
    }

    public static Boolean updateDay(Calendar calendar) {
        if (TimeUtil.isLessThanSecondOfDays(INSTANCE.saveTime, Long.valueOf(calendar.getTimeInMillis())).booleanValue()) {
            unload();
            return true;
        }
        return false;
    }

    private static class WaterFriendLog {
        String userId;
        int waterCount = 0;

        protected boolean canEqual(Object obj) {
            return obj instanceof WaterFriendLog;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof WaterFriendLog)) {
                return false;
            }
            WaterFriendLog waterFriendLog = (WaterFriendLog) obj;
            if (!waterFriendLog.canEqual(this) || getWaterCount() != waterFriendLog.getWaterCount()) {
                return false;
            }
            String userId = getUserId();
            String userId2 = waterFriendLog.getUserId();
            return userId != null ? userId.equals(userId2) : userId2 == null;
        }

        public int hashCode() {
            int waterCount = getWaterCount() + 59;
            String userId = getUserId();
            return (waterCount * 59) + (userId == null ? 43 : userId.hashCode());
        }

        public void setUserId(String str) {
            this.userId = str;
        }

        public void setWaterCount(int i) {
            this.waterCount = i;
        }

        public String toString() {
            return "Status.WaterFriendLog(userId=" + getUserId() + ", waterCount=" + getWaterCount() + ")";
        }

        public String getUserId() {
            return this.userId;
        }

        public int getWaterCount() {
            return this.waterCount;
        }

        public WaterFriendLog() {
        }

        public WaterFriendLog(String str) {
            this.userId = str;
        }
    }

    private static class ReserveLog {
        int applyCount = 0;
        String projectId;

        protected boolean canEqual(Object obj) {
            return obj instanceof ReserveLog;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ReserveLog)) {
                return false;
            }
            ReserveLog reserveLog = (ReserveLog) obj;
            if (!reserveLog.canEqual(this) || getApplyCount() != reserveLog.getApplyCount()) {
                return false;
            }
            String projectId = getProjectId();
            String projectId2 = reserveLog.getProjectId();
            return projectId != null ? projectId.equals(projectId2) : projectId2 == null;
        }

        public int hashCode() {
            int applyCount = getApplyCount() + 59;
            String projectId = getProjectId();
            return (applyCount * 59) + (projectId == null ? 43 : projectId.hashCode());
        }

        public void setApplyCount(int i) {
            this.applyCount = i;
        }

        public void setProjectId(String str) {
            this.projectId = str;
        }

        public String toString() {
            return "Status.ReserveLog(projectId=" + getProjectId() + ", applyCount=" + getApplyCount() + ")";
        }

        public String getProjectId() {
            return this.projectId;
        }

        public int getApplyCount() {
            return this.applyCount;
        }

        public ReserveLog() {
        }

        public ReserveLog(String str) {
            this.projectId = str;
        }
    }

    private static class BeachLog {
        int applyCount = 0;
        String cultivationCode;

        protected boolean canEqual(Object obj) {
            return obj instanceof BeachLog;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof BeachLog)) {
                return false;
            }
            BeachLog beachLog = (BeachLog) obj;
            if (!beachLog.canEqual(this) || getApplyCount() != beachLog.getApplyCount()) {
                return false;
            }
            String cultivationCode = getCultivationCode();
            String cultivationCode2 = beachLog.getCultivationCode();
            return cultivationCode != null ? cultivationCode.equals(cultivationCode2) : cultivationCode2 == null;
        }

        public int hashCode() {
            int applyCount = getApplyCount() + 59;
            String cultivationCode = getCultivationCode();
            return (applyCount * 59) + (cultivationCode == null ? 43 : cultivationCode.hashCode());
        }

        public void setApplyCount(int i) {
            this.applyCount = i;
        }

        public void setCultivationCode(String str) {
            this.cultivationCode = str;
        }

        public String toString() {
            return "Status.BeachLog(cultivationCode=" + getCultivationCode() + ", applyCount=" + getApplyCount() + ")";
        }

        public String getCultivationCode() {
            return this.cultivationCode;
        }

        public int getApplyCount() {
            return this.applyCount;
        }

        public BeachLog() {
        }

        public BeachLog(String str) {
            this.cultivationCode = str;
        }
    }

    private static class FeedFriendLog {
        int feedCount = 0;
        String userId;

        protected boolean canEqual(Object obj) {
            return obj instanceof FeedFriendLog;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof FeedFriendLog)) {
                return false;
            }
            FeedFriendLog feedFriendLog = (FeedFriendLog) obj;
            if (!feedFriendLog.canEqual(this) || getFeedCount() != feedFriendLog.getFeedCount()) {
                return false;
            }
            String userId = getUserId();
            String userId2 = feedFriendLog.getUserId();
            return userId != null ? userId.equals(userId2) : userId2 == null;
        }

        public int hashCode() {
            int feedCount = getFeedCount() + 59;
            String userId = getUserId();
            return (feedCount * 59) + (userId == null ? 43 : userId.hashCode());
        }

        public void setFeedCount(int i) {
            this.feedCount = i;
        }

        public void setUserId(String str) {
            this.userId = str;
        }

        public String toString() {
            return "Status.FeedFriendLog(userId=" + getUserId() + ", feedCount=" + getFeedCount() + ")";
        }

        public String getUserId() {
            return this.userId;
        }

        public int getFeedCount() {
            return this.feedCount;
        }

        public FeedFriendLog() {
        }

        public FeedFriendLog(String str) {
            this.userId = str;
        }
    }

    private static class VisitFriendLog {
        String userId;
        int visitCount = 0;

        protected boolean canEqual(Object obj) {
            return obj instanceof VisitFriendLog;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof VisitFriendLog)) {
                return false;
            }
            VisitFriendLog visitFriendLog = (VisitFriendLog) obj;
            if (!visitFriendLog.canEqual(this) || getVisitCount() != visitFriendLog.getVisitCount()) {
                return false;
            }
            String userId = getUserId();
            String userId2 = visitFriendLog.getUserId();
            return userId != null ? userId.equals(userId2) : userId2 == null;
        }

        public int hashCode() {
            int visitCount = getVisitCount() + 59;
            String userId = getUserId();
            return (visitCount * 59) + (userId == null ? 43 : userId.hashCode());
        }

        public void setUserId(String str) {
            this.userId = str;
        }

        public void setVisitCount(int i) {
            this.visitCount = i;
        }

        public String toString() {
            return "Status.VisitFriendLog(userId=" + getUserId() + ", visitCount=" + getVisitCount() + ")";
        }

        public String getUserId() {
            return this.userId;
        }

        public int getVisitCount() {
            return this.visitCount;
        }

        public VisitFriendLog() {
        }

        public VisitFriendLog(String str) {
            this.userId = str;
        }
    }

    private static class StallShareIdLog {
        String shareId;
        String userId;

        protected boolean canEqual(Object obj) {
            return obj instanceof StallShareIdLog;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof StallShareIdLog)) {
                return false;
            }
            StallShareIdLog stallShareIdLog = (StallShareIdLog) obj;
            if (!stallShareIdLog.canEqual(this)) {
                return false;
            }
            String userId = getUserId();
            String userId2 = stallShareIdLog.getUserId();
            if (userId != null ? !userId.equals(userId2) : userId2 != null) {
                return false;
            }
            String shareId = getShareId();
            String shareId2 = stallShareIdLog.getShareId();
            return shareId != null ? shareId.equals(shareId2) : shareId2 == null;
        }

        public int hashCode() {
            String userId = getUserId();
            int iHashCode = userId == null ? 43 : userId.hashCode();
            String shareId = getShareId();
            return ((iHashCode + 59) * 59) + (shareId != null ? shareId.hashCode() : 43);
        }

        public void setShareId(String str) {
            this.shareId = str;
        }

        public void setUserId(String str) {
            this.userId = str;
        }

        public String toString() {
            return "Status.StallShareIdLog(userId=" + getUserId() + ", shareId=" + getShareId() + ")";
        }

        public String getUserId() {
            return this.userId;
        }

        public String getShareId() {
            return this.shareId;
        }

        public StallShareIdLog() {
        }

        public StallShareIdLog(String str, String str2) {
            this.userId = str;
            this.shareId = str2;
        }
    }

    private static class StallHelpedCountLog {
        String userId;
        int helpedCount = 0;
        int beHelpedCount = 0;

        protected boolean canEqual(Object obj) {
            return obj instanceof StallHelpedCountLog;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof StallHelpedCountLog)) {
                return false;
            }
            StallHelpedCountLog stallHelpedCountLog = (StallHelpedCountLog) obj;
            if (!stallHelpedCountLog.canEqual(this) || getHelpedCount() != stallHelpedCountLog.getHelpedCount() || getBeHelpedCount() != stallHelpedCountLog.getBeHelpedCount()) {
                return false;
            }
            String userId = getUserId();
            String userId2 = stallHelpedCountLog.getUserId();
            return userId != null ? userId.equals(userId2) : userId2 == null;
        }

        public int hashCode() {
            int helpedCount = ((getHelpedCount() + 59) * 59) + getBeHelpedCount();
            String userId = getUserId();
            return (helpedCount * 59) + (userId == null ? 43 : userId.hashCode());
        }

        public void setBeHelpedCount(int i) {
            this.beHelpedCount = i;
        }

        public void setHelpedCount(int i) {
            this.helpedCount = i;
        }

        public void setUserId(String str) {
            this.userId = str;
        }

        public String toString() {
            return "Status.StallHelpedCountLog(userId=" + getUserId() + ", helpedCount=" + getHelpedCount() + ", beHelpedCount=" + getBeHelpedCount() + ")";
        }

        public String getUserId() {
            return this.userId;
        }

        public int getHelpedCount() {
            return this.helpedCount;
        }

        public int getBeHelpedCount() {
            return this.beHelpedCount;
        }

        public StallHelpedCountLog() {
        }

        public StallHelpedCountLog(String str) {
            this.userId = str;
        }
    }
}
