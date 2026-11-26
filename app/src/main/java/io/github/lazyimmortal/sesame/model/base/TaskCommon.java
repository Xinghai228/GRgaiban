package io.github.lazyimmortal.sesame.model.base;

import io.github.lazyimmortal.sesame.model.normal.base.BaseModel;
import io.github.lazyimmortal.sesame.util.TimeUtil;

/* JADX INFO: loaded from: classes.dex */
public class TaskCommon {
    public static volatile Boolean IS_ENERGY_TIME = false;
    public static volatile Boolean IS_AFTER_6AM = false;
    public static volatile Boolean IS_AFTER_8AM = false;

    public static void update() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        IS_ENERGY_TIME = TimeUtil.checkInTimeRange(Long.valueOf(jCurrentTimeMillis), BaseModel.getEnergyTime().getValue());
        IS_AFTER_6AM = TimeUtil.isAfterOrCompareTimeStr(Long.valueOf(jCurrentTimeMillis), "0600");
        IS_AFTER_8AM = TimeUtil.isAfterOrCompareTimeStr(Long.valueOf(jCurrentTimeMillis), "0800");
    }
}
