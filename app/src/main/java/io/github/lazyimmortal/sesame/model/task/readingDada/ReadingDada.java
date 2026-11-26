package io.github.lazyimmortal.sesame.model.task.readingDada;

import io.github.lazyimmortal.sesame.data.ModelGroup;
import io.github.lazyimmortal.sesame.model.normal.answerAI.AnswerAI;
import io.github.lazyimmortal.sesame.util.JsonUtil;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.StringUtil;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ReadingDada {
    private static final String TAG = "ReadingDada";

    public ModelGroup getGroup() {
        return ModelGroup.STALL;
    }

    public static boolean answerQuestion(JSONObject jSONObject) {
        String str;
        try {
            String strOptString = jSONObject.optString("taskJumpUrl");
            if (StringUtil.isEmpty(strOptString)) {
                strOptString = jSONObject.getString("targetUrl");
            }
            String str2 = strOptString.split("activityId%3D")[1].split("%26")[0];
            if (strOptString.contains("outBizId%3D")) {
                str = strOptString.split("outBizId%3D")[1].split("%26")[0];
            } else {
                str = "";
            }
            JSONObject jSONObject2 = new JSONObject(ReadingDadaRpcCall.getQuestion(str2));
            if ("200".equals(jSONObject2.getString("resultCode"))) {
                JSONArray jSONArray = jSONObject2.getJSONArray("options");
                String answer = AnswerAI.getAnswer(jSONObject2.getString("title"), JsonUtil.jsonArrayToList(jSONArray));
                if (answer == null || answer.isEmpty()) {
                    answer = jSONArray.getString(0);
                }
                if ("200".equals(new JSONObject(ReadingDadaRpcCall.submitAnswer(str2, str, jSONObject2.getString("questionId"), answer)).getString("resultCode"))) {
                    Log.record("答题完成");
                    return true;
                }
                Log.record("答题失败");
            } else {
                Log.record("获取问题失败");
            }
        } catch (Throwable th) {
            String str3 = TAG;
            Log.i(str3, "answerQuestion err:");
            Log.printStackTrace(str3, th);
        }
        return false;
    }
}
