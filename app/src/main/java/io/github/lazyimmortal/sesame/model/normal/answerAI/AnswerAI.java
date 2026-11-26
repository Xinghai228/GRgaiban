package io.github.lazyimmortal.sesame.model.normal.answerAI;

import io.github.lazyimmortal.sesame.data.Model;
import io.github.lazyimmortal.sesame.data.ModelFields;
import io.github.lazyimmortal.sesame.data.ModelGroup;
import io.github.lazyimmortal.sesame.data.TokenConfig;
import io.github.lazyimmortal.sesame.data.modelFieldExt.ChoiceModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.StringModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.TextModelField;
import io.github.lazyimmortal.sesame.util.Log;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class AnswerAI extends Model {
    private static final String TAG = "AnswerAI";
    private static AnswerAIInterface answerAIInterface;
    private static Boolean enable = false;
    private final ChoiceModelField aiType = new ChoiceModelField("useGeminiAI", "AI类型", 0, AIType.nickNames);
    private final TextModelField.UrlTextModelField getTongyiAIToken = new TextModelField.UrlTextModelField("getTongyiAIToken", "通义千问 | 获取令牌", "https://help.aliyun.com/zh/dashscope/developer-reference/acquisition-and-configuration-of-api-key");
    private final StringModelField setTongyiAIToken = new StringModelField("setTongyiAIToken", "通义千问 | 设置令牌", "");
    private final StringModelField setGeminiAIToken = new StringModelField("useGeminiAIToken", "GeminiAI | 设置令牌", "");

    public interface AIType {
        public static final int GEMINI = 1;
        public static final int TONGYI = 0;
        public static final String[] nickNames = {"通义千问", "GEMINI"};
    }

    @Override // io.github.lazyimmortal.sesame.data.Model
    public String getName() {
        return "AI答";
    }

    @Override // io.github.lazyimmortal.sesame.data.Model
    public ModelGroup getGroup() {
        return ModelGroup.OTHER;
    }

    @Override // io.github.lazyimmortal.sesame.data.Model
    public ModelFields getFields() {
        ModelFields modelFields = new ModelFields();
        modelFields.addField(this.aiType);
        modelFields.addField(this.getTongyiAIToken);
        modelFields.addField(this.setTongyiAIToken);
        modelFields.addField(this.setGeminiAIToken);
        return modelFields;
    }

    @Override // io.github.lazyimmortal.sesame.data.Model
    public void boot(ClassLoader classLoader) {
        enable = getEnableField().getValue();
        int iIntValue = this.aiType.getValue().intValue();
        if (iIntValue == 0) {
            answerAIInterface = new TongyiAI(this.setTongyiAIToken.getValue());
        } else if (iIntValue == 1) {
            answerAIInterface = new GeminiAI(this.setGeminiAIToken.getValue());
        } else {
            answerAIInterface = AnswerAIInterface.CC.getInstance();
        }
    }

    public static String getAnswer(String str) {
        try {
            if (enable.booleanValue()) {
                Log.record("AI🧠答题，问题：[" + str + "]");
                return answerAIInterface.getAnswerStr(str);
            }
            Log.record("开始答题，问题：[" + str + "]");
            return "";
        } catch (Throwable th) {
            Log.printStackTrace(TAG, th);
            return "";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.Object, java.util.List, java.util.List<java.lang.String>] */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v8 */
    public static String getAnswer(String str, List<String> list) {
        ?? r3;
        ?? r4 = "";
        try {
            Log.record("知识问答🧠题目[" + str + "]#选项" + ((Object) list));
            try {
                if (enable.booleanValue()) {
                    Integer answer = answerAIInterface.getAnswer(str, list);
                    r3 = r4;
                    if (answer != null) {
                        r3 = r4;
                        if (answer.intValue() >= 0) {
                            r3 = r4;
                            if (answer.intValue() < list.size()) {
                                String str2 = (String) list.get(answer.intValue());
                                Log.record("智能回答🧠[" + str2 + "]");
                                list = str2;
                                r3 = list;
                            }
                        }
                    }
                } else {
                    r3 = r4;
                    if (!list.isEmpty()) {
                        String str3 = (String) list.get(0);
                        Log.record("普通回答🤖[" + str3 + "]");
                        list = str3;
                        r3 = list;
                    }
                }
            } catch (Throwable th) {
                th = th;
                r4 = list;
                Log.printStackTrace(TAG, th);
                r3 = r4;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        String answer2 = TokenConfig.getAnswer(str);
        if (answer2 == null || Objects.equals(r3, answer2)) {
            return r3;
        }
        Log.record("检测即将提交错误的回答，已自动纠正!新回答:" + answer2);
        return answer2;
    }
}
