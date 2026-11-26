package io.github.lazyimmortal.sesame.model.task.readingDada;

import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.util.StringUtil;

/* JADX INFO: loaded from: classes.dex */
public class ReadingDadaRpcCall {
    private static final String VERSION = "1";

    public static String submitAnswer(String str, String str2, String str3, String str4) {
        String str5;
        StringBuilder sb = new StringBuilder("[{\"activityId\":\"");
        sb.append(str);
        sb.append("\",\"answer\":\"");
        sb.append(str4);
        sb.append("\",\"dadaVersion\":\"1.3.0\",");
        if (StringUtil.isEmpty(str2)) {
            str5 = "";
        } else {
            str5 = "\"outBizId\":\"" + str2 + "\",";
        }
        sb.append(str5);
        sb.append("\"questionId\":\"");
        sb.append(str3);
        sb.append("\",\"version\":1}]");
        return ApplicationHook.requestString("com.alipay.reading.game.dada.openDailyAnswer.submitAnswer", sb.toString());
    }

    public static String getQuestion(String str) {
        return ApplicationHook.requestString("com.alipay.reading.game.dada.openDailyAnswer.getQuestion", "[{\"activityId\":\"" + str + "\",\"dadaVersion\":\"1.3.0\",\"version\":1}]");
    }
}
