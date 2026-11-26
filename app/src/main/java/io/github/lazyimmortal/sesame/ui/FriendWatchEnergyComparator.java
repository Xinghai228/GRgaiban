package io.github.lazyimmortal.sesame.ui;

import io.github.lazyimmortal.sesame.entity.FriendWatch;
import io.github.lazyimmortal.sesame.entity.IdAndName;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class FriendWatchEnergyComparator implements Comparator {
    private final int field;

    public FriendWatchEnergyComparator(int i) {
        this.field = i;
    }

    public static long getMetric(IdAndName idAndName, int i) {
        FriendWatch friendWatch = (FriendWatch) idAndName;
        switch (i) {
            case 1:
                return friendWatch.getWeekGet();
            case 2:
                return friendWatch.getAllGet();
            case 3:
                return friendWatch.getDailyAverage();
            case 4:
                return friendWatch.getThisWeekAverage();
            case 5:
                return friendWatch.getTwoWeekAverage();
            case 6:
                return friendWatch.getThreeWeekAverage();
            case 7:
                return friendWatch.getFourWeekAverage();
            default:
                return friendWatch.getDayGet();
        }
    }

    public static void sortDescending(List list, int i) {
        Collections.sort(list, new FriendWatchEnergyComparator(i));
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        int i = this.field;
        return Long.compare(getMetric((IdAndName) obj2, i), getMetric((IdAndName) obj, i));
    }
}
