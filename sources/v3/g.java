package v3;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.util.Log;
import com.google.android.gms.common.internal.d0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static g f5550c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f5551a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile String f5552b;

    public g(Context context) {
        this.f5551a = context.getApplicationContext();
    }

    public static g a(Context context) {
        d0.h(context);
        synchronized (g.class) {
            try {
                if (f5550c == null) {
                    o.a(context);
                    f5550c = new g(context);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f5550c;
    }

    public static final l c(PackageInfo packageInfo, l... lVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr != null) {
            if (signatureArr.length != 1) {
                Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
                return null;
            }
            m mVar = new m(packageInfo.signatures[0].toByteArray());
            for (int i6 = 0; i6 < lVarArr.length; i6++) {
                if (lVarArr[i6].equals(mVar)) {
                    return lVarArr[i6];
                }
            }
        }
        return null;
    }

    public static final boolean d(PackageInfo packageInfo, boolean z5) {
        PackageInfo packageInfo2;
        if (!z5) {
            packageInfo2 = packageInfo;
        } else if (packageInfo != null) {
            if ("com.android.vending".equals(packageInfo.packageName) || "com.google.android.gms".equals(packageInfo.packageName)) {
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                z5 = (applicationInfo == null || (applicationInfo.flags & 129) == 0) ? false : true;
            }
            packageInfo2 = packageInfo;
        } else {
            packageInfo2 = null;
        }
        if (packageInfo != null && packageInfo2.signatures != null) {
            if ((z5 ? c(packageInfo2, n.f5566a) : c(packageInfo2, n.f5566a[0])) != null) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:78:0x019f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean b(int r18) {
        /*
            Method dump skipped, instruction units count: 517
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: v3.g.b(int):boolean");
    }
}
