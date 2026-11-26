package io.github.lazyimmortal.sesame.model.task.antForest;

import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.util.RandomUtil;

/* JADX INFO: loaded from: classes.dex */
public class GreenLifeRpcCall {
    public static String consultForSendEnergyByAction(String str) {
        return ApplicationHook.requestString("alipay.bizfmcg.greenlife.consultForSendEnergyByAction", "[{\"sourceType\":\"" + str + "\"}]");
    }

    public static String sendEnergyByAction(String str) {
        return ApplicationHook.requestString("alipay.bizfmcg.greenlife.sendEnergyByAction", "[{\"actionType\":\"GOODS_BROWSE\",\"requestId\":\"" + RandomUtil.getRandomString(8) + "\",\"sourceType\":\"" + str + "\"}]");
    }

    public static String retrieveCurrentActivity() {
        return ApplicationHook.requestString("alipay.bizfmcg.greenlife.retrieveCurrentActivity", "[{}]");
    }

    public static String retrieveHotActivityPrize(String str) {
        return ApplicationHook.requestString("alipay.bizfmcg.greenlife.retrieveHotActivityPrize", "[{\"activityId\":\"" + str + "\"}]");
    }

    public static String finishCurrentTask(String str) {
        return ApplicationHook.requestString("alipay.bizfmcg.greenlife.finishCurrentTask", "[{\"taskTemplateId\":\"" + str + "\"}]");
    }
}
