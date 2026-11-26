package io.github.lazyimmortal.sesame.hook;

import android.content.Context;
import android.os.Handler;
import io.github.lazyimmortal.sesame.model.normal.base.BaseModel;
import io.github.lazyimmortal.sesame.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class Toast {
    private static final String TAG = "Toast";

    public static void show(CharSequence charSequence) {
        show(charSequence, false);
    }

    public static void show(CharSequence charSequence, boolean z) {
        Context context = ApplicationHook.getContext();
        if (context != null) {
            if (z || BaseModel.getShowToast().getValue().booleanValue()) {
                show(context, ApplicationHook.getMainHandler(), charSequence);
            }
        }
    }

    public static void show(final Context context, Handler handler, final CharSequence charSequence) {
        try {
            handler.post(new Runnable() { // from class: io.github.lazyimmortal.sesame.hook.Toast$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Toast.lambda$show$0(context, charSequence);
                }
            });
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "show err:");
            Log.printStackTrace(str, th);
        }
    }

    static /* synthetic */ void lambda$show$0(Context context, CharSequence charSequence) {
        try {
            android.widget.Toast toastMakeText = android.widget.Toast.makeText(context, charSequence, 0);
            toastMakeText.setGravity(toastMakeText.getGravity(), toastMakeText.getXOffset(), BaseModel.getToastOffsetY().getValue().intValue());
            toastMakeText.show();
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "show.run err:");
            Log.printStackTrace(str, th);
        }
    }
}
