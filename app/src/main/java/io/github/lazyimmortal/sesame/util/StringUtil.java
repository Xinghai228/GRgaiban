package io.github.lazyimmortal.sesame.util;

import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class StringUtil {
    public static boolean isEmpty(String str) {
        return str == null || str.isEmpty();
    }

    public static String collectionJoinString(CharSequence charSequence, Collection<?> collection) {
        if (!collection.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            Iterator<?> it = collection.iterator();
            sb.append(toStringOrEmpty(it.next()));
            while (it.hasNext()) {
                sb.append(charSequence);
                sb.append(toStringOrEmpty(it.next()));
            }
            return sb.toString();
        }
        return "";
    }

    public static String arrayJoinString(CharSequence charSequence, Object... objArr) {
        int length = objArr.length;
        if (length > 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(toStringOrEmpty(objArr[0]));
            for (int i = 1; i < length; i++) {
                sb.append(charSequence);
                sb.append(toStringOrEmpty(objArr[i]));
            }
            return sb.toString();
        }
        return "";
    }

    public static String arrayToString(Object... objArr) {
        return arrayJoinString(",", objArr);
    }

    private static String toStringOrEmpty(Object obj) {
        return Objects.toString(obj, "");
    }

    public static String padLeft(int i, int i2, char c) {
        return padLeft(String.valueOf(i), i2, c);
    }

    public static String padRight(int i, int i2, char c) {
        return padRight(String.valueOf(i), i2, c);
    }

    public static String padLeft(String str, int i, char c) {
        StringBuilder sb = new StringBuilder(str);
        while (sb.length() < i) {
            sb.insert(0, c);
        }
        return sb.toString();
    }

    public static String padRight(String str, int i, char c) {
        StringBuilder sb = new StringBuilder(str);
        while (sb.length() < i) {
            sb.append(c);
        }
        return sb.toString();
    }

    public static String getSubString(String str, String str2, String str3) {
        int iIndexOf = isEmpty(str2) ? 0 : str.indexOf(str2);
        if (iIndexOf == -1) {
            return "";
        }
        if (!isEmpty(str2)) {
            iIndexOf += str2.length();
        }
        int length = isEmpty(str3) ? str.length() : str.indexOf(str3, iIndexOf);
        if (length == -1) {
            return "";
        }
        return str.substring(iIndexOf, length);
    }
}
