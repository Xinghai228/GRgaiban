package io.github.lazyimmortal.sesame.model.base;

import androidx.core.os.EnvironmentCompat;
import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.model.normal.base.BaseModel;
import io.github.lazyimmortal.sesame.model.task.antGame.MiniGameVendorReporter;
import io.github.lazyimmortal.sesame.mtop.bridge.MtopCaller;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.MessageUtil;
import io.github.lazyimmortal.sesame.util.Status;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import io.github.lazyimmortal.sesame.util.idMap.MiniGameTaskListMap;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class TaskAlternative {
    private static final String DEFAULT_CH_INFO = "zfbhy_mc_wkenoz66";
    private static final String FARM_REFERER = "https://pages-fast.m.taobao.com/wow/z/hdwk/farm-ssr/tmfarm";
    private static final String HOME_SOURCE = "zmxy_mc_xctsup08";
    private static final int MAX_RIGHTS_PER_TASK = 20;
    private static final int MAX_TIMES_PER_ACTION = 30;
    private static final String PALADINX_VERSION = "2.19.50";
    private static final String TAG = "TaskAlternative";
    private static final String TAOBAO_REFERER = "https://pages-fast.m.taobao.com/wow/z/tblife/achievement-i/JX4ezmspfN8txPMWyawe";
    private static final String TB_TTID = "1588718881807@taobao_android_10.68.10";
    private static final Random RANDOM = new Random();
    private static final String[] TAOBAO_SELF_SCENES = {"ANTORCHARD_DRAW_TIMES", "ANTFOREST_ACTIVITY_DRAW_TASK", "FUGUO", "ORCHARD", "ANTFOREST_VITALITY_TASK", "ANTFARM_ORCHARD_TASK_V2", "ANTORCHARD_DRAW_TIMES_TASK", "ANTFOREST_NORMAL_DRAW_TASK", "FOREST_CONTINUOUS_COLLECT_ENERGY_7", "2026cc_1000lyb_A&h", "ANTFARM_pay_6", "20260525_chouchoulechoukuan2", "IP_chouchoule_juankuan", "HEART_DONATE", "HEART_DONATION_ADVANCED_FOOD_V2", "MYZY_pay_xjsl_xddq", "monthlyCard", "freeze"};
    private static final String[] USER_TOKEN_KEYS = {"userToken", "token", "user_token", "tToken", "Token"};
    private static final String[] LONG_KEYWORDS = {"xiadan", "zhifu", "goumai", "jiaofei", "huankuan", "chongzhi", "kuaidi", "huishou", "jiudian", "juankuan", "choukuan"};
    private static final String[] SHORT_KEYWORDS = {"pay", "charge", "zulin", "zuche", "dache", "jipiao", "yuebao"};
    private static final Pattern CZ_AMOUNT = Pattern.compile("_cz[0-9]");
    private static final String[] REAL_BEHAVIOR_KEYWORDS = {"支付", "缴费", "月卡", "捐款", "捐赠", "回收", "下单", "充值", "外卖", "火车票", "购票", "出行", "打车", "寄件", "点单", "退税", "发票"};
    private static final String[] BROWSE_TITLE_KEYWORDS = {"逛", "浏览", "签到", "参观", "看一看"};
    private static final Set<String> DONE_EXTRA_SCENES = new HashSet();
    private static final Set<String> DONE_RECOMMEND_APPS = new HashSet();
    private static String extraSceneDay = "";

    public static int rightsTimesToDo(int i, int i2) {
        if (i2 <= 0 || i2 <= i || i2 > 20) {
            return 1;
        }
        return i2 - i;
    }

    private TaskAlternative() {
    }

    public static boolean isTransactionTask(String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        for (String str2 : LONG_KEYWORDS) {
            if (lowerCase.contains(str2)) {
                return true;
            }
        }
        for (String str3 : SHORT_KEYWORDS) {
            if (Pattern.compile("(?<![a-z])" + str3 + "(?![a-z])").matcher(lowerCase).find()) {
                return true;
            }
        }
        return lowerCase.contains("game_cz") || CZ_AMOUNT.matcher(lowerCase).find();
    }

    private static boolean isBrowseTask(GameTask gameTask) {
        for (String str : BROWSE_TITLE_KEYWORDS) {
            if (gameTask.title.contains(str)) {
                String str2 = gameTask.taskMode;
                if ("NORMAL".equals(str2) || "VIEW".equals(str2) || "LABEL".equals(str2) || "FREE".equals(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    private static boolean isThirdPartyJumpTask(GameTask gameTask) {
        if (gameTask.isCallAppOutTask() || isExplicitJumpLink(gameTask.targetUrl)) {
            return true;
        }
        if (gameTask.taskPlayType.isEmpty()) {
            return isThirdPartyJump(gameTask.targetUrl);
        }
        return false;
    }

    private static boolean isExplicitJumpLink(String str) {
        return str != null && (str.contains("jumpAction=") || str.contains("external_task_param="));
    }

    private static boolean isGameTaskLike(GameTask gameTask) {
        if (gameTask.targetUrl.isEmpty() || gameTask.isCallAppOutTask() || gameTask.taskPlayType.contains("VISIT_FLOAT_BALL")) {
            return false;
        }
        return !urlParam(gameTask.targetUrl, "appId").isEmpty();
    }

    private static boolean isRealBehaviorTask(GameTask gameTask) {
        String str = gameTask.title + "|" + gameTask.desc;
        for (String str2 : REAL_BEHAVIOR_KEYWORDS) {
            if (str.contains(str2)) {
                return true;
            }
        }
        return false;
    }

    public static final class GameTask {
        private Runnable beforeGameLink;
        private final String desc;
        private final String listTitle;
        private final String status;
        private final String targetUrl;
        private final String title;
        private String bizKey = "";
        private String taskSceneCode = "";
        private String sceneCode = "";
        private String source = "";
        private String version = "";
        private String taskMode = "";
        private String taskPlayType = "";
        private int rightsTimes = -1;
        private int rightsTimesLimit = -1;
        private int taskRemain = -1;

        public GameTask(String str, String str2, String str3, String str4, String str5) {
            this.listTitle = str;
            this.title = str2 == null ? "" : str2;
            this.desc = str3 == null ? "" : str3;
            this.targetUrl = str4 == null ? "" : str4;
            this.status = str5 == null ? "" : str5;
        }

        public GameTask bizKey(String str) {
            if (str == null) {
                str = "";
            }
            this.bizKey = str;
            return this;
        }

        public GameTask taskSceneCode(String str) {
            if (str == null) {
                str = "";
            }
            this.taskSceneCode = str;
            return this;
        }

        public GameTask scene(String str, String str2) {
            if (str != null && !str.isEmpty()) {
                this.sceneCode = str;
            }
            if (str2 != null && !str2.isEmpty()) {
                this.source = str2;
            }
            return this;
        }

        public GameTask version(String str) {
            if (str != null && !str.isEmpty()) {
                this.version = str;
            }
            return this;
        }

        public GameTask taskMode(String str) {
            if (str == null) {
                str = "";
            }
            this.taskMode = str;
            return this;
        }

        public GameTask taskPlayType(String str) {
            if (str == null) {
                str = "";
            }
            this.taskPlayType = str;
            return this;
        }

        public boolean isCallAppOutTask() {
            return this.taskPlayType.contains("CALL_APP_OUT_TASK");
        }

        public GameTask rights(int i, int i2) {
            this.rightsTimes = i;
            this.rightsTimesLimit = i2;
            return this;
        }

        public GameTask taskRemain(int i) {
            this.taskRemain = i;
            return this;
        }

        public GameTask beforeGameLink(Runnable runnable) {
            this.beforeGameLink = runnable;
            return this;
        }

        public int pendingRounds() {
            int i = this.rightsTimesLimit;
            return Math.max(i > 0 ? Math.max(0, i - Math.max(0, this.rightsTimes)) : 0, Math.max(0, this.taskRemain));
        }

        public String name() {
            return MiniGameTaskListMap.name(this.title, this.desc);
        }
    }

    public static String firstNonEmpty(String... strArr) {
        for (String str : strArr) {
            if (str != null && !str.isEmpty()) {
                return str;
            }
        }
        return "";
    }

    public static boolean handleGameTask(GameTask gameTask) {
        if (MiniGameTaskListMap.isBlacklisted(gameTask.listTitle, gameTask.title)) {
            return false;
        }
        boolean zIsThirdPartyJumpTask = isThirdPartyJumpTask(gameTask);
        boolean z = isGameTaskLike(gameTask) || MiniGameTaskListMap.isGameTask(gameTask.listTitle, gameTask.title);
        if (!z && !zIsThirdPartyJumpTask) {
            return false;
        }
        if (!z && !zIsThirdPartyJumpTask && isBrowseTask(gameTask)) {
            return false;
        }
        int iPendingRounds = gameTask.pendingRounds();
        if ((!"TODO".equals(gameTask.status) && iPendingRounds <= 0) || gameTask.targetUrl.isEmpty()) {
            return false;
        }
        if (!"TODO".equals(gameTask.status)) {
            Log.i("游戏任务▶️[" + gameTask.name() + "]场景[" + MessageUtil.getTaskListName(gameTask.listTitle) + "]#状态=" + gameTask.status + "，剩余档位/进度=" + iPendingRounds);
        }
        MiniGameTaskListMap.add(gameTask.title, gameTask.desc, gameTask.listTitle);
        if (!BaseModel.isMiniGameTaskDisallowed(gameTask.title, gameTask.desc, gameTask.listTitle)) {
            if (isTransactionTask(gameTask.bizKey)) {
                Log.i("游戏任务⏭️跳过[" + gameTask.name() + "]#bizKey=" + gameTask.bizKey + "，交易/履约类不模拟");
                return true;
            }
            if (!isRealBehaviorTask(gameTask)) {
                if (hasExecuteQuota(gameTask.listTitle, gameTask.title, gameTask.desc) && completeByLink(gameTask)) {
                    recordExecuteQuota(gameTask.listTitle, gameTask.title, gameTask.desc);
                }
                return true;
            }
            Log.i("游戏任务⏭️跳过[" + gameTask.name() + "]#标题或描述属真实支付、缴费、出行、回收等行为类，不模拟");
            return true;
        }
        Log.i("游戏任务⏭️跳过[" + gameTask.name() + "]场景[" + MessageUtil.getTaskListName(gameTask.listTitle) + "]#已加入不允许执行列表");
        return true;
    }

    private static boolean takeSubmitQuota(GameTask gameTask) {
        Integer value = BaseModel.getMaxGameTaskSubmitPerDay().getValue();
        int iIntValue = value == null ? 0 : value.intValue();
        if (iIntValue <= 0) {
            Log.i("游戏任务⏭️[" + gameTask.name() + "]#每日最大执行次数为0，仅收集不执行");
            return false;
        }
        String str = "task|" + MiniGameTaskListMap.key(gameTask.name(), gameTask.listTitle);
        int gameTaskSubmitCountToday = Status.getGameTaskSubmitCountToday(str);
        if (gameTaskSubmitCountToday >= iIntValue) {
            Log.i("游戏任务⏭️[" + gameTask.name() + "]场景[" + MessageUtil.getTaskListName(gameTask.listTitle) + "]#今日执行已达上限[" + gameTaskSubmitCountToday + "/" + iIntValue + "]");
            return false;
        }
        Status.incrGameTaskSubmitToday(str);
        return true;
    }

    public static boolean takeExecuteQuota(String str, String str2, String str3) {
        return takeSubmitQuota(new GameTask(str, str2, str3, "", "TODO"));
    }

    public static boolean hasExecuteQuota(String str, String str2, String str3) {
        Integer value = BaseModel.getMaxGameTaskSubmitPerDay().getValue();
        int iIntValue = value == null ? 0 : value.intValue();
        String strName = MiniGameTaskListMap.name(str2, str3);
        if (iIntValue <= 0) {
            Log.i("游戏任务⏭️[" + strName + "]#每日最大执行次数为0，仅收集不执行");
            return false;
        }
        int gameTaskSubmitCountToday = Status.getGameTaskSubmitCountToday("task|" + MiniGameTaskListMap.key(strName, str));
        if (gameTaskSubmitCountToday < iIntValue) {
            return true;
        }
        Log.i("游戏任务⏭️[" + strName + "]场景[" + MessageUtil.getTaskListName(str) + "]#今日执行已达上限[" + gameTaskSubmitCountToday + "/" + iIntValue + "]");
        return false;
    }

    public static void recordExecuteQuota(String str, String str2, String str3) {
        Status.incrGameTaskSubmitToday("task|" + MiniGameTaskListMap.key(MiniGameTaskListMap.name(str2, str3), str));
    }

    public static boolean completeByLink(GameTask gameTask) {
        boolean zReport;
        String string;
        try {
            if (isThirdPartyJump(gameTask.targetUrl)) {
                return completeThirdPartyJump(gameTask);
            }
            String strUrlParam = urlParam(gameTask.targetUrl, "appId");
            if (strUrlParam.isEmpty()) {
                Log.i("游戏任务⏭️[" + gameTask.name() + "]#跳转链接无 appId，无法模拟完成");
                return false;
            }
            if (gameTask.beforeGameLink != null && !isThirdPartyJumpTask(gameTask)) {
                try {
                    gameTask.beforeGameLink.run();
                } catch (Throwable th) {
                    Log.i(TAG, "游戏任务🔗前置伪申报异常[" + gameTask.name() + "]");
                    Log.printStackTrace(TAG, th);
                }
            }
            String strUrlParam2 = urlParam(gameTask.targetUrl, "chInfo");
            if (strUrlParam2.isEmpty()) {
                strUrlParam2 = DEFAULT_CH_INFO;
            }
            String strChannelOf = channelOf(gameTask.targetUrl);
            String strUrlParam3 = urlParam(gameTask.targetUrl, "scene");
            if (strUrlParam3.isEmpty()) {
                strUrlParam3 = gameTask.sceneCode;
            }
            try {
                String strGameParam = gameParam(gameTask.targetUrl, "taskId");
                String strGameParam2 = gameParam(gameTask.targetUrl, "subScene");
                String strUrlParam4 = urlParam(gameTask.targetUrl, "channelTaskPassThrough");
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("appId", strUrlParam);
                jSONObject.put("chInfo", strUrlParam2);
                if (!strChannelOf.isEmpty()) {
                    jSONObject.put("channel", strChannelOf);
                }
                if (!strGameParam.isEmpty()) {
                    jSONObject.put("taskId", strGameParam);
                }
                if (!strGameParam2.isEmpty()) {
                    jSONObject.put("subScene", strGameParam2);
                }
                if (!strUrlParam4.isEmpty()) {
                    jSONObject.put("channelTaskPassThrough", strUrlParam4);
                }
                jSONObject.put("reqType", "START_APP_FIRST_REQ");
                jSONObject.put("scene", strUrlParam3);
                jSONObject.put("closeAd", false);
                jSONObject.put("deviceLevel", "high");
                jSONObject.put("unityDeviceLevel", "high");
                String strRequestString = requestString("com.alipay.gamecenteruprod.biz.rpc.queryGameComponent", "[" + jSONObject + "]");
                List<LadderAction> listLadderActionsOf = ladderActionsOf(strRequestString, strUrlParam);
                String[] strArrSubmitEnterAndFirstFrame = submitEnterAndFirstFrame(strUrlParam, strUrlParam2, strUrlParam3);
                TimeUtil.sleep(500L);
                boolean zSupports = MiniGameVendorReporter.supports(strUrlParam);
                if (zSupports) {
                    if (listLadderActionsOf == null) {
                        listLadderActionsOf = Collections.singletonList(new LadderAction("", Math.max(1, Math.min(MAX_TIMES_PER_ACTION, gameTask.pendingRounds()))));
                    } else if (gameTask.pendingRounds() > 0) {
                        String strResolveAction = MiniGameVendorReporter.resolveAction(strUrlParam, gameTask.name());
                        if (!strResolveAction.isEmpty()) {
                            LinkedHashMap linkedHashMap = new LinkedHashMap();
                            for (LadderAction ladderAction : listLadderActionsOf) {
                                linkedHashMap.put(ladderAction.code, Integer.valueOf(ladderAction.times));
                            }
                            int iMax = Math.max(1, Math.min(MAX_TIMES_PER_ACTION, gameTask.pendingRounds()));
                            Integer num = (Integer) linkedHashMap.get(strResolveAction);
                            if (num == null || iMax > num.intValue()) {
                                linkedHashMap.put(strResolveAction, Integer.valueOf(iMax));
                            }
                            listLadderActionsOf = new ArrayList();
                            for (Map.Entry entry : linkedHashMap.entrySet()) {
                                listLadderActionsOf.add(new LadderAction((String) entry.getKey(), ((Integer) entry.getValue()).intValue()));
                            }
                        }
                    }
                    if (listLadderActionsOf.isEmpty()) {
                        MessageUtil.logByTaskList(gameTask.listTitle, "游戏任务⏭️跳过[" + gameTask.name() + "]任务列表[" + MessageUtil.getTaskListName(gameTask.listTitle) + "]#阶梯任务已完成，无待推进进度");
                        zReport = false;
                    } else {
                        MessageUtil.logByTaskList(gameTask.listTitle, "游戏任务🔗开始完成[" + gameTask.name() + "]任务列表[" + MessageUtil.getTaskListName(gameTask.listTitle) + "]#登录厂商并上报行为，待上报动作=" + listLadderActionsOf.size());
                        zReport = false;
                        for (LadderAction ladderAction2 : listLadderActionsOf) {
                            zReport |= MiniGameVendorReporter.report(strUrlParam, gameTask.name(), strChannelOf, ladderAction2.code, ladderAction2.times, gameTask.listTitle);
                        }
                    }
                } else {
                    zReport = false;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("游戏任务🔗链接模拟[");
                sb.append(gameTask.name());
                sb.append("]来源[");
                sb.append(MessageUtil.getTaskListName(gameTask.listTitle));
                sb.append("]#appId=");
                sb.append(strUrlParam);
                sb.append(" 提交数据 | queryGameComponent: [");
                sb.append(jSONObject);
                sb.append("] => ");
                sb.append(strRequestString);
                sb.append(" | submitUserAction: ");
                sb.append(strArrSubmitEnterAndFirstFrame[0]);
                sb.append(" => ");
                sb.append(strArrSubmitEnterAndFirstFrame[1]);
                sb.append(" | submitEvent: ");
                sb.append(strArrSubmitEnterAndFirstFrame[2]);
                sb.append(" => ");
                sb.append(strArrSubmitEnterAndFirstFrame[3]);
                sb.append(" | 厂商上报: ");
                if (zSupports) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("已执行(vendor=");
                    sb2.append(MiniGameVendorReporter.vendorName(strUrlParam));
                    sb2.append(")，结果=");
                    sb2.append(zReport ? "成功" : "失败");
                    string = sb2.toString();
                } else {
                    string = "无适配(sdk=" + MiniGameVendorReporter.sdkName(strUrlParam) + "，未实现协议)";
                }
                sb.append(string);
                Log.i(sb.toString());
                MessageUtil.logByTaskList(gameTask.listTitle, "游戏任务🔗链接模拟[" + gameTask.name() + "]来源[" + MessageUtil.getTaskListName(gameTask.listTitle) + "]#appId=" + strUrlParam);
                completeGameCenterExtras(strUrlParam3, strUrlParam2, gameTask.listTitle);
                return true;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
        Log.i(TAG, "completeByLink err:");
        Log.printStackTrace(TAG, th);
        return false;
    }

    private static void completeGameCenterExtras(String str, String str2, String str3) {
        if (str.isEmpty()) {
            return;
        }
        String dateStr = TimeUtil.getDateStr();
        Set<String> set = DONE_EXTRA_SCENES;
        synchronized (set) {
            if (!dateStr.equals(extraSceneDay)) {
                extraSceneDay = dateStr;
                set.clear();
                DONE_RECOMMEND_APPS.clear();
            }
            if (set.add(str)) {
                completeBrowseTasks(str);
                drawGameCenterAwards(str, str3);
                completeRecommendGames(str, str2, str3);
            }
        }
    }

    private static void drawGameCenterAwards(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("batchDrawCount", 10);
            jSONObject.put("bizType", bizTypeOf(str));
            jSONObject.put("requestType", "H5");
            jSONObject.put("sceneCode", str);
            jSONObject.put("source", "H5");
            jSONObject.put("version", "20250821");
            String strRequestString = requestString("com.alipay.charitygamecenter.drawGameCenterAward", "[" + jSONObject + "]");
            if (strRequestString.isEmpty()) {
                return;
            }
            JSONObject jSONObject2 = new JSONObject(strRequestString);
            JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("gameCenterDrawAwardList");
            if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
                Log.i("游戏任务🎁领奖[" + str + "]#暂无可领奖励(" + jSONObject2.optString("desc") + ")");
            } else {
                MessageUtil.logByTaskList(str2, "游戏任务🎁领奖[" + str + "]#共 " + jSONArrayOptJSONArray.length() + " 份，剩余次数=" + jSONObject2.optInt("drawRightsTimes", 0));
            }
        } catch (Throwable th) {
            Log.i(TAG, "drawGameCenterAward err: " + th.getMessage());
        }
    }

    private static String bizTypeOf(String str) {
        int iIndexOf = str.indexOf(95);
        return iIndexOf > 0 ? str.substring(0, iIndexOf) : str;
    }

    private static void completeBrowseTasks(String str) {
        JSONObject jSONObjectFindObject;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("alreadyDisplayedGeneralDeliveryPopups", new JSONArray());
            jSONObject.put("channelTaskPassThrough", "");
            jSONObject.put("cantShowGeneralDeliveryPopups", new JSONArray().put("VOUCHER"));
            jSONObject.put("deviceLevel", "high");
            jSONObject.put("guideType", "");
            jSONObject.put("moduleId", "");
            jSONObject.put("sceneId", str);
            jSONObject.put("source", HOME_SOURCE);
            jSONObject.put("unityDeviceLevel", "high");
            String strRequestString = requestString("com.alipay.gamecenteruprod.biz.rpc.external.gamecenter.queryHomePage", "[" + jSONObject + "]");
            if (strRequestString.isEmpty() || (jSONObjectFindObject = findObject(strRequestString, "taskModule")) == null) {
                return;
            }
            JSONArray jSONArrayOptJSONArray = jSONObjectFindObject.optJSONArray("browseTaskVO");
            if (jSONArrayOptJSONArray == null) {
                JSONObject jSONObjectOptJSONObject = jSONObjectFindObject.optJSONObject("browseTaskVO");
                jSONArrayOptJSONArray = jSONObjectOptJSONObject == null ? null : jSONObjectOptJSONObject.optJSONArray("taskList");
            }
            if (jSONArrayOptJSONArray != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject2 != null && jSONObjectOptJSONObject2.optInt("targetProgress", 1) > 0) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("sceneId", str);
                        JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("sceneExtInfo");
                        if (jSONObjectOptJSONObject3 != null) {
                            jSONObjectOptJSONObject2 = jSONObjectOptJSONObject3;
                        }
                        jSONObject2.put("sceneExtInfo", jSONObjectOptJSONObject2);
                        requestString("com.alipay.gamecenteruprod.biz.rpc.external.gamecenter.completeBrowseTask", "[" + jSONObject2 + "]");
                    }
                }
            }
            if (jSONObjectFindObject.optInt("needReceiveTaskCertCnt", 0) > 0) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("sceneId", str);
                jSONObject3.put("source", HOME_SOURCE);
                requestString("com.alipay.gamecenteruprod.biz.rpc.external.gamecenter.batchReceiveTaskPrize", "[" + jSONObject3 + "]");
            }
        } catch (Throwable th) {
            Log.i(TAG, "queryHomePage err: " + th.getMessage());
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x00aa */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c2, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void completeRecommendGames(java.lang.String r7, java.lang.String r8, java.lang.String r9) {
        /*
            java.lang.String r0 = "["
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: java.lang.Throwable -> Laa
            r1.<init>()     // Catch: java.lang.Throwable -> Laa
            java.lang.String r2 = "sceneId"
            r1.put(r2, r7)     // Catch: java.lang.Throwable -> Laa
            java.lang.String r2 = "source"
            java.lang.String r3 = "zmxy_mc_xctsup08"
            r1.put(r2, r3)     // Catch: java.lang.Throwable -> Laa
            java.lang.String r2 = "creativeId"
            java.lang.String r3 = ""
            r1.put(r2, r3)     // Catch: java.lang.Throwable -> Laa
            java.lang.String r2 = "topGameId"
            java.lang.String r3 = ""
            r1.put(r2, r3)     // Catch: java.lang.Throwable -> Laa
            java.lang.String r2 = "com.alipay.gamecenteruprod.biz.rpc.external.gamecenter.queryRecommendGames"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Laa
            r3.<init>(r0)     // Catch: java.lang.Throwable -> Laa
            r3.append(r1)     // Catch: java.lang.Throwable -> Laa
            java.lang.String r0 = "]"
            r3.append(r0)     // Catch: java.lang.Throwable -> Laa
            java.lang.String r0 = r3.toString()     // Catch: java.lang.Throwable -> Laa
            java.lang.String r0 = requestString(r2, r0)     // Catch: java.lang.Throwable -> Laa
            boolean r1 = r0.isEmpty()     // Catch: java.lang.Throwable -> Laa
            if (r1 == 0) goto L3f
            return
        L3f:
            java.lang.String r1 = "todayRecommendVO"
            org.json.JSONObject r0 = findObject(r0, r1)     // Catch: java.lang.Throwable -> Laa
            if (r0 != 0) goto L49
            r0 = 0
            goto L4f
        L49:
            java.lang.String r1 = "gameList"
            org.json.JSONArray r0 = r0.optJSONArray(r1)     // Catch: java.lang.Throwable -> Laa
        L4f:
            if (r0 != 0) goto L52
            return
        L52:
            r1 = 0
        L53:
            int r2 = r0.length()     // Catch: java.lang.Throwable -> Laa
            if (r1 >= r2) goto Lc2
            org.json.JSONObject r2 = r0.optJSONObject(r1)     // Catch: java.lang.Throwable -> Laa
            if (r2 != 0) goto L60
            goto La4
        L60:
            java.lang.String r3 = "jumpUrl"
            java.lang.String r3 = r2.optString(r3)     // Catch: java.lang.Throwable -> Laa
            java.lang.String r4 = "appId"
            java.lang.String r3 = urlParam(r3, r4)     // Catch: java.lang.Throwable -> Laa
            boolean r4 = r3.isEmpty()     // Catch: java.lang.Throwable -> Laa
            if (r4 == 0) goto L73
            goto La4
        L73:
            java.lang.String r4 = "trafficDriverId"
            java.lang.String r5 = "driverId"
            java.lang.String r5 = r2.optString(r5)     // Catch: java.lang.Throwable -> Laa
            java.lang.String r4 = r2.optString(r4, r5)     // Catch: java.lang.Throwable -> Laa
            boolean r5 = r4.isEmpty()     // Catch: java.lang.Throwable -> Laa
            if (r5 != 0) goto L95
            java.lang.String r5 = "gameModuleId"
            java.lang.String r6 = "moduleId"
            java.lang.String r6 = r2.optString(r6)     // Catch: java.lang.Throwable -> Laa
            java.lang.String r2 = r2.optString(r5, r6)     // Catch: java.lang.Throwable -> Laa
            completeChannelFloatingBall(r7, r3, r4, r2, r9)     // Catch: java.lang.Throwable -> Laa
            goto La4
        L95:
            java.util.Set<java.lang.String> r2 = io.github.lazyimmortal.sesame.model.base.TaskAlternative.DONE_RECOMMEND_APPS     // Catch: java.lang.Throwable -> Laa
            monitor-enter(r2)     // Catch: java.lang.Throwable -> Laa
            boolean r4 = r2.add(r3)     // Catch: java.lang.Throwable -> La7
            if (r4 != 0) goto La0
            monitor-exit(r2)     // Catch: java.lang.Throwable -> La7
            goto La4
        La0:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> La7
            enterGameOnly(r3, r8, r7)     // Catch: java.lang.Throwable -> Laa
        La4:
            int r1 = r1 + 1
            goto L53
        La7:
            r7 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> La7
            throw r7     // Catch: java.lang.Throwable -> Laa
        Laa:
            r7 = move-exception
            java.lang.String r8 = "TaskAlternative"
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r0 = "queryRecommendGames err: "
            r9.<init>(r0)
            java.lang.String r7 = r7.getMessage()
            r9.append(r7)
            java.lang.String r7 = r9.toString()
            io.github.lazyimmortal.sesame.util.Log.i(r8, r7)
        Lc2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.github.lazyimmortal.sesame.model.base.TaskAlternative.completeRecommendGames(java.lang.String, java.lang.String, java.lang.String):void");
    }

    private static void completeChannelFloatingBall(String str, String str2, String str3, String str4, String str5) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("sceneId", str);
            jSONObject.put("taskId", str3);
            jSONObject.put("passThrough", "");
            jSONObject.put("source", HOME_SOURCE);
            requestString("com.alipay.gamecenteruprod.biz.rpc.channeltask.floatingball.consult", "[" + jSONObject + "]");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("floatingBallTypeList", new JSONArray().put("CHANNEL_FLOATING_BALL"));
            jSONObject2.put("gameId", str2);
            jSONObject2.put("gameModuleId", str4);
            jSONObject2.put("source", HOME_SOURCE);
            jSONObject2.put("trafficDriverId", str3);
            MessageUtil.logByTaskList(str5, "游戏任务▶️频道浮动球[" + str2 + "]#trafficDriverId=" + str3 + "，响应=" + requestString("com.alipay.gamecenteruprod.biz.rpc.channeltask.floatingball.complete", "[" + jSONObject2 + "]"));
        } catch (Throwable th) {
            Log.i(TAG, "channeltask.floatingball err: " + th.getMessage());
        }
    }

    private static void enterGameOnly(String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("appId", str);
            jSONObject.put("chInfo", str2);
            jSONObject.put("reqType", "START_APP_FIRST_REQ");
            jSONObject.put("scene", str3);
            jSONObject.put("closeAd", false);
            requestString("com.alipay.gamecenteruprod.biz.rpc.queryGameComponent", "[" + jSONObject + "]");
            TimeUtil.sleep(300L);
            submitEnterAndFirstFrame(str, str2, str3);
        } catch (Throwable th) {
            Log.i(TAG, "enterGameOnly err: " + th.getMessage());
        }
    }

    private static String[] submitEnterAndFirstFrame(String str, String str2, String str3) throws Throwable {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("actionCode", "enterGame");
        jSONObject.put("gameId", str);
        jSONObject.put("paladinxVersion", PALADINX_VERSION);
        jSONObject.put("source", "gameFramework");
        String str4 = "[" + jSONObject + "]";
        String strRequestString = requestString("com.alipay.gamecenteruprod.biz.rpc.v3.submitUserAction", str4);
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("ALIVE_ENTER", "0");
        jSONObject2.put("CH_INFO", str2);
        jSONObject2.put("CPS_ID", EnvironmentCompat.MEDIA_UNKNOWN);
        jSONObject2.put("PALADINX_VERSION", PALADINX_VERSION);
        jSONObject2.put("PLAY_SCENE", "NORMAL");
        jSONObject2.put("SCENE_ID", str3);
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("appId", str);
        jSONObject3.put("eventAttrMap", jSONObject2);
        jSONObject3.put("eventId", "GAME_FIRST_FRAME");
        jSONObject3.put("idempotentNo", "platform_" + System.currentTimeMillis() + "_" + RANDOM.nextInt(100000) + "_0");
        jSONObject3.put("source", "paladinx_auto");
        StringBuilder sb = new StringBuilder("[");
        sb.append(jSONObject3);
        sb.append("]");
        String string = sb.toString();
        return new String[]{str4, strRequestString, string, requestString("com.alipay.gameevent.biz.rpc.submitEvent", string)};
    }

    private static String gameParam(String str, String str2) {
        String strUrlParam = urlParam(str, str2);
        if (!strUrlParam.isEmpty()) {
            return strUrlParam;
        }
        String strUrlParam2 = urlParam(str, "originalMap");
        if (strUrlParam2.isEmpty()) {
            return "";
        }
        try {
            return new JSONObject(strUrlParam2).optString(str2);
        } catch (Throwable unused) {
            return "";
        }
    }

    private static JSONObject findObject(String str, String str2) {
        try {
            return findObject(new JSONObject(str), str2);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static JSONObject findObject(JSONObject jSONObject, String str) {
        JSONObject jSONObjectFindObject;
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(str);
        if (jSONObjectOptJSONObject != null) {
            return jSONObjectOptJSONObject;
        }
        JSONArray jSONArrayNames = jSONObject.names();
        if (jSONArrayNames == null) {
            return null;
        }
        for (int i = 0; i < jSONArrayNames.length(); i++) {
            Object objOpt = jSONObject.opt(jSONArrayNames.optString(i));
            if ((objOpt instanceof JSONObject) && (jSONObjectFindObject = findObject((JSONObject) objOpt, str)) != null) {
                return jSONObjectFindObject;
            }
        }
        return null;
    }

    public static boolean completeThirdPartyJump(GameTask gameTask) {
        try {
            String strUrlParamDeep = urlParamDeep(gameTask.targetUrl, "iepTaskSceneCode");
            if (strUrlParamDeep.isEmpty()) {
                strUrlParamDeep = urlParamDeep(gameTask.targetUrl, "sceneCode");
            }
            if (strUrlParamDeep.isEmpty()) {
                strUrlParamDeep = urlParamDeep(gameTask.targetUrl, "third_scene_code");
            }
            if (!strUrlParamDeep.isEmpty() && !isSelfScene(strUrlParamDeep)) {
                String strQueryUserToken = queryUserToken(strUrlParamDeep);
                if (!strQueryUserToken.isEmpty()) {
                    String strCall = MtopCaller.call(ApplicationHook.getClassLoader(), "mtop.tmall.farm.orchard.task.notifyAlipayTaskFinish", "{\"sceneCode\":\"FUGUO\",\"convertTag\":\"" + strUrlParamDeep + "\",\"userToken\":\"" + strQueryUserToken + "\",\"ttid\":\"1588718881807@taobao_android_10.68.10\"}", "{\"referer\":\"https://pages-fast.m.taobao.com/wow/z/hdwk/farm-ssr/tmfarm\"}", false, false, 15000);
                    MessageUtil.logByTaskList(gameTask.listTitle, "跳转任务↗️任务跳转第三方[" + gameTask.name() + "]" + retMessage(strCall));
                    return true;
                }
                Log.i("跳转任务↗️[" + gameTask.name() + "]#sceneCode=" + strUrlParamDeep + " 未取到 userToken，改用链接 token");
                return finishByTaobaoLife(gameTask);
            }
            return finishByTaobaoLife(gameTask);
        } catch (Throwable th) {
            Log.i(TAG, "completeThirdPartyJump err:");
            Log.printStackTrace(TAG, th);
            return false;
        }
    }

    private static boolean finishByTaobaoLife(GameTask gameTask) throws JSONException {
        String strUrlParamDeep = urlParamDeep(gameTask.targetUrl, "userToken");
        if (strUrlParamDeep.isEmpty()) {
            strUrlParamDeep = urlParamDeep(gameTask.targetUrl, "third_token");
        }
        if (strUrlParamDeep.isEmpty()) {
            strUrlParamDeep = urlParamDeep(gameTask.targetUrl, "token");
        }
        if (strUrlParamDeep.isEmpty()) {
            strUrlParamDeep = externalTaskParam(gameTask.targetUrl, "userToken");
        }
        String strUrlParamDeep2 = urlParamDeep(gameTask.targetUrl, "iepTaskSceneCode");
        if (strUrlParamDeep2.isEmpty()) {
            strUrlParamDeep2 = urlParamDeep(gameTask.targetUrl, "sceneCode");
        }
        if (strUrlParamDeep2.isEmpty()) {
            strUrlParamDeep2 = urlParamDeep(gameTask.targetUrl, "third_scene_code");
        }
        if (strUrlParamDeep2.isEmpty()) {
            strUrlParamDeep2 = externalTaskParam(gameTask.targetUrl, "iepTaskSceneCode");
        }
        String strUrlParamDeep3 = urlParamDeep(gameTask.targetUrl, "iepTaskType");
        if (strUrlParamDeep3.isEmpty()) {
            strUrlParamDeep3 = urlParamDeep(gameTask.targetUrl, "taskType");
        }
        if (strUrlParamDeep3.isEmpty()) {
            strUrlParamDeep3 = urlParamDeep(gameTask.targetUrl, "third_task_type");
        }
        if (strUrlParamDeep3.isEmpty()) {
            strUrlParamDeep3 = externalTaskParam(gameTask.targetUrl, "iepTaskType");
        }
        if (strUrlParamDeep.isEmpty() || strUrlParamDeep2.isEmpty() || strUrlParamDeep3.isEmpty()) {
            Log.i("跳转任务↗️[" + gameTask.name() + "]#链接缺少 userToken/sceneCode/taskType，无法模拟第三方跳转");
            return false;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("source", "taobao");
        jSONObject.put("token", strUrlParamDeep);
        jSONObject.put("taskType", strUrlParamDeep3);
        jSONObject.put("sceneCode", strUrlParamDeep2);
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("bizType", "achievement.antFinishTask");
        jSONObject2.put("bizParam", jSONObject.toString());
        jSONObject2.put("ttid", TB_TTID);
        String strCall = MtopCaller.call(ApplicationHook.getClassLoader(), "mtop.aplatform.taobaolife.get", jSONObject2.toString(), "{\"referer\":\"https://pages-fast.m.taobao.com/wow/z/tblife/achievement-i/JX4ezmspfN8txPMWyawe\"}", false, false, 15000);
        MessageUtil.logByTaskList(gameTask.listTitle, "跳转任务↗️任务跳转第三方[" + gameTask.name() + "]" + retMessage(strCall));
        return true;
    }

    private static JSONObject externalTaskParams(String str) {
        String strUrlParamDeep = urlParamDeep(str, "external_task_param");
        if (strUrlParamDeep.isEmpty()) {
            return null;
        }
        for (int i = 0; i < 2; i++) {
            try {
                try {
                    JSONObject jSONObject = new JSONObject(strUrlParamDeep);
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("params");
                    return jSONObjectOptJSONObject == null ? jSONObject : jSONObjectOptJSONObject;
                } catch (Throwable unused) {
                    strUrlParamDeep = URLDecoder.decode(strUrlParamDeep, "UTF-8");
                }
            } catch (Throwable unused2) {
            }
        }
        return null;
    }

    private static String externalTaskParam(String str, String str2) {
        JSONObject jSONObjectExternalTaskParams = externalTaskParams(str);
        if (jSONObjectExternalTaskParams == null) {
            return "";
        }
        return cleanToken(jSONObjectExternalTaskParams.optString(str2));
    }

    private static String cleanToken(String str) {
        if (str == null) {
            return "";
        }
        String strTrim = str.trim();
        while (strTrim.length() >= 2 && ((strTrim.startsWith("\"") && strTrim.endsWith("\"")) || (strTrim.startsWith("'") && strTrim.endsWith("'")))) {
            strTrim = strTrim.substring(1, strTrim.length() - 1).trim();
        }
        return strTrim;
    }

    private static String queryUserToken(String str) throws JSONException {
        String strRequestString = requestString("alipay.antmember.callApp.queryCallAppSchema", "[{\"sceneCode\":\"" + str + "\"}]");
        if (strRequestString.isEmpty()) {
            Log.i("跳转任务🔎userToken[sceneCode=" + str + "]#queryCallAppSchema 返回空");
            return "";
        }
        JSONObject jSONObject = new JSONObject(strRequestString);
        if (!jSONObject.optBoolean("success")) {
            Log.i("跳转任务🔎userToken[sceneCode=" + str + "]#success=false，响应=" + brief(strRequestString));
            return "";
        }
        String strUrlParamDeep = urlParamDeep(jSONObject.optString("channelLandingUrlLink"), "userToken");
        if (!strUrlParamDeep.isEmpty()) {
            Log.i("跳转任务🔎userToken[sceneCode=" + str + "]#取自 channelLandingUrlLink");
            return strUrlParamDeep;
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("schemaConfigList");
        if (jSONArrayOptJSONArray == null) {
            Log.i("跳转任务🔎userToken[sceneCode=" + str + "]#无 schemaConfigList，响应=" + brief(strRequestString));
            return "";
        }
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
            if (jSONObjectOptJSONObject != null) {
                for (String str2 : USER_TOKEN_KEYS) {
                    String strUrlParamDeep2 = urlParamDeep(jSONObjectOptJSONObject.optString("channelDeepLink"), str2);
                    if (strUrlParamDeep2.isEmpty()) {
                        strUrlParamDeep2 = urlParamDeep(jSONObjectOptJSONObject.optString("channelMarketLink"), str2);
                    }
                    if (!strUrlParamDeep2.isEmpty()) {
                        Log.i("游戏任务🔎userToken[sceneCode=" + str + "]#取自 schemaConfigList[" + i + "]");
                        return strUrlParamDeep2;
                    }
                }
            }
        }
        Log.i("跳转任务🔎userToken[sceneCode=" + str + "]#链接与 schema 均无 token，响应=" + brief(strRequestString));
        return "";
    }

    private static String brief(String str) {
        if (str.length() <= 800) {
            return str;
        }
        return str.substring(0, 800) + "…";
    }

    private static String retMessage(String str) {
        if (str == null || str.isEmpty()) {
            return "响应为空";
        }
        try {
            JSONArray jSONArrayOptJSONArray = new JSONObject(str).optJSONArray("ret");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                String strOptString = jSONArrayOptJSONArray.optString(0);
                int iIndexOf = strOptString.indexOf("::");
                return iIndexOf >= 0 ? strOptString.substring(iIndexOf + 2) : strOptString;
            }
        } catch (Throwable unused) {
        }
        return brief(str);
    }

    private static boolean isThirdPartyJump(String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        return str.contains("jumpAction=") || str.contains("wakeup-transit") || str.contains("market.m.taobao.com") || str.contains("external_task_param=") || !urlParamDeep(str, "userToken").isEmpty() || !urlParamDeep(str, "third_token").isEmpty() || !urlParamDeep(str, "tToken").isEmpty();
    }

    private static boolean isSelfScene(String str) {
        for (String str2 : TAOBAO_SELF_SCENES) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    private static String urlParamDeep(String str, String str2) {
        String strUrlParam = urlParam(str, str2);
        if (!strUrlParam.isEmpty()) {
            return strUrlParam;
        }
        String strUrlParam2 = urlParam(str, "targetUrl");
        if (strUrlParam2.isEmpty()) {
            strUrlParam2 = urlParam(str, "url");
        }
        return strUrlParam2.isEmpty() ? "" : urlParam(strUrlParam2, str2);
    }

    private static final class LadderAction {
        final String code;
        final int times;

        LadderAction(String str, int i) {
            this.code = str;
            this.times = i;
        }
    }

    public static String rightsProgressText(int i, int i2, int i3) {
        if (i2 <= 1 || i2 > 20) {
            return "";
        }
        return "（" + Math.min(i2, Math.max(1, i + i3 + 1)) + "/" + i2 + "）";
    }

    private static List<LadderAction> ladderActionsOf(String str, String str2) {
        String strOptString;
        int iIndexOf;
        if (str != null) {
            try {
                if (!str.isEmpty()) {
                    JSONObject jSONObjectOptJSONObject = new JSONObject(str).optJSONObject("data");
                    JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject == null ? null : jSONObjectOptJSONObject.optJSONObject("ladderTaskComponentVO");
                    JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject2 == null ? null : jSONObjectOptJSONObject2.optJSONArray("mainTaskList");
                    if (jSONArrayOptJSONArray == null) {
                        return null;
                    }
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                        JSONObject jSONObjectOptJSONObject3 = jSONArrayOptJSONArray.optJSONObject(i);
                        if (jSONObjectOptJSONObject3 != null && str2.equals(jSONObjectOptJSONObject3.optString("appId"))) {
                            String strOptString2 = jSONObjectOptJSONObject3.optString("taskStatus");
                            if (!"FINISHED".equals(strOptString2) && !"RECEIVED".equals(strOptString2) && !"COMPLETED".equals(strOptString2) && (iIndexOf = (strOptString = jSONObjectOptJSONObject3.optString("taskId")).indexOf(35)) > 0) {
                                JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject3.optJSONObject("taskProgressVO");
                                int iOptInt = jSONObjectOptJSONObject4 == null ? 0 : jSONObjectOptJSONObject4.optInt("totalProgress");
                                int iOptInt2 = jSONObjectOptJSONObject4 == null ? 0 : jSONObjectOptJSONObject4.optInt("currentProgress");
                                if (iOptInt <= 0 || iOptInt2 < iOptInt) {
                                    int iMax = Math.max(1, Math.min(MAX_TIMES_PER_ACTION, iOptInt - iOptInt2));
                                    Log.i("游戏任务▶️阶梯动作码[" + str2 + "]#" + strOptString + " 状态=" + strOptString2 + " 进度=" + iOptInt2 + "/" + iOptInt + " 需上报=" + iMax);
                                    String strSubstring = strOptString.substring(0, iIndexOf);
                                    Integer num = (Integer) linkedHashMap.get(strSubstring);
                                    if (num == null || iMax > num.intValue()) {
                                        linkedHashMap.put(strSubstring, Integer.valueOf(iMax));
                                    }
                                }
                            }
                        }
                    }
                    ArrayList arrayList = new ArrayList();
                    for (Map.Entry entry : linkedHashMap.entrySet()) {
                        arrayList.add(new LadderAction((String) entry.getKey(), ((Integer) entry.getValue()).intValue()));
                    }
                    return arrayList;
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    private static String channelOf(String str) {
        String strUrlParam = urlParam(str, "channel");
        if (!strUrlParam.isEmpty()) {
            return strUrlParam;
        }
        String strUrlParam2 = urlParam(str, "query");
        if (strUrlParam2.isEmpty()) {
            return "";
        }
        return urlParam("?" + strUrlParam2, "channel");
    }

    private static String urlParam(String str, String str2) {
        if (str == null || str.isEmpty()) {
            return "";
        }
        Matcher matcher = Pattern.compile("[?&]" + Pattern.quote(str2) + "=([^&#]*)").matcher(str);
        if (!matcher.find()) {
            return "";
        }
        String strGroup = matcher.group(1);
        try {
            return URLDecoder.decode(strGroup, "UTF-8");
        } catch (Throwable unused) {
            return strGroup;
        }
    }

    private static String requestString(String str, String str2) {
        String strRequestString = ApplicationHook.requestString(str, str2);
        return strRequestString == null ? "" : strRequestString;
    }
}
