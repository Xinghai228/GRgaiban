package androidx.core.text;

import android.content.Context;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.database.CursorWindow;
import android.graphics.drawable.Icon;
import android.hardware.fingerprint.FingerprintManager;
import android.os.LocaleList;
import android.telephony.SubscriptionManager;
import android.text.PrecomputedText;
import android.text.TextPaint;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.Mac;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class HtmlCompat$$ExternalSyntheticApiModelOutline0 {
    public static /* synthetic */ ShortcutInfo.Builder m(Context context, String str) {
        return new ShortcutInfo.Builder(context, str);
    }

    public static /* bridge */ /* synthetic */ ShortcutManager m(Object obj) {
        return (ShortcutManager) obj;
    }

    public static /* synthetic */ CursorWindow m(String str, long j) {
        return new CursorWindow(str, j);
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Icon m23m(Object obj) {
        return (Icon) obj;
    }

    public static /* synthetic */ FingerprintManager.CryptoObject m(Signature signature) {
        return new FingerprintManager.CryptoObject(signature);
    }

    public static /* synthetic */ FingerprintManager.CryptoObject m(Cipher cipher) {
        return new FingerprintManager.CryptoObject(cipher);
    }

    public static /* synthetic */ FingerprintManager.CryptoObject m(Mac mac) {
        return new FingerprintManager.CryptoObject(mac);
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ FingerprintManager m24m(Object obj) {
        return (FingerprintManager) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ LocaleList m26m(Object obj) {
        return (LocaleList) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ PrecomputedText.Params.Builder m27m(TextPaint textPaint) {
        return new PrecomputedText.Params.Builder(textPaint);
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ PrecomputedText m28m(Object obj) {
        return (PrecomputedText) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Class m33m() {
        return SubscriptionManager.class;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ void m38m() {
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ boolean m40m(Object obj) {
        return obj instanceof LocaleList;
    }

    /* JADX INFO: renamed from: m$1, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Class m42m$1() {
        return ShortcutManager.class;
    }

    /* JADX INFO: renamed from: m$1, reason: collision with other method in class */
    public static /* synthetic */ void m43m$1() {
    }

    public static /* bridge */ /* synthetic */ boolean m$1(Object obj) {
        return obj instanceof PrecomputedText;
    }

    public static /* bridge */ /* synthetic */ Class m$2() {
        return FingerprintManager.class;
    }
}
