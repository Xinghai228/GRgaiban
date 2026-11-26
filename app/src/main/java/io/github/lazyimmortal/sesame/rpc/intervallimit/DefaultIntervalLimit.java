package io.github.lazyimmortal.sesame.rpc.intervallimit;

/* JADX INFO: loaded from: classes.dex */
public class DefaultIntervalLimit implements IntervalLimit {
    private final Integer interval;
    private Long time = 0L;

    protected boolean canEqual(Object obj) {
        return obj instanceof DefaultIntervalLimit;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DefaultIntervalLimit)) {
            return false;
        }
        DefaultIntervalLimit defaultIntervalLimit = (DefaultIntervalLimit) obj;
        if (!defaultIntervalLimit.canEqual(this)) {
            return false;
        }
        Integer interval = getInterval();
        Integer interval2 = defaultIntervalLimit.getInterval();
        if (interval != null ? !interval.equals(interval2) : interval2 != null) {
            return false;
        }
        Long time = getTime();
        Long time2 = defaultIntervalLimit.getTime();
        return time != null ? time.equals(time2) : time2 == null;
    }

    public int hashCode() {
        Integer interval = getInterval();
        int iHashCode = interval == null ? 43 : interval.hashCode();
        Long time = getTime();
        return ((iHashCode + 59) * 59) + (time != null ? time.hashCode() : 43);
    }

    @Override // io.github.lazyimmortal.sesame.rpc.intervallimit.IntervalLimit
    public void setTime(Long l) {
        this.time = l;
    }

    public String toString() {
        return "DefaultIntervalLimit(interval=" + getInterval() + ", time=" + getTime() + ")";
    }

    @Override // io.github.lazyimmortal.sesame.rpc.intervallimit.IntervalLimit
    public Integer getInterval() {
        return this.interval;
    }

    @Override // io.github.lazyimmortal.sesame.rpc.intervallimit.IntervalLimit
    public Long getTime() {
        return this.time;
    }

    public DefaultIntervalLimit(Integer num) {
        this.interval = num;
    }
}
