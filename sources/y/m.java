package y;

import android.app.Notification;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import androidx.core.graphics.drawable.IconCompat;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m extends androidx.fragment.app.m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public IconCompat f6067b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public IconCompat f6068c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f6069d;

    @Override // androidx.fragment.app.m
    public final void a(com.google.firebase.messaging.y yVar) {
        Bitmap bitmapA;
        Notification.Builder builder = (Notification.Builder) yVar.f2163b;
        Context context = (Context) yVar.f2162a;
        Notification.BigPictureStyle bigContentTitle = new Notification.BigPictureStyle(builder).setBigContentTitle(null);
        IconCompat iconCompat = this.f6067b;
        if (iconCompat != null) {
            if (Build.VERSION.SDK_INT >= 31) {
                l.a(bigContentTitle, iconCompat.f(context));
            } else if (iconCompat.d() == 1) {
                IconCompat iconCompat2 = this.f6067b;
                int i6 = iconCompat2.f392a;
                if (i6 == -1) {
                    Object obj = iconCompat2.f393b;
                    bitmapA = obj instanceof Bitmap ? (Bitmap) obj : null;
                } else if (i6 == 1) {
                    bitmapA = (Bitmap) iconCompat2.f393b;
                } else {
                    if (i6 != 5) {
                        throw new IllegalStateException("called getBitmap() on " + iconCompat2);
                    }
                    bitmapA = IconCompat.a((Bitmap) iconCompat2.f393b, true);
                }
                bigContentTitle = bigContentTitle.bigPicture(bitmapA);
            }
        }
        if (this.f6069d) {
            IconCompat iconCompat3 = this.f6068c;
            if (iconCompat3 == null) {
                bigContentTitle.bigLargeIcon((Bitmap) null);
            } else {
                k.a(bigContentTitle, iconCompat3.f(context));
            }
        }
        if (Build.VERSION.SDK_INT >= 31) {
            l.c(bigContentTitle, false);
            l.b(bigContentTitle, null);
        }
    }

    @Override // androidx.fragment.app.m
    public final String b() {
        return "androidx.core.app.NotificationCompat$BigPictureStyle";
    }
}
