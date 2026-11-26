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
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class TongyiAI implements AnswerAIInterface {
    private final String token;
    private final String TAG = "TongyiAI";
    private final String url = "https://dashscope.aliyuncs.com/compatible-mode/v1/chat/completions";

    public TongyiAI(String str) {
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
            OkHttpClient okHttpClientBuild = new OkHttpClient().newBuilder().build();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("role", "user");
            jSONObject.put("content", str);
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("model", "qwen-turbo");
            jSONObject2.put("messages", jSONArray);
            Response responseExecute = okHttpClientBuild.newCall(new Request.Builder().url("https://dashscope.aliyuncs.com/compatible-mode/v1/chat/completions").method("POST", RequestBody.create(jSONObject2.toString(), MediaType.parse(ServerCommon.MIME_JSON))).addHeader("Authorization", "Bearer " + this.token).addHeader("Content-Type", ServerCommon.MIME_JSON).build()).execute();
            if (responseExecute.body() == null) {
                return "";
            }
            String strString = responseExecute.body().string();
            if (!responseExecute.isSuccessful()) {
                Log.other("Tongyi请求失败");
                Log.i("Tongyi接口异常：" + strString);
                return "";
            }
            return JsonUtil.getValueByPath(new JSONObject(strString), "choices.[0].message.content");
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
        int size = list.size();
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            sb.append(i2);
            sb.append(".[");
            sb.append(list.get(i));
            sb.append("]\n");
            i = i2;
        }
        String answerStr = getAnswerStr("问题：" + str + "\n\n答案列表：\n\n" + ((Object) sb) + "\n\n请只返回答案列表中的序号");
        if (answerStr != null && !answerStr.isEmpty()) {
            try {
                int i3 = Integer.parseInt(answerStr) - 1;
                if (i3 >= 0 && i3 < size) {
                    return Integer.valueOf(i3);
                }
            } catch (Exception unused) {
                Log.record("AI🧠回答，返回数据：" + answerStr);
            }
            for (int i4 = 0; i4 < size; i4++) {
                if (answerStr.contains(list.get(i4))) {
                    return Integer.valueOf(i4);
                }
            }
        }
        return -1;
    }
}
