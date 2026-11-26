package io.github.lazyimmortal.sesame.model.task.antForest;

import io.github.lazyimmortal.sesame.hook.Toast;
import io.github.lazyimmortal.sesame.model.base.TaskAlternative;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.MessageUtil;
import io.github.lazyimmortal.sesame.util.Statistics;
import io.github.lazyimmortal.sesame.util.Status;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import io.github.lazyimmortal.sesame.util.idMap.ForestHuntIdMap;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.util.LinkedHashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ForestChouChouLe {
    private static final String TAG = "ForestChouChouLe";

    void chouChouLe(Boolean bool, Boolean bool2, Set<String> set, Boolean bool3, Boolean bool4, Set<String> set2) {
        try {
            ForestHuntIdMap.load();
            JSONObject jSONObject = new JSONObject(AntForestRpcCall.enterDrawActivityopengreen("", "ANTFOREST_NORMAL_DRAW", "task_entry"));
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                JSONArray jSONArray = jSONObject.getJSONArray("drawSceneGroups");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i).getJSONObject("drawActivity");
                    chouChouLescene(bool, jSONObject2.getString("activityId"), jSONObject2.getString("name"), jSONObject2.getString("sceneCode"), bool2, set, bool3, bool4, set2);
                }
            }
        } catch (Exception e) {
            Log.printStackTrace(e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0387 A[Catch: Exception -> 0x0530, TryCatch #0 {Exception -> 0x0530, blocks: (B:3:0x001d, B:6:0x0050, B:7:0x0059, B:9:0x005f, B:17:0x00bd, B:117:0x043e, B:39:0x01e6, B:41:0x01f1, B:43:0x01fd, B:46:0x0207, B:48:0x0213, B:50:0x0223, B:54:0x0257, B:56:0x025d, B:58:0x0265, B:60:0x0275, B:64:0x02ab, B:67:0x02b5, B:85:0x02fa, B:86:0x0322, B:88:0x0337, B:82:0x02eb, B:90:0x035d, B:93:0x036d, B:112:0x03f3, B:114:0x0403, B:116:0x041e, B:95:0x0375, B:97:0x037b, B:103:0x0394, B:105:0x03a1, B:107:0x03b8, B:110:0x03c9, B:106:0x03ad, B:100:0x0387, B:16:0x00b5, B:12:0x00a4, B:122:0x046f, B:124:0x0475, B:126:0x048a, B:128:0x0498, B:130:0x04b1, B:132:0x051d), top: B:138:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:103:0x0394 A[Catch: Exception -> 0x0530, TryCatch #0 {Exception -> 0x0530, blocks: (B:3:0x001d, B:6:0x0050, B:7:0x0059, B:9:0x005f, B:17:0x00bd, B:117:0x043e, B:39:0x01e6, B:41:0x01f1, B:43:0x01fd, B:46:0x0207, B:48:0x0213, B:50:0x0223, B:54:0x0257, B:56:0x025d, B:58:0x0265, B:60:0x0275, B:64:0x02ab, B:67:0x02b5, B:85:0x02fa, B:86:0x0322, B:88:0x0337, B:82:0x02eb, B:90:0x035d, B:93:0x036d, B:112:0x03f3, B:114:0x0403, B:116:0x041e, B:95:0x0375, B:97:0x037b, B:103:0x0394, B:105:0x03a1, B:107:0x03b8, B:110:0x03c9, B:106:0x03ad, B:100:0x0387, B:16:0x00b5, B:12:0x00a4, B:122:0x046f, B:124:0x0475, B:126:0x048a, B:128:0x0498, B:130:0x04b1, B:132:0x051d), top: B:138:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:105:0x03a1 A[Catch: Exception -> 0x0530, TryCatch #0 {Exception -> 0x0530, blocks: (B:3:0x001d, B:6:0x0050, B:7:0x0059, B:9:0x005f, B:17:0x00bd, B:117:0x043e, B:39:0x01e6, B:41:0x01f1, B:43:0x01fd, B:46:0x0207, B:48:0x0213, B:50:0x0223, B:54:0x0257, B:56:0x025d, B:58:0x0265, B:60:0x0275, B:64:0x02ab, B:67:0x02b5, B:85:0x02fa, B:86:0x0322, B:88:0x0337, B:82:0x02eb, B:90:0x035d, B:93:0x036d, B:112:0x03f3, B:114:0x0403, B:116:0x041e, B:95:0x0375, B:97:0x037b, B:103:0x0394, B:105:0x03a1, B:107:0x03b8, B:110:0x03c9, B:106:0x03ad, B:100:0x0387, B:16:0x00b5, B:12:0x00a4, B:122:0x046f, B:124:0x0475, B:126:0x048a, B:128:0x0498, B:130:0x04b1, B:132:0x051d), top: B:138:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:106:0x03ad A[Catch: Exception -> 0x0530, TryCatch #0 {Exception -> 0x0530, blocks: (B:3:0x001d, B:6:0x0050, B:7:0x0059, B:9:0x005f, B:17:0x00bd, B:117:0x043e, B:39:0x01e6, B:41:0x01f1, B:43:0x01fd, B:46:0x0207, B:48:0x0213, B:50:0x0223, B:54:0x0257, B:56:0x025d, B:58:0x0265, B:60:0x0275, B:64:0x02ab, B:67:0x02b5, B:85:0x02fa, B:86:0x0322, B:88:0x0337, B:82:0x02eb, B:90:0x035d, B:93:0x036d, B:112:0x03f3, B:114:0x0403, B:116:0x041e, B:95:0x0375, B:97:0x037b, B:103:0x0394, B:105:0x03a1, B:107:0x03b8, B:110:0x03c9, B:106:0x03ad, B:100:0x0387, B:16:0x00b5, B:12:0x00a4, B:122:0x046f, B:124:0x0475, B:126:0x048a, B:128:0x0498, B:130:0x04b1, B:132:0x051d), top: B:138:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:110:0x03c9 A[Catch: Exception -> 0x0530, LOOP:1: B:102:0x0392->B:110:0x03c9, LOOP_END, TryCatch #0 {Exception -> 0x0530, blocks: (B:3:0x001d, B:6:0x0050, B:7:0x0059, B:9:0x005f, B:17:0x00bd, B:117:0x043e, B:39:0x01e6, B:41:0x01f1, B:43:0x01fd, B:46:0x0207, B:48:0x0213, B:50:0x0223, B:54:0x0257, B:56:0x025d, B:58:0x0265, B:60:0x0275, B:64:0x02ab, B:67:0x02b5, B:85:0x02fa, B:86:0x0322, B:88:0x0337, B:82:0x02eb, B:90:0x035d, B:93:0x036d, B:112:0x03f3, B:114:0x0403, B:116:0x041e, B:95:0x0375, B:97:0x037b, B:103:0x0394, B:105:0x03a1, B:107:0x03b8, B:110:0x03c9, B:106:0x03ad, B:100:0x0387, B:16:0x00b5, B:12:0x00a4, B:122:0x046f, B:124:0x0475, B:126:0x048a, B:128:0x0498, B:130:0x04b1, B:132:0x051d), top: B:138:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:151:0x03ef A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:152:0x03c7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:28:0x010e A[Catch: Exception -> 0x0457, TryCatch #3 {Exception -> 0x0457, blocks: (B:21:0x00cb, B:23:0x00e3, B:28:0x010e, B:30:0x0116, B:31:0x018a, B:33:0x0190, B:35:0x0196, B:37:0x01a4), top: B:144:0x00cb }] */
    /* JADX WARN: Code duplicated, block: B:30:0x0116 A[Catch: Exception -> 0x0457, TryCatch #3 {Exception -> 0x0457, blocks: (B:21:0x00cb, B:23:0x00e3, B:28:0x010e, B:30:0x0116, B:31:0x018a, B:33:0x0190, B:35:0x0196, B:37:0x01a4), top: B:144:0x00cb }] */
    /* JADX WARN: Code duplicated, block: B:31:0x018a A[Catch: Exception -> 0x0457, TryCatch #3 {Exception -> 0x0457, blocks: (B:21:0x00cb, B:23:0x00e3, B:28:0x010e, B:30:0x0116, B:31:0x018a, B:33:0x0190, B:35:0x0196, B:37:0x01a4), top: B:144:0x00cb }] */
    /* JADX WARN: Code duplicated, block: B:40:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:43:0x01fd A[Catch: Exception -> 0x0530, TRY_LEAVE, TryCatch #0 {Exception -> 0x0530, blocks: (B:3:0x001d, B:6:0x0050, B:7:0x0059, B:9:0x005f, B:17:0x00bd, B:117:0x043e, B:39:0x01e6, B:41:0x01f1, B:43:0x01fd, B:46:0x0207, B:48:0x0213, B:50:0x0223, B:54:0x0257, B:56:0x025d, B:58:0x0265, B:60:0x0275, B:64:0x02ab, B:67:0x02b5, B:85:0x02fa, B:86:0x0322, B:88:0x0337, B:82:0x02eb, B:90:0x035d, B:93:0x036d, B:112:0x03f3, B:114:0x0403, B:116:0x041e, B:95:0x0375, B:97:0x037b, B:103:0x0394, B:105:0x03a1, B:107:0x03b8, B:110:0x03c9, B:106:0x03ad, B:100:0x0387, B:16:0x00b5, B:12:0x00a4, B:122:0x046f, B:124:0x0475, B:126:0x048a, B:128:0x0498, B:130:0x04b1, B:132:0x051d), top: B:138:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:46:0x0207 A[Catch: Exception -> 0x0530, TRY_ENTER, TryCatch #0 {Exception -> 0x0530, blocks: (B:3:0x001d, B:6:0x0050, B:7:0x0059, B:9:0x005f, B:17:0x00bd, B:117:0x043e, B:39:0x01e6, B:41:0x01f1, B:43:0x01fd, B:46:0x0207, B:48:0x0213, B:50:0x0223, B:54:0x0257, B:56:0x025d, B:58:0x0265, B:60:0x0275, B:64:0x02ab, B:67:0x02b5, B:85:0x02fa, B:86:0x0322, B:88:0x0337, B:82:0x02eb, B:90:0x035d, B:93:0x036d, B:112:0x03f3, B:114:0x0403, B:116:0x041e, B:95:0x0375, B:97:0x037b, B:103:0x0394, B:105:0x03a1, B:107:0x03b8, B:110:0x03c9, B:106:0x03ad, B:100:0x0387, B:16:0x00b5, B:12:0x00a4, B:122:0x046f, B:124:0x0475, B:126:0x048a, B:128:0x0498, B:130:0x04b1, B:132:0x051d), top: B:138:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:48:0x0213 A[Catch: Exception -> 0x0530, TryCatch #0 {Exception -> 0x0530, blocks: (B:3:0x001d, B:6:0x0050, B:7:0x0059, B:9:0x005f, B:17:0x00bd, B:117:0x043e, B:39:0x01e6, B:41:0x01f1, B:43:0x01fd, B:46:0x0207, B:48:0x0213, B:50:0x0223, B:54:0x0257, B:56:0x025d, B:58:0x0265, B:60:0x0275, B:64:0x02ab, B:67:0x02b5, B:85:0x02fa, B:86:0x0322, B:88:0x0337, B:82:0x02eb, B:90:0x035d, B:93:0x036d, B:112:0x03f3, B:114:0x0403, B:116:0x041e, B:95:0x0375, B:97:0x037b, B:103:0x0394, B:105:0x03a1, B:107:0x03b8, B:110:0x03c9, B:106:0x03ad, B:100:0x0387, B:16:0x00b5, B:12:0x00a4, B:122:0x046f, B:124:0x0475, B:126:0x048a, B:128:0x0498, B:130:0x04b1, B:132:0x051d), top: B:138:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:50:0x0223 A[Catch: Exception -> 0x0530, TryCatch #0 {Exception -> 0x0530, blocks: (B:3:0x001d, B:6:0x0050, B:7:0x0059, B:9:0x005f, B:17:0x00bd, B:117:0x043e, B:39:0x01e6, B:41:0x01f1, B:43:0x01fd, B:46:0x0207, B:48:0x0213, B:50:0x0223, B:54:0x0257, B:56:0x025d, B:58:0x0265, B:60:0x0275, B:64:0x02ab, B:67:0x02b5, B:85:0x02fa, B:86:0x0322, B:88:0x0337, B:82:0x02eb, B:90:0x035d, B:93:0x036d, B:112:0x03f3, B:114:0x0403, B:116:0x041e, B:95:0x0375, B:97:0x037b, B:103:0x0394, B:105:0x03a1, B:107:0x03b8, B:110:0x03c9, B:106:0x03ad, B:100:0x0387, B:16:0x00b5, B:12:0x00a4, B:122:0x046f, B:124:0x0475, B:126:0x048a, B:128:0x0498, B:130:0x04b1, B:132:0x051d), top: B:138:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:51:0x024a  */
    /* JADX WARN: Code duplicated, block: B:53:0x024f  */
    /* JADX WARN: Code duplicated, block: B:61:0x029c  */
    /* JADX WARN: Code duplicated, block: B:63:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:90:0x035d A[Catch: Exception -> 0x0530, TRY_LEAVE, TryCatch #0 {Exception -> 0x0530, blocks: (B:3:0x001d, B:6:0x0050, B:7:0x0059, B:9:0x005f, B:17:0x00bd, B:117:0x043e, B:39:0x01e6, B:41:0x01f1, B:43:0x01fd, B:46:0x0207, B:48:0x0213, B:50:0x0223, B:54:0x0257, B:56:0x025d, B:58:0x0265, B:60:0x0275, B:64:0x02ab, B:67:0x02b5, B:85:0x02fa, B:86:0x0322, B:88:0x0337, B:82:0x02eb, B:90:0x035d, B:93:0x036d, B:112:0x03f3, B:114:0x0403, B:116:0x041e, B:95:0x0375, B:97:0x037b, B:103:0x0394, B:105:0x03a1, B:107:0x03b8, B:110:0x03c9, B:106:0x03ad, B:100:0x0387, B:16:0x00b5, B:12:0x00a4, B:122:0x046f, B:124:0x0475, B:126:0x048a, B:128:0x0498, B:130:0x04b1, B:132:0x051d), top: B:138:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:93:0x036d A[Catch: Exception -> 0x0530, TRY_ENTER, TryCatch #0 {Exception -> 0x0530, blocks: (B:3:0x001d, B:6:0x0050, B:7:0x0059, B:9:0x005f, B:17:0x00bd, B:117:0x043e, B:39:0x01e6, B:41:0x01f1, B:43:0x01fd, B:46:0x0207, B:48:0x0213, B:50:0x0223, B:54:0x0257, B:56:0x025d, B:58:0x0265, B:60:0x0275, B:64:0x02ab, B:67:0x02b5, B:85:0x02fa, B:86:0x0322, B:88:0x0337, B:82:0x02eb, B:90:0x035d, B:93:0x036d, B:112:0x03f3, B:114:0x0403, B:116:0x041e, B:95:0x0375, B:97:0x037b, B:103:0x0394, B:105:0x03a1, B:107:0x03b8, B:110:0x03c9, B:106:0x03ad, B:100:0x0387, B:16:0x00b5, B:12:0x00a4, B:122:0x046f, B:124:0x0475, B:126:0x048a, B:128:0x0498, B:130:0x04b1, B:132:0x051d), top: B:138:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:95:0x0375 A[Catch: Exception -> 0x0530, TryCatch #0 {Exception -> 0x0530, blocks: (B:3:0x001d, B:6:0x0050, B:7:0x0059, B:9:0x005f, B:17:0x00bd, B:117:0x043e, B:39:0x01e6, B:41:0x01f1, B:43:0x01fd, B:46:0x0207, B:48:0x0213, B:50:0x0223, B:54:0x0257, B:56:0x025d, B:58:0x0265, B:60:0x0275, B:64:0x02ab, B:67:0x02b5, B:85:0x02fa, B:86:0x0322, B:88:0x0337, B:82:0x02eb, B:90:0x035d, B:93:0x036d, B:112:0x03f3, B:114:0x0403, B:116:0x041e, B:95:0x0375, B:97:0x037b, B:103:0x0394, B:105:0x03a1, B:107:0x03b8, B:110:0x03c9, B:106:0x03ad, B:100:0x0387, B:16:0x00b5, B:12:0x00a4, B:122:0x046f, B:124:0x0475, B:126:0x048a, B:128:0x0498, B:130:0x04b1, B:132:0x051d), top: B:138:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:99:0x0381  */
    /* JADX WARN: Instruction removed from duplicated block: B:110:0x03c9, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:50:0x0223, please report this as an issue */
    void chouChouLescene(Boolean bool, String str, String str2, String str3, Boolean bool2, Set<String> set, Boolean bool3, Boolean bool4, Set<String> set2) {
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        ForestChouChouLe forestChouChouLe;
        int length;
        int i;
        int i2;
        int i3;
        String str11;
        String str12;
        int i4;
        int i5;
        int iRightsTimesToDo;
        int i6;
        JSONObject jSONObject;
        String str13;
        int iOptInt;
        String str14;
        String str15 = str;
        String str16 = str3;
        String str17 = "userVitalityInfoVO";
        String str18 = "*";
        String str19 = "森林寻宝🎁领取[";
        String str20 = "_DRAW_SHARE";
        String str21 = "blance";
        String str22 = "drawAsset";
        String str23 = "FOREST_ACTIVITY_DRAW_SHARE";
        String str24 = "FOREST_NORMAL_DRAW_SHARE";
        UserIdMap.getCurrentUid();
        try {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            linkedHashSet.add("FOREST_NORMAL_DRAW_SHARE");
            linkedHashSet.add("FOREST_ACTIVITY_DRAW_SHARE");
            JSONObject jSONObject2 = new JSONObject(AntForestRpcCall.listTaskopengreen(str16 + "_TASK", "task_entry"));
            if (MessageUtil.checkSuccess(TAG, jSONObject2).booleanValue()) {
                JSONArray jSONArray = jSONObject2.getJSONArray("taskInfoList");
                int i7 = 0;
                while (i7 < jSONArray.length()) {
                    JSONObject jSONObject3 = jSONArray.getJSONObject(i7);
                    String str25 = str19;
                    JSONObject jSONObject4 = jSONObject3.getJSONObject("taskBaseInfo");
                    String str26 = str21;
                    String str27 = str22;
                    JSONObject jSONObject5 = new JSONObject(jSONObject4.getString("bizInfo"));
                    String string = jSONObject5.getString("title");
                    String str28 = str17;
                    String string2 = jSONObject4.getString("sceneCode");
                    String str29 = str23;
                    String string3 = jSONObject4.getString("taskStatus");
                    String str30 = str24;
                    String string4 = jSONObject4.getString("taskType");
                    JSONObject jSONObjectOptJSONObject = jSONObject3.optJSONObject("taskRights");
                    int iOptInt2 = jSONObjectOptJSONObject == null ? 0 : jSONObjectOptJSONObject.optInt("rightsTimes", 0);
                    int iOptInt3 = jSONObjectOptJSONObject == null ? 1 : jSONObjectOptJSONObject.optInt("rightsTimesLimit", 1);
                    if (string3.equals("FINISHED")) {
                        try {
                            TimeUtil.sleep(2000L);
                            JSONObject jSONObject6 = new JSONObject(AntForestRpcCall.receiveTaskAwardopengreen("task_entry", string2, string4));
                            if (MessageUtil.checkSuccess(TAG, jSONObject6).booleanValue()) {
                                Log.forest("森林寻宝🎖️[" + string + "]获得抽奖*" + jSONObject6.getInt("incAwardCount"));
                            }
                            if (iOptInt3 <= iOptInt2) {
                                str9 = str;
                                str12 = str3;
                                str20 = str20;
                            } else if (set2.contains(string)) {
                                TaskAlternative.handleGameTask(new TaskAlternative.GameTask("AntForestHuntTaskList", string, jSONObject5.optString("desc"), TaskAlternative.firstNonEmpty(jSONObject5.optString("taskJumpUrl"), jSONObject5.optString("targetUrl")), string3).bizKey(string4).rights(iOptInt2, iOptInt3).taskRemain(Math.max(0, jSONObject4.optInt("taskRequire", 0) - jSONObject4.optInt("taskProgress", 0))).taskPlayType(jSONObject4.optString("taskPlayType", jSONObject4.optString("taskProdPlayType"))).taskMode(jSONObject4.optString("taskMode")).taskSceneCode(string2).scene(string2, "ADBASICLIB").version(AntForestRpcCall.VERSION));
                                str9 = str;
                                str12 = str3;
                                str20 = str20;
                            } else {
                                if (string4.contains(str20) || !bool2.booleanValue() || Status.getforestHuntHelpToday(string4).intValue() >= set.size()) {
                                    str9 = str;
                                    str10 = "森林寻宝🎖️[";
                                    forestChouChouLe = this;
                                } else {
                                    String string5 = new JSONObject(jSONObject4.getString("prodPlayParam")).getString("p2pSceneCode");
                                    Log.forest("森林寻宝🎰️执行[" + str2 + "]助力好友[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
                                    forestChouChouLe = this;
                                    str9 = str;
                                    str10 = "森林寻宝🎖️[";
                                    forestChouChouLe.DoForestHuntHelp(set, str9, string5, string4);
                                }
                                length = jSONArray.length() - 1;
                                i = i7;
                                if (i == length) {
                                    i7 = i;
                                    if (bool3.booleanValue()) {
                                        i3 = iOptInt2;
                                        str12 = str3;
                                        if (str12.equals("ANTFOREST_NORMAL_DRAW")) {
                                            i2 = iOptInt3;
                                            if (Status.getforestHuntHelpToday(str30).intValue() < set.size()) {
                                                Log.forest("森林寻宝🎰️执行[普通场景]助力好友[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "](薅羊毛，如果助力结果不返回成功请关闭配置项)");
                                                str14 = str30;
                                                forestChouChouLe.DoForestHuntHelp(set, str9, "FOREST_NORMAL_20250829_SHARE", str14);
                                            }
                                        } else {
                                            i2 = iOptInt3;
                                        }
                                        str14 = str30;
                                    } else {
                                        i2 = iOptInt3;
                                        i3 = iOptInt2;
                                        str14 = str30;
                                        str12 = str3;
                                    }
                                    if (bool4.booleanValue() || !str12.equals("ANTFOREST_ACTIVITY_DRAW")) {
                                        str30 = str14;
                                    } else {
                                        str30 = str14;
                                        if (Status.getforestHuntHelpToday(str29).intValue() < set.size()) {
                                            Log.forest("森林寻宝🎰️执行[活动场景]助力好友[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "](薅羊毛，如果助力结果不返回成功请关闭配置项)");
                                            str11 = str29;
                                            forestChouChouLe.DoForestHuntHelp(set, str9, "FOREST_NORMAL_20251024_SHARE", str11);
                                        }
                                    }
                                    str11 = str29;
                                } else {
                                    i2 = iOptInt3;
                                    i3 = iOptInt2;
                                    i7 = i;
                                    str11 = str29;
                                    str12 = str3;
                                }
                                if (!string4.equals("NORMAL_DRAW_EXCHANGE_VITALITY") && string3.equals("TODO")) {
                                    try {
                                        JSONObject jSONObject7 = new JSONObject(AntForestRpcCall.queryVitalityStoreIndex());
                                        if (!MessageUtil.checkResultCode(TAG, jSONObject7).booleanValue()) {
                                            return;
                                        }
                                        str13 = str28;
                                        try {
                                            if (!jSONObject7.has(str13)) {
                                                return;
                                            } else {
                                                iOptInt = jSONObject7.getJSONObject(str13).optInt("totalVitalityAmount", 0);
                                            }
                                        } catch (Throwable th) {
                                            th = th;
                                            String str31 = TAG;
                                            Log.i(str31, "chouChouLesceneEXCHANGE err:");
                                            Log.printStackTrace(str31, th);
                                            iOptInt = 0;
                                        }
                                        if (iOptInt < 20) {
                                            Log.forest("森林寻宝🧾活力值" + iOptInt + "不能兑换#[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "]");
                                        } else {
                                            JSONObject jSONObject8 = new JSONObject(AntForestRpcCall.exchangeTimesFromTaskopengreen(str9, str12, "task_entry", string2, string4));
                                            if (MessageUtil.checkSuccess(TAG, jSONObject8).booleanValue()) {
                                                Log.forest(str10 + string + "]获得抽奖*" + jSONObject8.getInt("times"));
                                            }
                                        }
                                        str29 = str11;
                                        str20 = str20;
                                        str28 = str13;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        str13 = str28;
                                    }
                                } else if ((!string4.startsWith("FOREST_NORMAL_DRAW") || string4.startsWith("FOREST_ACTIVITY_DRAW")) && string3.equals("TODO")) {
                                    if (string4.contains(str20)) {
                                        i4 = i3;
                                        i5 = i2;
                                        iRightsTimesToDo = 1;
                                    } else {
                                        i4 = i3;
                                        i5 = i2;
                                        iRightsTimesToDo = TaskAlternative.rightsTimesToDo(i4, i5);
                                    }
                                    str28 = str28;
                                    i6 = 0;
                                    while (true) {
                                        if (i6 >= iRightsTimesToDo) {
                                            str29 = str11;
                                            str20 = str20;
                                            break;
                                        }
                                        TimeUtil.sleep(1000L);
                                        str29 = str11;
                                        if (string4.contains("XLIGHT")) {
                                            jSONObject = new JSONObject(AntForestRpcCall.finishTask4Chouchoule(string4, string2));
                                        } else {
                                            jSONObject = new JSONObject(AntForestRpcCall.finishTaskopengreen(string4, string2));
                                        }
                                        MessageUtil.checkResultCodeAndMarkTaskBlackList("AntForestHuntTaskList", string, jSONObject);
                                        if (!MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                                            break;
                                        }
                                        Log.forest("森林寻宝🧾完成[" + string + "]" + TaskAlternative.rightsProgressText(i4, i5, i6));
                                        forestChouChouLe.receiveHuntTaskAward(string2, string4, string);
                                        i6++;
                                        str20 = str20;
                                        str11 = str29;
                                    }
                                } else {
                                    str28 = str28;
                                    str29 = str11;
                                    str20 = str20;
                                    int i8 = i3;
                                    int i9 = i2;
                                    if (string3.equals("TODO")) {
                                        TimeUtil.sleep(1000L);
                                        JSONObject jSONObject9 = new JSONObject(AntForestRpcCall.finishTaskopengreen(string4, string2));
                                        MessageUtil.checkResultCodeAndMarkTaskBlackList("AntForestHuntTaskList", string, jSONObject9);
                                        if (MessageUtil.checkSuccess(TAG, jSONObject9).booleanValue()) {
                                            Log.forest("森林寻宝🧾完成[" + string + "]" + TaskAlternative.rightsProgressText(i8, i9, 0));
                                            forestChouChouLe.receiveHuntTaskAward(string2, string4, string);
                                        }
                                    }
                                }
                            }
                        } catch (Exception e) {
                            e = e;
                        }
                    } else if (set2.contains(string)) {
                        TaskAlternative.handleGameTask(new TaskAlternative.GameTask("AntForestHuntTaskList", string, jSONObject5.optString("desc"), TaskAlternative.firstNonEmpty(jSONObject5.optString("taskJumpUrl"), jSONObject5.optString("targetUrl")), string3).bizKey(string4).rights(iOptInt2, iOptInt3).taskRemain(Math.max(0, jSONObject4.optInt("taskRequire", 0) - jSONObject4.optInt("taskProgress", 0))).taskPlayType(jSONObject4.optString("taskPlayType", jSONObject4.optString("taskProdPlayType"))).taskMode(jSONObject4.optString("taskMode")).taskSceneCode(string2).scene(string2, "ADBASICLIB").version(AntForestRpcCall.VERSION));
                        str9 = str;
                        str12 = str3;
                        str20 = str20;
                    } else {
                        if (string4.contains(str20)) {
                            str9 = str;
                            str10 = "森林寻宝🎖️[";
                            forestChouChouLe = this;
                        } else {
                            str9 = str;
                            str10 = "森林寻宝🎖️[";
                            forestChouChouLe = this;
                        }
                        length = jSONArray.length() - 1;
                        i = i7;
                        if (i == length) {
                            i7 = i;
                            if (bool3.booleanValue()) {
                                i3 = iOptInt2;
                                str12 = str3;
                                if (str12.equals("ANTFOREST_NORMAL_DRAW")) {
                                    i2 = iOptInt3;
                                    if (Status.getforestHuntHelpToday(str30).intValue() < set.size()) {
                                        Log.forest("森林寻宝🎰️执行[普通场景]助力好友[" + UserIdMap.getShowName(UserIdMap.getCurrentUid()) + "](薅羊毛，如果助力结果不返回成功请关闭配置项)");
                                        str14 = str30;
                                        forestChouChouLe.DoForestHuntHelp(set, str9, "FOREST_NORMAL_20250829_SHARE", str14);
                                    }
                                } else {
                                    i2 = iOptInt3;
                                }
                                str14 = str30;
                            } else {
                                i2 = iOptInt3;
                                i3 = iOptInt2;
                                str14 = str30;
                                str12 = str3;
                            }
                            if (bool4.booleanValue()) {
                                str30 = str14;
                                str11 = str29;
                            } else {
                                str30 = str14;
                                str11 = str29;
                            }
                        } else {
                            i2 = iOptInt3;
                            i3 = iOptInt2;
                            i7 = i;
                            str11 = str29;
                            str12 = str3;
                        }
                        if (!string4.equals("NORMAL_DRAW_EXCHANGE_VITALITY")) {
                            if (!string4.startsWith("FOREST_NORMAL_DRAW")) {
                                if (string4.contains(str20)) {
                                    i4 = i3;
                                    i5 = i2;
                                    iRightsTimesToDo = 1;
                                } else {
                                    i4 = i3;
                                    i5 = i2;
                                    iRightsTimesToDo = TaskAlternative.rightsTimesToDo(i4, i5);
                                }
                                str28 = str28;
                                i6 = 0;
                                while (true) {
                                    if (i6 >= iRightsTimesToDo) {
                                        str29 = str11;
                                        str20 = str20;
                                        break;
                                    }
                                    TimeUtil.sleep(1000L);
                                    str29 = str11;
                                    if (string4.contains("XLIGHT")) {
                                        jSONObject = new JSONObject(AntForestRpcCall.finishTask4Chouchoule(string4, string2));
                                    } else {
                                        jSONObject = new JSONObject(AntForestRpcCall.finishTaskopengreen(string4, string2));
                                    }
                                    MessageUtil.checkResultCodeAndMarkTaskBlackList("AntForestHuntTaskList", string, jSONObject);
                                    if (!MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                                        break;
                                        break;
                                    }
                                    Log.forest("森林寻宝🧾完成[" + string + "]" + TaskAlternative.rightsProgressText(i4, i5, i6));
                                    forestChouChouLe.receiveHuntTaskAward(string2, string4, string);
                                    i6++;
                                    str20 = str20;
                                    str11 = str29;
                                }
                            } else {
                                if (string4.contains(str20)) {
                                    i4 = i3;
                                    i5 = i2;
                                    iRightsTimesToDo = 1;
                                } else {
                                    i4 = i3;
                                    i5 = i2;
                                    iRightsTimesToDo = TaskAlternative.rightsTimesToDo(i4, i5);
                                }
                                str28 = str28;
                                i6 = 0;
                                while (true) {
                                    if (i6 >= iRightsTimesToDo) {
                                        str29 = str11;
                                        str20 = str20;
                                        break;
                                    }
                                    TimeUtil.sleep(1000L);
                                    str29 = str11;
                                    if (string4.contains("XLIGHT")) {
                                        jSONObject = new JSONObject(AntForestRpcCall.finishTask4Chouchoule(string4, string2));
                                    } else {
                                        jSONObject = new JSONObject(AntForestRpcCall.finishTaskopengreen(string4, string2));
                                    }
                                    MessageUtil.checkResultCodeAndMarkTaskBlackList("AntForestHuntTaskList", string, jSONObject);
                                    if (!MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                                        break;
                                        break;
                                    }
                                    Log.forest("森林寻宝🧾完成[" + string + "]" + TaskAlternative.rightsProgressText(i4, i5, i6));
                                    forestChouChouLe.receiveHuntTaskAward(string2, string4, string);
                                    i6++;
                                    str20 = str20;
                                    str11 = str29;
                                }
                            }
                        } else if (!string4.startsWith("FOREST_NORMAL_DRAW")) {
                            if (string4.contains(str20)) {
                                i4 = i3;
                                i5 = i2;
                                iRightsTimesToDo = 1;
                            } else {
                                i4 = i3;
                                i5 = i2;
                                iRightsTimesToDo = TaskAlternative.rightsTimesToDo(i4, i5);
                            }
                            str28 = str28;
                            i6 = 0;
                            while (true) {
                                if (i6 >= iRightsTimesToDo) {
                                    str29 = str11;
                                    str20 = str20;
                                    break;
                                }
                                TimeUtil.sleep(1000L);
                                str29 = str11;
                                if (string4.contains("XLIGHT")) {
                                    jSONObject = new JSONObject(AntForestRpcCall.finishTask4Chouchoule(string4, string2));
                                } else {
                                    jSONObject = new JSONObject(AntForestRpcCall.finishTaskopengreen(string4, string2));
                                }
                                MessageUtil.checkResultCodeAndMarkTaskBlackList("AntForestHuntTaskList", string, jSONObject);
                                if (!MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                                    break;
                                    break;
                                }
                                Log.forest("森林寻宝🧾完成[" + string + "]" + TaskAlternative.rightsProgressText(i4, i5, i6));
                                forestChouChouLe.receiveHuntTaskAward(string2, string4, string);
                                i6++;
                                str20 = str20;
                                str11 = str29;
                            }
                        } else {
                            if (string4.contains(str20)) {
                                i4 = i3;
                                i5 = i2;
                                iRightsTimesToDo = 1;
                            } else {
                                i4 = i3;
                                i5 = i2;
                                iRightsTimesToDo = TaskAlternative.rightsTimesToDo(i4, i5);
                            }
                            str28 = str28;
                            i6 = 0;
                            while (true) {
                                if (i6 >= iRightsTimesToDo) {
                                    str29 = str11;
                                    str20 = str20;
                                    break;
                                }
                                TimeUtil.sleep(1000L);
                                str29 = str11;
                                if (string4.contains("XLIGHT")) {
                                    jSONObject = new JSONObject(AntForestRpcCall.finishTask4Chouchoule(string4, string2));
                                } else {
                                    jSONObject = new JSONObject(AntForestRpcCall.finishTaskopengreen(string4, string2));
                                }
                                MessageUtil.checkResultCodeAndMarkTaskBlackList("AntForestHuntTaskList", string, jSONObject);
                                if (!MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                                    break;
                                    break;
                                }
                                Log.forest("森林寻宝🧾完成[" + string + "]" + TaskAlternative.rightsProgressText(i4, i5, i6));
                                forestChouChouLe.receiveHuntTaskAward(string2, string4, string);
                                i6++;
                                str20 = str20;
                                str11 = str29;
                            }
                        }
                    }
                    str16 = str12;
                    str15 = str9;
                    str19 = str25;
                    str21 = str26;
                    str22 = str27;
                    str20 = str20;
                    str17 = str28;
                    str23 = str29;
                    str24 = str30;
                    jSONArray = jSONArray;
                    i7++;
                }
                str8 = str16;
                str4 = str19;
                str5 = str21;
                str6 = str22;
                str7 = str15;
            } else {
                str4 = "森林寻宝🎁领取[";
                str5 = "blance";
                str6 = "drawAsset";
                str7 = str15;
                str8 = str16;
            }
            if (bool.booleanValue()) {
                JSONObject jSONObject10 = new JSONObject(AntForestRpcCall.enterDrawActivityopengreen(str7, str8, "task_entry"));
                if (MessageUtil.checkSuccess(TAG, jSONObject10).booleanValue()) {
                    String str32 = str6;
                    String str33 = str5;
                    int i10 = jSONObject10.getJSONObject(str32).getInt(str33);
                    while (i10 > 0) {
                        JSONObject jSONObject11 = new JSONObject(AntForestRpcCall.drawopengreen(str7, str8, "task_entry", UserIdMap.getCurrentUid()));
                        if (MessageUtil.checkSuccess(TAG, jSONObject11).booleanValue()) {
                            i10 = jSONObject11.getJSONObject(str32).getInt(str33);
                            JSONObject jSONObject12 = jSONObject11.getJSONObject("prizeVO");
                            String string6 = jSONObject12.getString("prizeName");
                            int i11 = jSONObject12.getInt("prizeNum");
                            StringBuilder sb = new StringBuilder();
                            String str34 = str4;
                            sb.append(str34);
                            sb.append(string6);
                            String str35 = str18;
                            sb.append(str35);
                            sb.append(i11);
                            sb.append("]#[");
                            sb.append(UserIdMap.getShowName(UserIdMap.getCurrentUid()));
                            sb.append("]");
                            Log.forest(sb.toString());
                            Toast.show(str34 + string6 + str35 + i11 + "]");
                            if (string6.contains("g能量")) {
                                Statistics.addData(Statistics.DataType.COLLECTED, i11);
                            }
                            str4 = str34;
                            str18 = str35;
                        } else {
                            i10--;
                        }
                    }
                    return;
                }
                return;
            }
            return;
        } catch (Exception e2) {
            e = e2;
        }
        Log.printStackTrace(e);
    }

    void DoForestHuntHelp(Set<String> set, String str, String str2, String str3) {
        String str4;
        String currentUid = UserIdMap.getCurrentUid();
        try {
            for (String str5 : set) {
                int iIntValue = Status.getforestHuntHelpToday(str3).intValue();
                if (!Status.hasFlagToday(str3 + "::" + str5).booleanValue()) {
                    if (str5.length() > 20 && str5.length() < 28 && str3.equals("FOREST_NORMAL_DRAW_SHARE")) {
                        str4 = str5 + "4O7FEYDgn0xx0OehP5jt9YINZOkxgPDkvWvkwkQXSDbZ77VUJcjlcZsjGio6MsAtmwxkxkx";
                    } else if (str5.length() > 20 && str5.length() < 28 && str3.equals("FOREST_ACTIVITY_DRAW_SHARE")) {
                        str4 = str5 + "4O7FEYDgn0xx0OehP5jt9bxgpIW643h4FnWRjs9uZzng77VUJcjlcZsjGio6MsAtmwxkxkx";
                    } else {
                        Log.forest("森林寻宝🎰️存在错误usershareUserId:" + str5);
                    }
                    String strShareComponentRecall = shareComponentRecall(str2, str4);
                    if (!strShareComponentRecall.equals("解析userID失败")) {
                        TimeUtil.sleep(1500L);
                        if (strShareComponentRecall.length() == 16) {
                            String strConfirmShareRecall = confirmShareRecall(str, str2, str4, strShareComponentRecall);
                            TimeUtil.sleep(1500L);
                            if (UserIdMap.getShowName(strShareComponentRecall) != null) {
                                strShareComponentRecall = UserIdMap.getShowName(strShareComponentRecall);
                            }
                            Log.forest("森林寻宝👊助力[" + strShareComponentRecall + "]" + strConfirmShareRecall);
                            StringBuilder sb = new StringBuilder();
                            sb.append(str3);
                            sb.append("::");
                            sb.append(str5);
                            Status.flagToday(sb.toString(), currentUid);
                            Status.forestHuntHelpToday(str3, iIntValue + 1, currentUid);
                        }
                    }
                }
            }
        } catch (Throwable th) {
            Log.printStackTrace(TAG, th);
        }
    }

    private void receiveHuntTaskAward(String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject(AntForestRpcCall.receiveTaskAwardopengreen("task_entry", str, str2));
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                Log.forest("森林寻宝🎖️[" + str3 + "]获得抽奖*" + jSONObject.optInt("incAwardCount", 0));
            }
        } catch (Throwable th) {
            String str4 = TAG;
            Log.i(str4, "receiveHuntTaskAward err:");
            Log.printStackTrace(str4, th);
        }
    }

    private String shareComponentRecall(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(AntForestRpcCall.shareComponentRecall(str, str2));
            if (!MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                return "解析shareID失败";
            }
            if (jSONObject.has("inviterInfoVo")) {
                return jSONObject.getJSONObject("inviterInfoVo").getString("userId");
            }
            return "解析userID失败";
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "shareComponentRecall err:");
            Log.printStackTrace(str3, th);
            return "解析userID失败";
        }
    }

    private String confirmShareRecall(String str, String str2, String str3, String str4) {
        try {
            return new JSONObject(AntForestRpcCall.confirmShareRecall(str, str2, str3, str4)).getString("desc");
        } catch (Throwable th) {
            String str5 = TAG;
            Log.i(str5, "confirmShareRecall err:");
            Log.printStackTrace(str5, th);
            return "FALSE end";
        }
    }
}
