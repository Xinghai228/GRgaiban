package androidx.core.app;

import android.app.Notification;
import android.app.job.JobWorkItem;
import android.content.Context;
import android.content.Intent;
import android.widget.ThemedSpinnerAdapter;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class Person$$ExternalSyntheticApiModelOutline0 {
    public static /* synthetic */ Notification.Builder m(Context context, String str) {
        return new Notification.Builder(context, str);
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ Notification.DecoratedCustomViewStyle m5m() {
        return new Notification.DecoratedCustomViewStyle();
    }

    public static /* synthetic */ Notification.MessagingStyle.Message m(CharSequence charSequence, long j, android.app.Person person) {
        return new Notification.MessagingStyle.Message(charSequence, j, person);
    }

    public static /* synthetic */ Notification.MessagingStyle.Message m(CharSequence charSequence, long j, CharSequence charSequence2) {
        return new Notification.MessagingStyle.Message(charSequence, j, charSequence2);
    }

    public static /* synthetic */ Notification.MessagingStyle m(android.app.Person person) {
        return new Notification.MessagingStyle(person);
    }

    public static /* synthetic */ Notification.MessagingStyle m(CharSequence charSequence) {
        return new Notification.MessagingStyle(charSequence);
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ android.app.Person.Builder m6m() {
        return new android.app.Person.Builder();
    }

    public static /* bridge */ /* synthetic */ android.app.Person m(Object obj) {
        return (android.app.Person) obj;
    }

    public static /* synthetic */ JobWorkItem m(Intent intent) {
        return new JobWorkItem(intent);
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ ThemedSpinnerAdapter m8m(Object obj) {
        return (ThemedSpinnerAdapter) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ void m12m() {
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ boolean m16m(Object obj) {
        return obj instanceof ThemedSpinnerAdapter;
    }

    public static /* synthetic */ void m$1() {
    }

    public static /* synthetic */ void m$2() {
    }
}
