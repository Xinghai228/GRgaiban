package io.github.lazyimmortal.sesame.mtop.intervallimit;

import io.github.lazyimmortal.sesame.rpc.intervallimit.DefaultIntervalLimit;
import io.github.lazyimmortal.sesame.rpc.intervallimit.FixedOrRangeIntervalLimit;
import io.github.lazyimmortal.sesame.rpc.intervallimit.IntervalLimit;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class MtopIntervalLimit {
    private static final IntervalLimit DEFAULT_LIMIT = new DefaultIntervalLimit(50);
    private static final Map<String, IntervalLimit> MTOP_LIMIT_MAP = new ConcurrentHashMap();

    public static synchronized void addIntervalLimit(String str, Integer num) {
        MTOP_LIMIT_MAP.put(str, new DefaultIntervalLimit(num));
    }

    public static synchronized void addIntervalLimit(String str, String str2) {
        MTOP_LIMIT_MAP.put(str, new FixedOrRangeIntervalLimit(str2, 0, Integer.MAX_VALUE));
    }

    public static synchronized void addIntervalLimit(String str, IntervalLimit intervalLimit) {
        MTOP_LIMIT_MAP.put(str, intervalLimit);
    }

    public static synchronized void updateIntervalLimit(String str, Integer num) {
        MTOP_LIMIT_MAP.put(str, new DefaultIntervalLimit(num));
    }

    public static synchronized void updateIntervalLimit(String str, IntervalLimit intervalLimit) {
        MTOP_LIMIT_MAP.put(str, intervalLimit);
    }

    public static synchronized void clearIntervalLimit() {
        MTOP_LIMIT_MAP.clear();
    }

    public static void enterIntervalLimit(String str) {
        IntervalLimit intervalLimit = MTOP_LIMIT_MAP.get(str);
        if (intervalLimit == null) {
            intervalLimit = DEFAULT_LIMIT;
        }
        synchronized (intervalLimit) {
            long jIntValue = (((long) intervalLimit.getInterval().intValue()) - System.currentTimeMillis()) + intervalLimit.getTime().longValue();
            if (jIntValue > 0) {
                TimeUtil.sleep(jIntValue);
            }
            intervalLimit.setTime(Long.valueOf(System.currentTimeMillis()));
        }
    }
}
