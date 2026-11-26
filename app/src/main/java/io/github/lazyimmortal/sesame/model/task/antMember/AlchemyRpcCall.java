package io.github.lazyimmortal.sesame.model.task.antMember;

import io.github.lazyimmortal.sesame.hook.ApplicationHook;

/* JADX INFO: loaded from: classes.dex */
public class AlchemyRpcCall {
    public static String queryHome() {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.AlchemyRpcManager.queryHome", "[{}]");
    }

    public static String alchemy() {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.AlchemyRpcManager.alchemy", "[{\"outerNewHand\":false}]");
    }

    public static String queryEntryList() {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.AlchemyRpcManager.queryEntryList", "[{\"version\":\"2025-10-22\"}]");
    }

    public static String claimAward() {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.AlchemyRpcManager.claimAward", "[{}]");
    }

    public static String queryTimeLimitedTask() {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.pointtask.TimeLimitedTaskRpcManager.queryTask", "[{}]");
    }

    public static String completeTimeLimitedTask(String str) {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.pointtask.TimeLimitedTaskRpcManager.completeTask", "[{\"templateId\":\"" + str + "\"}]");
    }

    public static String queryTreasureBox() {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.AlchemyTreasureBoxRpcManager.query", "[{}]");
    }

    public static String queryGoldenBean() {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.AlchemyRpcManager.queryGoldenBean", "[{}]");
    }

    public static String queryAvailableItems() {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.ItemRpcManager.queryAvailableItems", "[{\"bizScene\":\"ALCHEMY\"}]");
    }

    public static String useItem(String str, String str2) {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.ItemRpcManager.useItem", "[{\"itemId\":\"" + str + "\",\"itemType\":\"" + str2 + "\"}]");
    }

    public static String queryPointTreasureBox() {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.PointHomeRpcManager.queryTreasureBox", "[{}]");
    }

    public static String openPointTreasureBox() {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmmemberop.biz.rpc.PointHomeRpcManager.openTreasureBox", "[{}]");
    }

    public static String collectCreditFeedback() {
        return ApplicationHook.requestString("com.antgroup.zmxy.zmcustprod.biz.rpc.home.creditaccumulate.api.CreditAccumulateRpcManager.collectCreditFeedback", "[{\"collectAll\":true,\"status\":\"UNCLAIMED\"}]");
    }
}
