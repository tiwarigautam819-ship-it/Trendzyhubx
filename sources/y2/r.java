package y2;

import android.content.Context;
import android.content.pm.PackageManager;
import java.util.concurrent.Executors;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f6241c = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6242a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final y1.n f6243b;

    static {
        Executors.newSingleThreadScheduledExecutor();
    }

    public r(Context context, String str) {
        this.f6242a = str;
        this.f6243b = new y1.n(context, str);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null) {
                packageManager.getPackageInfo("com.facebook.katana", 0);
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }
}
