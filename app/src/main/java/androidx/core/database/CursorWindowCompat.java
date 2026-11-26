package androidx.core.database;

import android.database.CursorWindow;
import android.os.Build;
import androidx.core.text.HtmlCompat$$ExternalSyntheticApiModelOutline0;

/* JADX INFO: loaded from: classes.dex */
public final class CursorWindowCompat {
    private CursorWindowCompat() {
    }

    public static CursorWindow create(String str, long j) {
        if (Build.VERSION.SDK_INT >= 28) {
            return HtmlCompat$$ExternalSyntheticApiModelOutline0.m(str, j);
        }
        return new CursorWindow(str);
    }
}
