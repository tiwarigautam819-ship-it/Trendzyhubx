package y;

import android.app.Notification;
import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class r {
    public static Notification.Builder a(Context context, String str) {
        return new Notification.Builder(context, str);
    }

    public static void b(Notification.Builder builder) {
        builder.setBadgeIconType(0);
    }

    public static void c(Notification.Builder builder) {
        builder.setGroupAlertBehavior(0);
    }

    public static void d(Notification.Builder builder) {
        builder.setSettingsText(null);
    }

    public static void e(Notification.Builder builder) {
        builder.setShortcutId(null);
    }

    public static void f(Notification.Builder builder) {
        builder.setTimeoutAfter(0L);
    }
}
