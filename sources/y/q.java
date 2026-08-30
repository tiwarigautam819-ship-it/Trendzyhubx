package y;

import android.app.Notification;
import android.app.NotificationManager;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class q {
    public static boolean a(NotificationManager notificationManager) {
        return notificationManager.areNotificationsEnabled();
    }

    public static void b(Notification.Action.Builder builder, boolean z5) {
        builder.setAllowGeneratedReplies(z5);
    }

    public static void c(Notification.Builder builder) {
        builder.setRemoteInputHistory(null);
    }
}
