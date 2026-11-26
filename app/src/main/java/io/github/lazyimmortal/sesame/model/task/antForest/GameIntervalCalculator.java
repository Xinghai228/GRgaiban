package io.github.lazyimmortal.sesame.model.task.antForest;

import io.github.lazyimmortal.sesame.util.RandomUtil;

/* JADX INFO: loaded from: classes.dex */
public class GameIntervalCalculator {

    public static class DynamicInterval {
        private final long baseInterval;
        private final long randomRange;

        public DynamicInterval(long j, long j2) {
            this.baseInterval = j;
            this.randomRange = j2;
        }

        public long getBaseInterval() {
            return this.baseInterval;
        }

        public long getRandomRange() {
            return this.randomRange;
        }
    }

    public static DynamicInterval calculateDynamicInterval(long j, int i) {
        long j2 = j - 2000;
        if (i <= 1) {
            return new DynamicInterval(0L, 0L);
        }
        double d = j2 / ((long) (i - 1));
        return new DynamicInterval(Math.max((long) (0.6d * d), 800L), Math.max((long) (d * 0.2d), 200L));
    }

    public static long calculateNextDelay(DynamicInterval dynamicInterval, int i, int i2, long j) {
        int i3 = i2 - i;
        if (i3 <= 0) {
            return 0L;
        }
        return Math.min(Math.max(dynamicInterval.getBaseInterval() + RandomUtil.nextLong(-dynamicInterval.getRandomRange(), dynamicInterval.getRandomRange() + 1), 500L), (j / ((long) i3)) - 500);
    }
}
