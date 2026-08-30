package v3;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f5546b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f5547c = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f5549e = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicBoolean f5545a = new AtomicBoolean();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final AtomicBoolean f5548d = new AtomicBoolean();

    public static boolean a(Context context) {
        try {
            if (!f5547c) {
                try {
                    PackageInfo packageInfoC = d4.c.a(context).c(64, "com.google.android.gms");
                    g.a(context);
                    if (packageInfoC == null || g.d(packageInfoC, false) || !g.d(packageInfoC, true)) {
                        f5546b = false;
                    } else {
                        f5546b = true;
                    }
                    f5547c = true;
                } catch (PackageManager.NameNotFoundException e9) {
                    Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e9);
                    f5547c = true;
                }
            }
            return f5546b || !"user".equals(Build.TYPE);
        } catch (Throwable th) {
            f5547c = true;
            throw th;
        }
    }
}
