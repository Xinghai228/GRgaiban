package io.github.lazyimmortal.sesame.entity;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CustomOption extends IdAndName {
    public CustomOption(String str, String str2) {
        this.id = str;
        this.name = str2;
    }

    public static List<CustomOption> getEcoLifeOptions() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new CustomOption("tick", "绿色行动打卡"));
        arrayList.add(new CustomOption("dish", "光盘行动打卡"));
        return arrayList;
    }

    public static List<CustomOption> getContinuousUseCardOptions() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new CustomOption("doubleClick", "使用限时双击卡和兑换使用31天双击卡"));
        arrayList.add(new CustomOption("robExpandCard", "先现倍率无生效则用最高倍收能量倍卡"));
        arrayList.add(new CustomOption("shield", "兑换和使用限时保护罩卡"));
        arrayList.add(new CustomOption("stealthCard", "兑换和使用限制隐身卡"));
        return arrayList;
    }

    public static List<CustomOption> getUseAccelerateToolOptions() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new CustomOption("useAccelerateToolContinue", "连续使用"));
        arrayList.add(new CustomOption("useAccelerateToolWhenMaxEmotion", "仅在满状态时使用"));
        return arrayList;
    }

    public static List<CustomOption> getAntFarmFamilyOptions() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new CustomOption("familySign", "每日签到"));
        arrayList.add(new CustomOption("familyFeed", "帮喂成员"));
        arrayList.add(new CustomOption("familyEatTogether", "美食请客"));
        arrayList.add(new CustomOption("familyClaimReward", "领取奖励"));
        arrayList.add(new CustomOption("deliverMsgSend", "道早安"));
        arrayList.add(new CustomOption("assignRights", "顶梁柱"));
        arrayList.add(new CustomOption("shareToFriends", "分享给好友"));
        return arrayList;
    }

    public static List<CustomOption> getAntDodoPropList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new CustomOption("COLLECT_TIMES_7_DAYS", "抽卡道具"));
        arrayList.add(new CustomOption("COLLECT_HISTORY_ANIMAL_7_DAYS", "历史图鉴随机卡道具"));
        arrayList.add(new CustomOption("COLLECT_TO_FRIEND_TIMES_7_DAYS", "抽好友卡道具"));
        arrayList.add(new CustomOption("UNIVERSAL_CARD_7_DAYS", "万能卡道具"));
        return arrayList;
    }

    public static List<CustomOption> getAntDodoBookMedalOptions() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new CustomOption("generateBookMedal", "自动合成图鉴勋章"));
        arrayList.add(new CustomOption("collectHistoryAnimal", "自动收集历史物种"));
        return arrayList;
    }

    public static List<CustomOption> getAntInsuranceOptions() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new CustomOption("beanSignIn", "安心豆签到"));
        arrayList.add(new CustomOption("beanExchangeGoldenTicket", "安心豆兑换黄金票"));
        arrayList.add(new CustomOption("beanExchangeBubbleBoost", "安心豆兑换时光加速器"));
        arrayList.add(new CustomOption("gainSumInsured", "保障金领取"));
        return arrayList;
    }
}
