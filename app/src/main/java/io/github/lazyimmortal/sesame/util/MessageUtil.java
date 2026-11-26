package io.github.lazyimmortal.sesame.util;

import io.github.lazyimmortal.sesame.data.ConfigV2;
import io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class MessageUtil {
    public static final String CODE_UNSUPPORTED_RPC = "400000040";
    private static final String TAG = "MessageUtil";
    private static final String UNKNOWN_TAG = "Unknown TAG";

    public static boolean isUnsupportedRpc(JSONObject jSONObject) {
        if (jSONObject == null) {
            return false;
        }
        if (CODE_UNSUPPORTED_RPC.equals(jSONObject.optString("code", "").trim()) || CODE_UNSUPPORTED_RPC.equals(jSONObject.optString("errorCode", "").trim())) {
            return true;
        }
        String strOptString = jSONObject.optString("desc", "");
        return strOptString.contains("不支持rpc调用") || strOptString.contains("不支持RPC调用");
    }

    public static boolean isSecurityVerify(JSONObject jSONObject) {
        if (jSONObject == null) {
            return false;
        }
        return jSONObject.optInt("error") == 1009 || "1009".equals(jSONObject.optString("errorTip", "").trim());
    }

    public static JSONObject newJSONObject(String str) {
        try {
            return new JSONObject(str);
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "newJSONObject err:");
            Log.printStackTrace(str2, th);
            return null;
        }
    }

    public static void printErrorMessage(String str, JSONObject jSONObject, String str2) {
        try {
            Log.record((str + " error:") + jSONObject.getString(str2));
            Log.i(jSONObject.getString(str2), jSONObject.toString());
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "printErrorMessage err:");
            Log.printStackTrace(str3, th);
        }
    }

    public static Boolean checkMemo(JSONObject jSONObject) {
        return checkMemo(UNKNOWN_TAG, jSONObject);
    }

    public static Boolean checkMemo(String str, JSONObject jSONObject) {
        try {
            String strOptString = jSONObject.optString("memo");
            if (!"SUCCESS".equals(strOptString) && !"成功".equals(strOptString)) {
                if (jSONObject.has("memo")) {
                    printErrorMessage(str, jSONObject, "memo");
                } else {
                    Log.i(str, jSONObject.toString());
                }
                return false;
            }
            return true;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "checkMemo err:");
            Log.printStackTrace(str2, th);
            return false;
        }
    }

    public static Boolean checkResultCode(JSONObject jSONObject) {
        return checkResultCode(UNKNOWN_TAG, jSONObject);
    }

    public static Boolean checkResultCode(String str, JSONObject jSONObject) {
        try {
            if (jSONObject == null) {
                Log.i(str, "JSON对象为空");
                return false;
            }
            if (jSONObject.optBoolean("success") && jSONObject.optString("desc").equals("处理成功")) {
                return true;
            }
            Object objOpt = jSONObject.opt("resultCode");
            if (objOpt == null) {
                Log.i(str, jSONObject.toString());
                return false;
            }
            if (objOpt instanceof Integer) {
                return checkResultCodeInteger(str, jSONObject);
            }
            if (objOpt instanceof String) {
                return checkResultCodeString(str, jSONObject);
            }
            Log.i(str, jSONObject.toString());
            return false;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "checkResultCode err:");
            Log.printStackTrace(str2, th);
            return false;
        }
    }

    public static Boolean checkResultCodeString(String str, JSONObject jSONObject) {
        try {
            String strOptString = jSONObject.optString("resultCode");
            if (!strOptString.equalsIgnoreCase("SUCCESS") && !strOptString.equals("100")) {
                if (jSONObject.has("resultDesc")) {
                    printErrorMessage(str, jSONObject, "resultDesc");
                } else if (jSONObject.has("resultView")) {
                    printErrorMessage(str, jSONObject, "resultView");
                } else {
                    Log.i(str, jSONObject.toString());
                }
                return false;
            }
            return true;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "checkResultCodeString err:");
            Log.printStackTrace(str2, th);
            return false;
        }
    }

    public static Boolean checkResultCodeInteger(String str, JSONObject jSONObject) {
        try {
            if (jSONObject.optInt("resultCode") != 200) {
                if (jSONObject.has("resultMsg")) {
                    printErrorMessage(str, jSONObject, "resultMsg");
                } else {
                    Log.i(str, jSONObject.toString());
                }
                return false;
            }
            return true;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "checkResultCodeInteger err:");
            Log.printStackTrace(str2, th);
            return false;
        }
    }

    public static Boolean checkSuccess(JSONObject jSONObject) {
        return checkSuccess(UNKNOWN_TAG, jSONObject);
    }

    public static Boolean checkSuccess(String str, JSONObject jSONObject) {
        try {
            if (!jSONObject.optBoolean("success") && !jSONObject.optBoolean("isSuccess")) {
                if (jSONObject.has("errorMsg")) {
                    printErrorMessage(str, jSONObject, "errorMsg");
                } else if (jSONObject.has("errorMessage")) {
                    printErrorMessage(str, jSONObject, "errorMessage");
                } else if (jSONObject.has("desc")) {
                    printErrorMessage(str, jSONObject, "desc");
                } else if (jSONObject.has("resultDesc")) {
                    printErrorMessage(str, jSONObject, "resultDesc");
                } else if (jSONObject.has("resultView")) {
                    printErrorMessage(str, jSONObject, "resultView");
                } else {
                    Log.i(str, jSONObject.toString());
                }
                return false;
            }
            return true;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "checkSuccess err:");
            Log.printStackTrace(str2, th);
            return false;
        }
    }

    public static String getTaskListName(String str) {
        if (str == null || str.isEmpty()) {
            return "";
        }
        str.hashCode();
        switch (str) {
            case "AntSportsTaskList":
                return "运动";
            case "AntFarmDoFarmTaskList":
                return "饲料";
            case "AntMemberTaskList":
                return "会员";
            case "AntOrchardDrawTaskList":
                return "农场抽抽乐";
            case "AntFarmDrawMachineTaskList":
                return "装扮抽抽乐";
            case "AntFarmChickenChefTaskList":
                return "小鸡大厨";
            case "AntStallTaskList":
                return "新村";
            case "AntOceanFishBlackList":
                return "海洋去摸鱼";
            case "AntDodoTaskList":
                return "神奇物种";
            case "AntForestVitalityTaskList":
                return "活力值";
            case "MemberCreditSesameTaskList":
                return "芝麻信用芝麻粒";
            case "MonopolyTaskList":
                return "保护地";
            case "GoldenBeansTaskList":
                return "金豆";
            case "AntForestHuntTaskList":
                return "森林抽抽乐";
            case "AntOceanAntiepTaskList":
                return "海洋普通任务";
            case "AntOrchardTaskList":
                return "肥料";
            default:
                return str;
        }
    }

    public static void logByTaskList(String str, String str2) {
        if (str == null) {
            str = "";
        }
        str.hashCode();
        switch (str) {
            case "AntFarmDoFarmTaskList":
            case "AntOrchardDrawTaskList":
            case "AntFarmDrawMachineTaskList":
            case "AntFarmChickenChefTaskList":
            case "GoldenBeansTaskList":
            case "AntOrchardTaskList":
                Log.farm(str2);
                break;
            case "AntOceanFishBlackList":
            case "AntDodoTaskList":
            case "AntForestVitalityTaskList":
            case "MonopolyTaskList":
            case "AntForestHuntTaskList":
            case "AntOceanAntiepTaskList":
                Log.forest(str2);
                break;
            default:
                Log.other(str2);
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0036  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:80:0x0125  */
    public static void checkResultCodeAndMarkTaskBlackList(String str, String str2, JSONObject jSONObject) {
        boolean z;
        boolean z2;
        try {
            if (jSONObject == null) {
                Log.i(str, "JSON对象为空");
            }
            if (jSONObject.has("desc")) {
                String strOptString = jSONObject.optString("desc");
                if (strOptString.contains("不支持rpc调用") || strOptString.contains("不支持RPC调用")) {
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
            switch (str) {
                case "AntForestVitalityTaskList":
                    if (z) {
                        MarkTaskBlackList("AntForestV2", str, "蚂蚁森林活力值任务", str2);
                        break;
                    }
                    break;
                case "AntForestHuntTaskList":
                    if (z) {
                        MarkTaskBlackList("AntForestV2", str, "蚂蚁森林抽抽乐任务", str2);
                        break;
                    }
                    break;
                case "MonopolyTaskList":
                    if (z) {
                        MarkTaskBlackList("AntForestV2", str, "蚂蚁森林保护地任务", str2);
                        break;
                    }
                    break;
                case "AntFarmDoFarmTaskList":
                    if ((jSONObject.has("memo") && jSONObject.optString("memo").contains("服务器正在开小差，请稍后再试～")) ? true : z) {
                        MarkTaskBlackList("AntFarm", str, "庄园饲料任务", str2);
                        break;
                    }
                    break;
                case "AntFarmDrawMachineTaskList":
                    if ((jSONObject.has("memo") && jSONObject.optString("memo").contains("服务器正在开小差，请稍后再试～")) ? true : z) {
                        MarkTaskBlackList("AntFarm", str, "庄园装扮抽抽乐任务", str2);
                        break;
                    }
                    break;
                case "AntFarmChickenChefTaskList":
                    if ((jSONObject.has("memo") && jSONObject.optString("memo").contains("服务器正在开小差，请稍后再试～")) ? true : z) {
                        MarkTaskBlackList("AntFarm", str, "庄园小鸡大厨任务", str2);
                        break;
                    }
                    break;
                case "AntDodoTaskList":
                    if (z) {
                        MarkTaskBlackList("AntDodo", str, "神奇物种任务", str2);
                        break;
                    }
                    break;
                case "AntOceanAntiepTaskList":
                    if (z) {
                        MarkTaskBlackList("AntOcean", str, "神奇海洋普通任务", str2);
                        break;
                    }
                    break;
                case "AntOceanFishBlackList":
                    if (z) {
                        MarkTaskBlackList("AntOcean", str, "神奇海洋去摸鱼任务", str2);
                        break;
                    }
                    break;
                case "AntOrchardTaskList":
                    if ((jSONObject.has("desc") && jSONObject.optString("desc").contains("任务全局配置不存在")) ? true : z) {
                        MarkTaskBlackList("AntOrchard", str, "农场肥料任务", str2);
                        break;
                    }
                    break;
                case "AntOrchardDrawTaskList":
                    if (z) {
                        MarkTaskBlackList("AntOrchard", str, "农场抽抽乐任务", str2);
                        break;
                    }
                    break;
                case "GoldenBeansTaskList":
                    if (z) {
                        MarkTaskBlackList("AntOrchard", str, "农场金豆任务", str2);
                        break;
                    }
                    break;
                case "AntStallTaskList":
                    if (z) {
                        MarkTaskBlackList("AntStall", str, "新村任务", str2);
                        break;
                    }
                    break;
                case "AntSportsTaskList":
                    if (jSONObject.has("errorCode") && jSONObject.optString("errorCode").contains("TASK_ID_INVALID")) {
                        z = true;
                    }
                    if ((jSONObject.has("errorMsg") && jSONObject.optString("errorMsg").contains("海豚活动触发不可重试错误")) ? true : z) {
                        MarkTaskBlackList("AntSports", str, "运动任务", str2);
                        break;
                    }
                    break;
                case "AntMemberTaskList":
                    if (z) {
                        MarkTaskBlackList("AntMember", str, "会员任务", str2);
                        break;
                    }
                    break;
                case "MemberCreditSesameTaskList":
                    if (jSONObject.has("resultView")) {
                        String strOptString2 = jSONObject.optString("resultView");
                        if (strOptString2.contains("不是有效的入参") || strOptString2.contains("存在进行中的生活记录") || strOptString2.contains("生活记录模板不存在")) {
                            z2 = true;
                        } else {
                            z2 = z;
                        }
                    } else {
                        z2 = z;
                    }
                    if (z2) {
                        MarkTaskBlackList("AntMember", str, "会员芝麻信用任务芝麻粒", str2);
                        break;
                    }
                    break;
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "checkSuccess err:");
            Log.printStackTrace(str3, th);
        }
    }

    public static void MarkTaskBlackList(String str, String str2, String str3, String str4) {
        SelectModelField selectModelField = (SelectModelField) ConfigV2.INSTANCE.getModelFieldsMap().get(str).get(str2);
        if (selectModelField == null) {
            Log.record("添加" + str3 + "黑名单失败：" + str4);
            return;
        }
        if (!selectModelField.contains(str4).booleanValue()) {
            selectModelField.add(str4, 0);
        }
        if (ConfigV2.save(UserIdMap.getCurrentUid(), false).booleanValue()) {
            Log.record("自动拉黑🏴在[" + str3 + "]中添加[" + str4 + "]黑名单:" + selectModelField.getValue());
            return;
        }
        Log.record("添加" + str3 + "黑名单失败：" + str4);
    }
}
