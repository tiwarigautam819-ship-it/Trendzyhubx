package r1;

import android.app.NotificationChannel;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static /* synthetic */ NotificationChannel a() {
        return new NotificationChannel("MTPush_Private", "Notification", 3);
    }

    public static /* synthetic */ NotificationChannel b(int i6, String str, String str2) {
        return new NotificationChannel(str, str2, i6);
    }

    public static /* synthetic */ NotificationChannel e(String str) {
        return new NotificationChannel("com.google.android.gms.availability", str, 4);
    }
}
