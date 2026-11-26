package io.github.lazyimmortal.sesame.entity;

/* JADX INFO: loaded from: classes.dex */
public class AlipayVersion implements Comparable<AlipayVersion> {
    private final Integer[] versionArray;
    private final String versionString;

    public String getVersionString() {
        return this.versionString;
    }

    public Integer[] getVersionArray() {
        return this.versionArray;
    }

    public AlipayVersion(String str) {
        this.versionString = str;
        String[] strArrSplit = str.split("\\.");
        int length = strArrSplit.length;
        this.versionArray = new Integer[length];
        for (int i = 0; i < length; i++) {
            try {
                this.versionArray[i] = Integer.valueOf(Integer.parseInt(strArrSplit[i]));
            } catch (Exception unused) {
                this.versionArray[i] = Integer.MAX_VALUE;
            }
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(AlipayVersion alipayVersion) {
        int i;
        int length = this.versionArray.length;
        int length2 = alipayVersion.versionArray.length;
        if (length > length2) {
            length = length2;
            i = 1;
        } else {
            i = length < length2 ? -1 : 0;
        }
        for (int i2 = 0; i2 < length; i2++) {
            Integer num = this.versionArray[i2];
            Integer num2 = alipayVersion.versionArray[i2];
            if (num.intValue() < num2.intValue()) {
                return -1;
            }
            if (num.intValue() > num2.intValue()) {
                return 1;
            }
        }
        return i;
    }

    public String toString() {
        return this.versionString;
    }
}
