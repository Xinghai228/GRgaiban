package io.github.lazyimmortal.sesame.rpc.intervallimit;

import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.TimeUtil;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class RpcIntervalLimit {
    private static final IntervalLimit defaultIntervalLimit = new DefaultIntervalLimit(50);
    private static final Map<String, IntervalLimit> intervalLimitMap = new ConcurrentHashMap();

    public static synchronized void addIntervalLimit(String str, Integer num) {
        addIntervalLimit(str, new DefaultIntervalLimit(num));
    }

    public static synchronized void addIntervalLimit(String str, IntervalLimit intervalLimit) {
        Map<String, IntervalLimit> map = intervalLimitMap;
        if (map.containsKey(str)) {
            Log.i("方法：" + str + " 间隔限制已存在");
            throw new IllegalArgumentException("方法：" + str + " 间隔限制已存在");
        }
        map.put(str, intervalLimit);
    }

    public static synchronized void updateIntervalLimit(String str, Integer num) {
        updateIntervalLimit(str, new DefaultIntervalLimit(num));
    }

    public static synchronized void updateIntervalLimit(String str, IntervalLimit intervalLimit) {
        intervalLimitMap.put(str, intervalLimit);
    }

    public static void enterIntervalLimit(String str) {
        IntervalLimit intervalLimit = intervalLimitMap.get(str);
        if (intervalLimit == null) {
            intervalLimit = defaultIntervalLimit;
        }
        synchronized (intervalLimit) {
            long jIntValue = (((long) intervalLimit.getInterval().intValue()) - System.currentTimeMillis()) + intervalLimit.getTime().longValue();
            if (jIntValue > 0) {
                TimeUtil.sleep(jIntValue);
            }
            intervalLimit.setTime(Long.valueOf(System.currentTimeMillis()));
        }
    }

    public static synchronized void clearIntervalLimit() {
        intervalLimitMap.clear();
    }
}
