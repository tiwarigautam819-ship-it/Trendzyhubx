package i2;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import androidx.fragment.app.m1;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static String f3167d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final q f3164a = new q();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ConcurrentHashMap f3165b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ConcurrentHashMap f3166c = new ConcurrentHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final AtomicBoolean f3168e = new AtomicBoolean(false);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0101 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x012f A[Catch: all -> 0x0104, TryCatch #0 {all -> 0x0104, blocks: (B:34:0x00d3, B:37:0x00da, B:43:0x00e8, B:49:0x00f8, B:55:0x0107, B:63:0x0122, B:67:0x012f, B:62:0x011e, B:40:0x00df, B:44:0x00ef, B:72:0x014f, B:73:0x0154, B:76:0x0164, B:78:0x016b, B:79:0x0174, B:82:0x018d, B:84:0x0195, B:85:0x019d, B:87:0x01a5, B:96:0x01e4, B:90:0x01bb, B:92:0x01c3, B:93:0x01cb, B:95:0x01d3, B:97:0x01ea, B:99:0x01f3, B:101:0x01fd, B:105:0x0215, B:106:0x021a, B:108:0x0220, B:110:0x023c, B:113:0x0244, B:115:0x024a, B:116:0x0252, B:117:0x025a, B:119:0x0260, B:120:0x0268, B:102:0x0208, B:59:0x0118), top: B:133:0x00d3, inners: #2 }] */
    /* JADX WARN: Type inference failed for: r0v19, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v40 */
    /* JADX WARN: Type inference failed for: r0v41 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3, types: [java.lang.Long] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6, types: [java.lang.Long] */
    /* JADX WARN: Type inference failed for: r11v7, types: [java.lang.Long] */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [android.os.Bundle] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4, types: [android.os.BaseBundle] */
    /* JADX WARN: Type inference failed for: r8v5, types: [android.os.Bundle] */
    /* JADX WARN: Type inference failed for: r8v6, types: [android.os.BaseBundle] */
    /* JADX WARN: Type inference failed for: r8v7, types: [android.os.Bundle] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final synchronized android.os.Bundle c(java.util.List r28, long r29, boolean r31, java.util.List r32) {
        /*
            Method dump skipped, instruction units count: 640
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: i2.q.c(java.util.List, long, boolean, java.util.List):android.os.Bundle");
    }

    public static final void d() {
        if (v2.a.b(q.class)) {
            return;
        }
        try {
            if (f3168e.get()) {
                int iA = f3164a.a();
                int iE = m1.e(iA);
                if (iE == 1) {
                    e.b(2);
                    return;
                }
                if (iE != 2) {
                    if (iE == 3 && q2.q.b(q2.o.IapLoggingLib5To7)) {
                        g.b(x1.r.a(), iA);
                        return;
                    }
                    return;
                }
                if (q2.q.b(q2.o.IapLoggingLib2)) {
                    g.b(x1.r.a(), iA);
                } else {
                    e.b(3);
                }
            }
        } catch (Throwable th) {
            v2.a.a(th, q.class);
        }
    }

    public final int a() {
        if (v2.a.b(this)) {
            return 0;
        }
        try {
            Context contextA = x1.r.a();
            ApplicationInfo applicationInfo = contextA.getPackageManager().getApplicationInfo(contextA.getPackageName(), 128);
            d7.g.e("context.packageManager.g…TA_DATA\n                )", applicationInfo);
            String string = applicationInfo.metaData.getString("com.google.android.play.billingclient.version");
            if (string == null) {
                return 1;
            }
            List listJ = k7.g.J(string, new String[]{"."}, 3, 2);
            if (string.length() != 0) {
                String strConcat = "GPBL.".concat(string);
                if (!v2.a.b(q.class)) {
                    try {
                        f3167d = strConcat;
                    } catch (Throwable th) {
                        v2.a.a(th, q.class);
                    }
                }
                Integer numP = k7.n.p((String) listJ.get(0));
                if (numP != null) {
                    int iIntValue = numP.intValue();
                    if (iIntValue == 1) {
                        return 2;
                    }
                    return iIntValue < 5 ? 3 : 4;
                }
            }
        } catch (Exception unused) {
        } catch (Throwable th2) {
            v2.a.a(th2, this);
            return 0;
        }
        return 4;
    }

    public final String b(Bundle bundle, y1.o oVar, Bundle bundle2, y1.o oVar2, boolean z5, boolean z8) {
        if (!v2.a.b(this)) {
            try {
                List<r6.d> listC = z8 ? n.c(z5) : n.b(z5);
                if (listC != null) {
                    for (r6.d dVar : listC) {
                        Map map = y1.o.f6140b;
                        Object objO = y1.g.o((String) dVar.f4993a, bundle, oVar);
                        String str = objO instanceof String ? (String) objO : null;
                        if (str != null && str.length() != 0) {
                            for (String str2 : (List) dVar.f4994b) {
                                Map map2 = y1.o.f6140b;
                                Object objO2 = y1.g.o(str2, bundle2, oVar2);
                                String str3 = objO2 instanceof String ? (String) objO2 : null;
                                if (str3 != null && str3.length() != 0 && str3.equals(str)) {
                                    return z5 ? (String) dVar.f4993a : str2;
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                v2.a.a(th, this);
                return null;
            }
        }
        return null;
    }
}
