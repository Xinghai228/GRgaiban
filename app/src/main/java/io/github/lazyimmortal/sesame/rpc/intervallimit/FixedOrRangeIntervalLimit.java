package io.github.lazyimmortal.sesame.rpc.intervallimit;

import java.util.concurrent.ThreadLocalRandom;

/* JADX INFO: loaded from: classes.dex */
public class FixedOrRangeIntervalLimit implements IntervalLimit {
    private final Integer fixedInt;
    private final Boolean fixedOrRange;
    private final Integer rangeMax;
    private final Integer rangeMin;
    private Long time = 0L;

    @Override // io.github.lazyimmortal.sesame.rpc.intervallimit.IntervalLimit
    public Long getTime() {
        return this.time;
    }

    @Override // io.github.lazyimmortal.sesame.rpc.intervallimit.IntervalLimit
    public void setTime(Long l) {
        this.time = l;
    }

    public FixedOrRangeIntervalLimit(String str, int i, int i2) {
        int i3;
        i2 = i > i2 ? i : i2;
        if (str != null && !str.isEmpty()) {
            String[] strArrSplit = str.split("-");
            if (strArrSplit.length == 2) {
                try {
                    i = Math.max(Integer.parseInt(strArrSplit[0]), i);
                } catch (Exception unused) {
                }
                try {
                    i2 = Math.min(Integer.parseInt(strArrSplit[1]), i2);
                } catch (Exception unused2) {
                }
                i2 = i > i2 ? i : i2;
                this.fixedInt = null;
                this.rangeMin = Integer.valueOf(i);
                this.rangeMax = Integer.valueOf(i2 + 1);
                this.fixedOrRange = false;
                return;
            }
            try {
                i3 = Integer.parseInt(str);
            } catch (Exception unused3) {
                i3 = i2;
            }
            this.fixedInt = Integer.valueOf(Math.min(Math.max(i3, i), i2));
            this.rangeMin = null;
            this.rangeMax = null;
            this.fixedOrRange = true;
            return;
        }
        this.fixedInt = Integer.valueOf(i2);
        this.rangeMin = null;
        this.rangeMax = null;
        this.fixedOrRange = true;
    }

    @Override // io.github.lazyimmortal.sesame.rpc.intervallimit.IntervalLimit
    public Integer getInterval() {
        if (this.fixedOrRange.booleanValue()) {
            return this.fixedInt;
        }
        return Integer.valueOf(ThreadLocalRandom.current().nextInt(this.rangeMin.intValue(), this.rangeMax.intValue()));
    }
}
