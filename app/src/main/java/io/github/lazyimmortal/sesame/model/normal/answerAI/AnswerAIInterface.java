package io.github.lazyimmortal.sesame.model.normal.answerAI;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface AnswerAIInterface {
    Integer getAnswer(String str, List<String> list);

    String getAnswerStr(String str);

    /* JADX INFO: renamed from: io.github.lazyimmortal.sesame.model.normal.answerAI.AnswerAIInterface$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static AnswerAIInterface getInstance() {
            return new AnswerAIInterface() { // from class: io.github.lazyimmortal.sesame.model.normal.answerAI.AnswerAIInterface.1
                @Override // io.github.lazyimmortal.sesame.model.normal.answerAI.AnswerAIInterface
                public String getAnswerStr(String str) {
                    return "";
                }

                @Override // io.github.lazyimmortal.sesame.model.normal.answerAI.AnswerAIInterface
                public Integer getAnswer(String str, List<String> list) {
                    return -1;
                }
            };
        }
    }
}
