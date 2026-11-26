package io.github.lazyimmortal.sesame.model.normal.answerAI;

import io.github.lazyimmortal.sesame.hook.ServerCommon;
import io.github.lazyimmortal.sesame.util.JsonUtil;
import io.github.lazyimmortal.sesame.util.Log;
import java.util.List;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class GeminiAI implements AnswerAIInterface {
    private final String token;
    private final String TAG = "GeminiAI";
    private final String url = "https://api.genai.gd.edu.kg/google";

    public GeminiAI(String str) {
        if (str != null && !str.isEmpty()) {
            this.token = str;
        } else {
            this.token = "";
        }
    }

    @Override // io.github.lazyimmortal.sesame.model.normal.answerAI.AnswerAIInterface
    public String getAnswerStr(String str) {
        AutoCloseable autoCloseable = null;
        try {
            Response responseExecute = new OkHttpClient().newBuilder().build().newCall(new Request.Builder().url("https://api.genai.gd.edu.kg/google/v1beta/models/gemini-1.5-flash:generateContent?key=" + this.token).method("POST", RequestBody.create("{\n    \"contents\": [\n        {\n            \"parts\": [\n                {\n                    \"text\": \"只回答答案 " + str + "\"\n                }\n            ]\n        }\n    ]\n}", MediaType.parse(ServerCommon.MIME_JSON))).addHeader("Content-Type", ServerCommon.MIME_JSON).build()).execute();
            if (responseExecute.body() == null) {
                return "";
            }
            String strString = responseExecute.body().string();
            if (responseExecute.isSuccessful()) {
                return JsonUtil.getValueByPath(new JSONObject(strString), "candidates.[0].content.parts.[0].text");
            }
            Log.other("Gemini请求失败");
            Log.i("Gemini接口异常：" + strString);
            return "";
        } catch (Throwable th) {
            Log.printStackTrace(this.TAG, th);
            if (0 == 0) {
                return "";
            }
            autoCloseable.close();
            return "";
        }
    }

    @Override // io.github.lazyimmortal.sesame.model.normal.answerAI.AnswerAIInterface
    public Integer getAnswer(String str, List<String> list) {
        StringBuilder sb = new StringBuilder();
        for (String str2 : list) {
            sb.append("[");
            sb.append(str2);
            sb.append("]");
        }
        String answerStr = getAnswerStr(str + "\n" + ((Object) sb));
        if (answerStr != null && !answerStr.isEmpty()) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (answerStr.contains(list.get(i))) {
                    return Integer.valueOf(i);
                }
            }
        }
        return -1;
    }
}
