package io.github.lazyimmortal.sesame.model.task.omegakoiTown;

import io.github.lazyimmortal.sesame.data.ModelFields;
import io.github.lazyimmortal.sesame.data.ModelGroup;
import io.github.lazyimmortal.sesame.data.RuntimeInfo;
import io.github.lazyimmortal.sesame.data.task.ModelTask;
import io.github.lazyimmortal.sesame.model.base.TaskCommon;
import io.github.lazyimmortal.sesame.util.Log;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class OmegakoiTown extends ModelTask {
    private static final String TAG = "OmegakoiTown";

    public enum RewardType {
        gold,
        diamond,
        dyestuff,
        rubber,
        glass,
        certificate,
        shipping,
        tpuPhoneCaseCertificate,
        glassPhoneCaseCertificate,
        canvasBagCertificate,
        notebookCertificate,
        box,
        paper,
        cotton;

        public static final CharSequence[] rewardNames = {"金币", "钻石", "颜料", "橡胶", "玻璃", "合格证", "包邮券", "TPU手机壳合格证", "玻璃手机壳合格证", "帆布袋合格证", "记事本合格证", "快递包装盒", "纸张", "棉花"};

        public CharSequence rewardName() {
            return rewardNames[ordinal()];
        }
    }

    public enum HouseType {
        houseTrainStation,
        houseStop,
        houseBusStation,
        houseGas,
        houseSchool,
        houseService,
        houseHospital,
        housePolice,
        houseBank,
        houseRecycle,
        houseWasteTreatmentPlant,
        houseMetro,
        houseKfc,
        houseManicureShop,
        housePhoto,
        house5g,
        houseGame,
        houseLucky,
        housePrint,
        houseBook,
        houseGrocery,
        houseScience,
        housemarket1,
        houseMcd,
        houseStarbucks,
        houseRestaurant,
        houseFruit,
        houseDessert,
        houseClothes,
        zhiketang,
        houseFlower,
        houseMedicine,
        housePet,
        houseChick,
        houseFamilyMart,
        houseHouse,
        houseFlat,
        houseVilla,
        houseResident,
        housePowerPlant,
        houseWaterPlant,
        houseDailyChemicalFactory,
        houseToyFactory,
        houseSewageTreatmentPlant,
        houseSports,
        houseCinema,
        houseCotton,
        houseMarket,
        houseStadium,
        houseHotel,
        housebusiness,
        houseOrchard,
        housePark,
        houseFurnitureFactory,
        houseChipFactory,
        houseChemicalPlant,
        houseThermalPowerPlant,
        houseExpressStation,
        houseDormitory,
        houseCanteen,
        houseAdministrationBuilding,
        houseGourmetPalace,
        housePaperMill,
        houseAuctionHouse,
        houseCatHouse,
        houseStarPickingPavilion;

        public static final CharSequence[] houseNames = {"火车站", "停车场", "公交站", "加油站", "学校", "服务大厅", "医院", "警察局", "银行", "回收站", "垃圾处理厂", "地铁站", "快餐店", "美甲店", "照相馆", "移动营业厅", "游戏厅", "运气屋", "打印店", "书店", "杂货店", "科普馆", "菜场", "汉堡店", "咖啡厅", "餐馆", "水果店", "甜品店", "服装店", "支课堂", "花店", "药店", "宠物店", "庄园", "全家便利店", "平房", "公寓", "别墅", "居民楼", "风力发电站", "自来水厂", "日化厂", "玩具厂", "污水处理厂", "体育馆", "电影院", "新疆棉花厂", "超市", "游泳馆", "酒店", "商场", "果园", "公园", "家具厂", "芯片厂", "化工厂", "火电站", "快递驿站", "宿舍楼", "食堂", "行政楼", "美食城", "造纸厂", "拍卖行", "喵小馆", "神秘研究所"};

        public CharSequence houseName() {
            return houseNames[ordinal()];
        }
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public String getName() {
        return "小镇";
    }

    @Override // io.github.lazyimmortal.sesame.data.Model
    public ModelGroup getGroup() {
        return ModelGroup.OTHER;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public ModelFields getFields() {
        return new ModelFields();
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public Boolean check() {
        if (TaskCommon.IS_ENERGY_TIME.booleanValue()) {
            return false;
        }
        return Boolean.valueOf(System.currentTimeMillis() - RuntimeInfo.getInstance().getLong("omegakoiTown", 0L).longValue() >= 21600000);
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public void run() {
        try {
            RuntimeInfo.getInstance().put("omegakoiTown", Long.valueOf(System.currentTimeMillis()));
            getUserTasks();
            getSignInStatus();
            houseProduct();
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "start.run err:");
            Log.printStackTrace(str, th);
        }
    }

    private void getUserTasks() {
        try {
            String userTasks = OmegakoiTownRpcCall.getUserTasks();
            JSONObject jSONObject = new JSONObject(userTasks);
            if (jSONObject.optBoolean("success")) {
                JSONArray jSONArray = jSONObject.getJSONObject("result").getJSONArray("tasks");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    boolean z = jSONObject2.getBoolean("done");
                    boolean z2 = jSONObject2.getBoolean("hasRewarded");
                    if (z && !z2) {
                        JSONObject jSONObject3 = jSONObject2.getJSONObject("task");
                        String string = jSONObject3.getString("name");
                        String string2 = jSONObject3.getString("taskId");
                        if (!"dailyBuild".equals(string2)) {
                            int i2 = jSONObject3.getJSONObject("reward").getInt("amount");
                            String string3 = jSONObject3.getJSONObject("reward").getString("itemId");
                            try {
                                RewardType rewardTypeValueOf = RewardType.valueOf(string3);
                                if (new JSONObject(OmegakoiTownRpcCall.triggerTaskReward(string2)).optBoolean("success")) {
                                    Log.other("小镇任务🌇[" + string + "]#" + i2 + "[" + ((Object) rewardTypeValueOf.rewardName()) + "]");
                                }
                            } catch (Throwable unused) {
                                Log.i(TAG, "spec RewardType:" + string3 + ";未知的类型");
                            }
                        }
                    }
                }
                return;
            }
            Log.record(jSONObject.getString("resultDesc"));
            Log.i(userTasks);
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "getUserTasks err:");
            Log.printStackTrace(str, th);
        }
    }

    private void getSignInStatus() {
        try {
            JSONObject jSONObject = new JSONObject(OmegakoiTownRpcCall.getSignInStatus());
            if (!jSONObject.optBoolean("success") || jSONObject.getJSONObject("result").getBoolean("signed")) {
                return;
            }
            JSONObject jSONObject2 = new JSONObject(OmegakoiTownRpcCall.signIn()).getJSONObject("result").getJSONArray("diffItems").getJSONObject(0);
            Log.other("小镇签到[" + ((Object) RewardType.valueOf(jSONObject2.getString("itemId")).rewardName()) + "]#" + jSONObject2.getInt("amount"));
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "getSignInStatus err:");
            Log.printStackTrace(str, th);
        }
    }

    private void houseProduct() {
        JSONArray jSONArrayOptJSONArray;
        try {
            String strHouseProduct = OmegakoiTownRpcCall.houseProduct();
            JSONObject jSONObject = new JSONObject(strHouseProduct);
            if (jSONObject.optBoolean("success")) {
                JSONArray jSONArray = jSONObject.getJSONObject("result").getJSONArray("userHouses");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    JSONObject jSONObject3 = jSONObject2.getJSONObject("extraInfo");
                    if (jSONObject3.has("toBeCollected") && (jSONArrayOptJSONArray = jSONObject3.optJSONArray("toBeCollected")) != null && jSONArrayOptJSONArray.length() > 0) {
                        double d = jSONArrayOptJSONArray.getJSONObject(0).getDouble("amount");
                        if (d >= 500.0d) {
                            String string = jSONObject2.getString("houseId");
                            JSONObject jSONObject4 = new JSONObject(OmegakoiTownRpcCall.collect(string, jSONObject2.getLong("id")));
                            if (jSONObject4.optBoolean("success")) {
                                Log.other("小镇收金🌇[" + ((Object) HouseType.valueOf(string).houseName()) + "]#" + String.format("%.2f", Double.valueOf(d)) + ((Object) RewardType.valueOf(jSONObject4.getJSONObject("result").getJSONArray("rewards").getJSONObject(0).getString("itemId")).rewardName()));
                            }
                        }
                    }
                }
                return;
            }
            Log.record(jSONObject.getString("resultDesc"));
            Log.i(strHouseProduct);
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "getUserTasks err:");
            Log.printStackTrace(str, th);
        }
    }
}
