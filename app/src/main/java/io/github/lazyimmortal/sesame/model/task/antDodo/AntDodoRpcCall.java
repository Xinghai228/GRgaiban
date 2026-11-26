package io.github.lazyimmortal.sesame.model.task.antDodo;

import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.util.RandomUtil;

/* JADX INFO: loaded from: classes.dex */
public class AntDodoRpcCall {
    public static final String VERSION = "20241203";

    public static String queryAnimalStatus() {
        return ApplicationHook.requestString("alipay.antdodo.rpc.h5.queryAnimalStatus", "[{\"source\":\"chInfo_ch_appcenter__chsub_9patch\"}]");
    }

    public static String homePage() {
        return ApplicationHook.requestString("alipay.antdodo.rpc.h5.homePage", "[{}]");
    }

    public static String taskEntrance() {
        return ApplicationHook.requestString("alipay.antdodo.rpc.h5.taskEntrance", "[{\"statusList\":[\"TODO\",\"FINISHED\"]}]");
    }

    public static String collect() {
        return ApplicationHook.requestString("alipay.antdodo.rpc.h5.collect", "[{}]");
    }

    public static String taskList() {
        return ApplicationHook.requestString("alipay.antdodo.rpc.h5.taskList", "[{\"version\":\"20241203\"}]");
    }

    public static String finishTask(String str, String str2) {
        String uniqueId = getUniqueId();
        return ApplicationHook.requestString("com.alipay.antiep.finishTask", "[{\"outBizNo\":\"" + uniqueId + "\",\"requestType\":\"rpc\",\"sceneCode\":\"" + str + "\",\"source\":\"af-biodiversity\",\"taskType\":\"" + str2 + "\",\"uniqueId\":\"" + uniqueId + "\"}]");
    }

    private static String getUniqueId() {
        return String.valueOf(System.currentTimeMillis()) + RandomUtil.nextLong();
    }

    public static String receiveTaskAward(String str, String str2) {
        return ApplicationHook.requestString("com.alipay.antiep.receiveTaskAward", "[{\"ignoreLimit\":0,\"requestType\":\"rpc\",\"sceneCode\":\"" + str + "\",\"source\":\"af-biodiversity\",\"taskType\":\"" + str2 + "\"}]");
    }

    public static String propList() {
        return ApplicationHook.requestString("alipay.antdodo.rpc.h5.propList", "[{}]");
    }

    public static String consumeProp(String str, String str2) {
        return ApplicationHook.requestString("alipay.antdodo.rpc.h5.consumeProp", "[{\"propId\":\"" + str + "\",\"propType\":\"" + str2 + "\"}]");
    }

    public static String consumeProp(String str, String str2, String str3) {
        return ApplicationHook.requestString("alipay.antdodo.rpc.h5.consumeProp", "[{\"extendInfo\":{\"animalId\":\"" + str3 + "\"},\"propId\":\"" + str + "\",\"propType\":\"" + str2 + "\"}]");
    }

    public static String queryBookList() {
        return ApplicationHook.requestString("alipay.antdodo.rpc.h5.queryBookList", "[{\"pageSize\":18,\"v2\":\"true\"}]");
    }

    public static String queryBookList(int i, int i2) {
        return ApplicationHook.requestString("alipay.antdodo.rpc.h5.queryBookList", "[{\"pageSize\":" + i + ",\"pageStart\":\"" + i2 + "\",\"v2\":\"true\"}]");
    }

    public static String queryBookAnimalList(int i, int i2) {
        return ApplicationHook.requestString("alipay.antdodo.rpc.h5.queryBookAnimalList", "[{\"dangerLevelTag\":\"\",\"pageSize\":" + i + ",\"pageStart\":" + i2 + "}]");
    }

    public static String queryBookInfo(String str) {
        return ApplicationHook.requestString("alipay.antdodo.rpc.h5.queryBookInfo", "[{\"bookId\":\"" + str + "\"}]");
    }

    public static String generateBookMedal(String str) {
        return ApplicationHook.requestString("alipay.antdodo.rpc.h5.generateBookMedal", "[{\"bookId\":\"" + str + "\"}]");
    }

    public static String social(String str, String str2) {
        return ApplicationHook.requestString("alipay.antdodo.rpc.h5.social", "[{\"actionCode\":\"GIFT_TO_FRIEND\",\"source\":\"GIFT_TO_FRIEND_FROM_CC\",\"targetAnimalId\":\"" + str + "\",\"targetUserId\":\"" + str2 + "\",\"triggerTime\":\"" + System.currentTimeMillis() + "\"}]");
    }

    public static String queryFriend() {
        return ApplicationHook.requestString("alipay.antdodo.rpc.h5.queryFriend", "[{\"sceneCode\":\"EXCHANGE\"}]");
    }

    public static String collect(String str) {
        return ApplicationHook.requestString("alipay.antdodo.rpc.h5.collect", "[{\"targetUserId\":" + str + "}]");
    }

    public static String scratchCard(String str, String str2, String str3) {
        return ApplicationHook.requestString("alipay.antdodo.rpc.h5.scratchCard", "[{\"animalId\":\"" + str + "\",\"bookId\":\"" + str2 + "\",\"cardInstanceId\":\"" + str3 + "\"}]");
    }

    public static String queryMyCollection(String str) {
        return ApplicationHook.requestString("alipay.antdodo.rpc.h5.queryMyCollection", "[{\"extendAnimalId\":\"" + str + "\",\"pageSize\":18,\"pageStart\":\"0\"}]");
    }

    public static String exchange(String str, String str2, String str3, String str4) {
        return ApplicationHook.requestString("alipay.antdodo.rpc.h5.exchange", "[{\"animalId\":\"" + str + "\",\"targetAnimalId\":\"" + str2 + "\",\"targetCardInstanceId\":\"" + str3 + "\",\"targetUserId\":\"" + str4 + "\"}]");
    }

    public static String queryMyAchievement() {
        return ApplicationHook.requestString("alipay.antdodo.rpc.h5.queryMyAchievement", "[{}]");
    }

    public static String queryMedalAndConfig() {
        return ApplicationHook.requestString("alipay.antdodo.rpc.h5.queryMedalAndConfig", "[{\"calculateV2\":true}]");
    }
}
