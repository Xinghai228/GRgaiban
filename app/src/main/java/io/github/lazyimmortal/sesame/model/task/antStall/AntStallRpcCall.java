package io.github.lazyimmortal.sesame.model.task.antStall;

import android.util.Base64;
import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.util.RandomUtil;
import io.github.lazyimmortal.sesame.util.Status;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AntStallRpcCall {
    public static final String VERSION = "0.1.2409191354.26";

    public static String home() {
        return ApplicationHook.requestString("com.alipay.antstall.self.home", "[{\"arouseAppParams\":{},\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String selfHome(String str) {
        if (str.isEmpty()) {
            return home();
        }
        return ApplicationHook.requestString("com.alipay.antstall.self.home", "[{\"source\":\"ANTFARM\",\"villageType\":\"HAIYANG\"}]");
    }

    public static String settle(String str, double d) {
        return ApplicationHook.requestString("com.alipay.antstall.self.settle", "[{\"assetId\":\"" + str + "\",\"coinType\":\"MASTER\",\"settleCoin\":" + d + ",\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String shopList() {
        return ApplicationHook.requestString("com.alipay.antstall.shop.list", "[{\"freeTop\":false,\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String preOneKeyClose() {
        return ApplicationHook.requestString("com.alipay.antstall.user.shop.close.preOneKey", "[{\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String oneKeyClose() {
        return ApplicationHook.requestString("com.alipay.antstall.user.shop.oneKeyClose", "[{\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String shopClosePre(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antstall.user.shop.close.pre", "[{\"billNo\":\"" + str2 + "\",\"shopId\":\"" + str + "\",\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String shopClose(String str) {
        return ApplicationHook.requestString("com.alipay.antstall.user.shop.close", "[{\"shopId\":\"" + str + "\",\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String oneKeyOpen() {
        return ApplicationHook.requestString("com.alipay.antstall.user.shop.oneKeyOpen", "[{\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String shopOpen(String str, String str2, String str3) {
        return ApplicationHook.requestString("com.alipay.antstall.user.shop.open", "[{\"friendSeatId\":\"" + str + "\",\"friendUserId\":\"" + str2 + "\",\"shopId\":\"" + str3 + "\",\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String rankCoinDonate() {
        return ApplicationHook.requestString("com.alipay.antstall.rank.coin.donate", "[{\"source\":\"ANTFARM\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String friendHome(String str) {
        return ApplicationHook.requestString("com.alipay.antstall.friend.home", "[{\"arouseAppParams\":{},\"friendUserId\":\"" + str + "\",\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String taskList() {
        if (Status.hasFlagToday("antstall::blockTask").booleanValue()) {
            return null;
        }
        return ApplicationHook.requestString("com.alipay.antstall.task.list", "[{\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String signToday() {
        return ApplicationHook.requestString("com.alipay.antstall.sign.today", "[{\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String finishTask(String str) {
        return ApplicationHook.requestString("com.alipay.antiep.finishTask", "[{\"outBizNo\":\"" + (str + "_" + System.currentTimeMillis()) + "\",\"requestType\":\"RPC\",\"sceneCode\":\"ANTSTALL_TASK\",\"source\":\"AST\",\"systemType\":\"android\",\"taskType\":\"" + str + "\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String xlightPlugin() {
        return ApplicationHook.requestString("com.alipay.adexchange.ad.facade.xlightPlugin", "[{\"positionRequest\":{\"extMap\":{\"xlightPlayInstanceId\":\"300004\"},\"referInfo\":{},\"spaceCode\":\"ANT_FARM_NEW_VILLAGE\"},\"sdkPageInfo\":{\"adComponentType\":\"FEEDS\",\"adComponentVersion\":\"4.11.13\",\"enableFusion\":true,\"networkType\":\"WIFI\",\"pageFrom\":\"ch_url-https://68687809.h5app.alipay.com/www/game.html\",\"pageNo\":1,\"pageUrl\":\"https://render.alipay.com/p/yuyan/180020010001256918/multi-stage-task.html?caprMode=sync&spaceCodeFeeds=ANT_FARM_NEW_VILLAGE&usePlayLink=true&xlightPlayInstanceId=300004\",\"session\":\"u_54b721d9fffd6_1904b8eba8f\",\"unionAppId\":\"2060090000304921\",\"usePlayLink\":\"true\",\"xlightSDKType\":\"h5\",\"xlightSDKVersion\":\"4.11.13\"}}]");
    }

    public static String finish(String str, JSONObject jSONObject) {
        return ApplicationHook.requestString("com.alipay.adtask.biz.mobilegw.service.interaction.finish", "[{\"extendInfo\":{\"iepTaskSceneCode\":\"ANTSTALL_TASK\",\"iepTaskType\":\"ANTSTALL_XLIGHT_VARIABLE_AWARD\"},\"playBizId\":\"" + str + "\",\"playEventInfo\":" + jSONObject + ",\"source\":\"adx\" }]");
    }

    public static String queryCallAppSchema(String str) {
        return ApplicationHook.requestString("alipay.antmember.callApp.queryCallAppSchema", "[{\"sceneCode\":\"" + str + "\" }]");
    }

    public static String receiveTaskAward(String str) {
        return ApplicationHook.requestString("com.alipay.antiep.receiveTaskAward", "[{\"ignoreLimit\":true,\"requestType\":\"RPC\",\"sceneCode\":\"ANTSTALL_TASK\",\"source\":\"AST\",\"systemType\":\"android\",\"taskType\":\"" + str + "\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String taskFinish(String str) {
        return ApplicationHook.requestString("com.alipay.antstall.task.finish", "[{\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"taskType\":\"" + str + "\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String taskAward(String str, String str2, String str3) {
        return ApplicationHook.requestString("com.alipay.antstall.task.award", "[{\"amount\":" + str + ",\"prizeId\":\"" + str2 + "\",\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"taskType\":\"" + str3 + "\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String taskBenefit() {
        return ApplicationHook.requestString("com.alipay.antstall.task.benefit", "[{\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String collectManure() {
        return ApplicationHook.requestString("com.alipay.antstall.manure.collectManure", "[{\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String queryManureInfo() {
        return ApplicationHook.requestString("com.alipay.antstall.manure.queryManureInfo", "[{\"queryManureType\":\"ANTSTALL\",\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String letterList() {
        return ApplicationHook.requestString("com.alipay.antstall.letter.list", "[{\"source\":\"ANTFARM\"}]");
    }

    public static String projectList() {
        return ApplicationHook.requestString("com.alipay.antstall.project.list", "[{\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String projectDetail(String str) {
        return ApplicationHook.requestString("com.alipay.antstall.project.detail", "[{\"projectId\":\"" + str + "\",\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String projectDonate(String str) {
        return ApplicationHook.requestString("com.alipay.antstall.project.donate", "[{\"bizNo\":\"" + UUID.randomUUID().toString() + "\",\"projectId\":\"" + str + "\",\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String roadmap() {
        return ApplicationHook.requestString("com.alipay.antstall.village.roadmap", "[{\"source\":\"ANTFARM\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String nextVillage() {
        return ApplicationHook.requestString("com.alipay.antstall.user.ast.next.village", "[{\"source\":\"ANTFARM\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String rankInviteRegister() {
        return ApplicationHook.requestString("com.alipay.antstall.rank.invite.register", "[{\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String friendInviteRegister(String str) {
        return ApplicationHook.requestString("com.alipay.antstall.friend.invite.register", "[{\"friendUserId\":\"" + str + "\",\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String shareP2P() {
        return ApplicationHook.requestString("com.alipay.antiep.shareP2P", "[{\"requestType\":\"RPC\",\"sceneCode\":\"ANTSTALL_P2P_SHARER\",\"source\":\"ANTSTALL\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String achieveBeShareP2P(String str) {
        return ApplicationHook.requestString("com.alipay.antiep.achieveBeShareP2P", "[{\"requestType\":\"RPC\",\"sceneCode\":\"ANTSTALL_P2P_SHARER\",\"shareId\":\"" + Base64.encodeToString((str + "-" + RandomUtil.getRandom(5) + "ANUTSALTML_2PA_SHARE").getBytes(), 2) + "\",\"source\":\"ANTSTALL\"}]");
    }

    public static String shopSendBackPre(String str, String str2, String str3, String str4) {
        return ApplicationHook.requestString("com.alipay.antstall.friend.shop.sendback.pre", "[{\"billNo\":\"" + str + "\",\"seatId\":\"" + str2 + "\",\"shopId\":\"" + str3 + "\",\"shopUserId\":\"" + str4 + "\",\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String shopSendBack(String str) {
        return ApplicationHook.requestString("com.alipay.antstall.friend.shop.sendback", "[{\"seatId\":\"" + str + "\",\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String rankInviteOpen() {
        return ApplicationHook.requestString("com.alipay.antstall.rank.invite.open", "[{\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String oneKeyInviteOpenShop(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antstall.user.shop.oneKeyInviteOpenShop", "[{\"friendUserId\":\"" + str + "\",\"mySeatId\":\"" + str2 + "\",\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String dynamicLoss() {
        return ApplicationHook.requestString("com.alipay.antstall.dynamic.loss", "[{\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String throwManure(JSONArray jSONArray) {
        return ApplicationHook.requestString("com.alipay.antstall.manure.throwManure", "[{\"dynamicList\":" + jSONArray + ",\"sendMsg\":false,\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String settleReceivable() {
        return ApplicationHook.requestString("com.alipay.antstall.self.settle.receivable", "[{\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }

    public static String nextTicketFriend() {
        return ApplicationHook.requestString("com.alipay.antstall.friend.nextTicketFriend", "[{\"source\":\"ANTFARM\"}]");
    }

    public static String pasteTicket(String str, String str2, String str3, String str4, String str5) {
        return ApplicationHook.requestString("com.alipay.antstall.friend.paste.ticket", "[{\"billNo\":\"" + str + "\",\"seatId\":\"" + str2 + "\",\"shopId\":\"" + str3 + "\",\"shopUserId\":\"" + str4 + "\",\"seatUserId\": \"" + str5 + "\",\"source\":\"ch_appcenter__chsub_9patch\",\"systemType\":\"android\",\"version\":\"0.1.2409191354.26\"}]");
    }
}
