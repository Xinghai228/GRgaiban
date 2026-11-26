package io.github.lazyimmortal.sesame.util;

import android.content.Context;
import android.widget.Toast;
import io.github.lazyimmortal.sesame.model.normal.base.BaseModel;

/* JADX INFO: loaded from: classes.dex */
public class ToastUtil {
    public static void show(Context context, int i) {
        show(context, context.getText(i));
    }

    public static void show(Context context, CharSequence charSequence) {
        show(Toast.makeText(context, charSequence, 0));
    }

    private static void show(Toast toast) {
        toast.setGravity(toast.getGravity(), toast.getXOffset(), BaseModel.getToastOffsetY().getValue().intValue());
        toast.show();
    }
}
