package io.github.lazyimmortal.sesame.util;

import java.util.Random;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class RandomUtil {
    private static final Random rnd = new Random();

    public static int delay() {
        return nextInt(100, 300);
    }

    public static int nextInt(int i, int i2) {
        int i3;
        return (i < i2 && (i3 = i2 - i) > 0) ? rnd.nextInt(i3) + i : i;
    }

    public static long nextLong() {
        return rnd.nextLong();
    }

    public static long nextLong(long j, long j2) {
        if (j >= j2) {
            return j;
        }
        return (rnd.nextLong() % (j2 - j)) + j;
    }

    public static double nextDouble() {
        return rnd.nextDouble();
    }

    public static String getRandom(int i) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(rnd.nextInt(10));
        }
        return sb.toString();
    }

    public static String getRandomString(int i) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("abcdefghijklmnopqrstuvwxyz0123456789".charAt(rnd.nextInt(36)));
        }
        return sb.toString();
    }

    public static String getRandomUUID() {
        return UUID.randomUUID().toString();
    }
}
