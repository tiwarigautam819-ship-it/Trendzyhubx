package t4;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.Window;
import b2.k;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import p0.q;
import p0.r;
import u6.l;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    public static boolean a(c0.e[] eVarArr, c0.e[] eVarArr2) {
        if (eVarArr == null || eVarArr2 == null || eVarArr.length != eVarArr2.length) {
            return false;
        }
        for (int i6 = 0; i6 < eVarArr.length; i6++) {
            c0.e eVar = eVarArr[i6];
            char c8 = eVar.f994a;
            c0.e eVar2 = eVarArr2[i6];
            if (c8 != eVar2.f994a || eVar.f995b.length != eVar2.f995b.length) {
                return false;
            }
        }
        return true;
    }

    public static float[] b(float[] fArr, int i6) {
        if (i6 < 0) {
            throw new IllegalArgumentException();
        }
        int length = fArr.length;
        if (length < 0) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int iMin = Math.min(i6, length);
        float[] fArr2 = new float[i6];
        System.arraycopy(fArr, 0, fArr2, 0, iMin);
        return fArr2;
    }

    public static r c(Context context) {
        ProviderInfo providerInfo;
        g0.e eVar;
        ApplicationInfo applicationInfo;
        o3.a cVar = Build.VERSION.SDK_INT >= 28 ? new p0.c(2) : new o3.a(2);
        PackageManager packageManager = context.getPackageManager();
        k.b("Package manager required to locate emoji font provider", packageManager);
        Iterator<ResolveInfo> it = packageManager.queryIntentContentProviders(new Intent("androidx.content.action.LOAD_EMOJI_FONT"), 0).iterator();
        while (true) {
            if (!it.hasNext()) {
                providerInfo = null;
                break;
            }
            providerInfo = it.next().providerInfo;
            if (providerInfo != null && (applicationInfo = providerInfo.applicationInfo) != null && (applicationInfo.flags & 1) == 1) {
                break;
            }
        }
        if (providerInfo == null) {
            eVar = null;
        } else {
            try {
                String str = providerInfo.authority;
                String str2 = providerInfo.packageName;
                Signature[] signatureArrE = cVar.e(packageManager, str2);
                ArrayList arrayList = new ArrayList();
                for (Signature signature : signatureArrE) {
                    arrayList.add(signature.toByteArray());
                }
                eVar = new g0.e(str, str2, "emojicompat-emoji-font", Collections.singletonList(arrayList));
            } catch (PackageManager.NameNotFoundException e9) {
                Log.wtf("emoji2.text.DefaultEmojiConfig", e9);
                eVar = null;
            }
        }
        if (eVar == null) {
            return null;
        }
        return new r(new q(context, eVar));
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0096 A[Catch: NumberFormatException -> 0x00aa, LOOP:3: B:25:0x0068->B:44:0x0096, LOOP_END, TryCatch #0 {NumberFormatException -> 0x00aa, blocks: (B:22:0x0054, B:25:0x0068, B:27:0x006e, B:31:0x007a, B:44:0x0096, B:46:0x009c, B:52:0x00b1, B:53:0x00b4), top: B:68:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x009c A[Catch: NumberFormatException -> 0x00aa, TryCatch #0 {NumberFormatException -> 0x00aa, blocks: (B:22:0x0054, B:25:0x0068, B:27:0x006e, B:31:0x007a, B:44:0x0096, B:46:0x009c, B:52:0x00b1, B:53:0x00b4), top: B:68:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00b1 A[Catch: NumberFormatException -> 0x00aa, TryCatch #0 {NumberFormatException -> 0x00aa, blocks: (B:22:0x0054, B:25:0x0068, B:27:0x006e, B:31:0x007a, B:44:0x0096, B:46:0x009c, B:52:0x00b1, B:53:0x00b4), top: B:68:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00d7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0095 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static c0.e[] d(java.lang.String r17) {
        /*
            Method dump skipped, instruction units count: 268
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: t4.b.d(java.lang.String):c0.e[]");
    }

    public static int e(int i6, int i9, String str, boolean z5) {
        while (i6 < i9) {
            char cCharAt = str.charAt(i6);
            if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || ('0' <= cCharAt && cCharAt < ':') || (('a' <= cCharAt && cCharAt < '{') || (('A' <= cCharAt && cCharAt < '[') || cCharAt == ':'))) == (!z5)) {
                return i6;
            }
            i6++;
        }
        return i9;
    }

    public static c0.e[] f(c0.e[] eVarArr) {
        c0.e[] eVarArr2 = new c0.e[eVarArr.length];
        for (int i6 = 0; i6 < eVarArr.length; i6++) {
            eVarArr2[i6] = new c0.e(eVarArr[i6]);
        }
        return eVarArr2;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0037 A[Catch: all -> 0x006f, TRY_LEAVE, TryCatch #2 {, blocks: (B:6:0x000d, B:8:0x0013, B:15:0x0031, B:17:0x0037, B:24:0x0057, B:23:0x0054, B:14:0x002e, B:20:0x0050, B:11:0x002a), top: B:41:0x000d, inners: #0, #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String g(android.content.Context r6) {
        /*
            java.lang.String r0 = "XZ"
            java.lang.String r1 = y1.k.a()
            if (r1 != 0) goto L75
            java.lang.Object r1 = y1.k.c()
            monitor-enter(r1)
            java.lang.String r2 = y1.k.a()     // Catch: java.lang.Throwable -> L6f
            if (r2 != 0) goto L71
            java.lang.String r2 = "com.facebook.sdk.appEventPreferences"
            r3 = 0
            android.content.SharedPreferences r2 = r6.getSharedPreferences(r2, r3)     // Catch: java.lang.Throwable -> L6f
            java.lang.String r4 = "anonymousAppDeviceGUID"
            r5 = 0
            java.lang.String r2 = r2.getString(r4, r5)     // Catch: java.lang.Throwable -> L6f
            java.lang.Class<y1.k> r4 = y1.k.class
            boolean r5 = v2.a.b(r4)     // Catch: java.lang.Throwable -> L6f
            if (r5 == 0) goto L2a
            goto L31
        L2a:
            y1.k.f6131f = r2     // Catch: java.lang.Throwable -> L2d
            goto L31
        L2d:
            r2 = move-exception
            v2.a.a(r2, r4)     // Catch: java.lang.Throwable -> L6f
        L31:
            java.lang.String r2 = y1.k.a()     // Catch: java.lang.Throwable -> L6f
            if (r2 != 0) goto L71
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6f
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L6f
            java.util.UUID r0 = java.util.UUID.randomUUID()     // Catch: java.lang.Throwable -> L6f
            r2.append(r0)     // Catch: java.lang.Throwable -> L6f
            java.lang.String r0 = r2.toString()     // Catch: java.lang.Throwable -> L6f
            java.lang.Class<y1.k> r2 = y1.k.class
            boolean r4 = v2.a.b(r2)     // Catch: java.lang.Throwable -> L6f
            if (r4 == 0) goto L50
            goto L57
        L50:
            y1.k.f6131f = r0     // Catch: java.lang.Throwable -> L53
            goto L57
        L53:
            r0 = move-exception
            v2.a.a(r0, r2)     // Catch: java.lang.Throwable -> L6f
        L57:
            java.lang.String r0 = "com.facebook.sdk.appEventPreferences"
            android.content.SharedPreferences r6 = r6.getSharedPreferences(r0, r3)     // Catch: java.lang.Throwable -> L6f
            android.content.SharedPreferences$Editor r6 = r6.edit()     // Catch: java.lang.Throwable -> L6f
            java.lang.String r0 = "anonymousAppDeviceGUID"
            java.lang.String r2 = y1.k.a()     // Catch: java.lang.Throwable -> L6f
            android.content.SharedPreferences$Editor r6 = r6.putString(r0, r2)     // Catch: java.lang.Throwable -> L6f
            r6.apply()     // Catch: java.lang.Throwable -> L6f
            goto L71
        L6f:
            r6 = move-exception
            goto L73
        L71:
            monitor-exit(r1)
            goto L75
        L73:
            monitor-exit(r1)
            throw r6
        L75:
            java.lang.String r6 = y1.k.a()
            if (r6 == 0) goto L7c
            return r6
        L7c:
            java.lang.String r6 = "Required value was null."
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r0.<init>(r6)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: t4.b.g(android.content.Context):java.lang.String");
    }

    public static Object h(Bundle bundle, String str) {
        if (Build.VERSION.SDK_INT >= 34) {
            return f0.b.a(bundle, str);
        }
        Parcelable parcelable = bundle.getParcelable(str);
        if (d.a.class.isInstance(parcelable)) {
            return parcelable;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static long i(int r14, java.lang.String r15) {
        /*
            Method dump skipped, instruction units count: 327
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: t4.b.i(int, java.lang.String):long");
    }

    public static u6.k j(u6.k kVar, u6.k kVar2) {
        d7.g.f("context", kVar2);
        return kVar2 == l.f5505a ? kVar : (u6.k) kVar2.c(kVar, u6.c.f5498d);
    }

    public static void k(Window window, boolean z5) {
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 35) {
            d0.b.e(window, z5);
        } else {
            if (i6 >= 30) {
                d0.b.d(window, z5);
                return;
            }
            View decorView = window.getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            decorView.setSystemUiVisibility(z5 ? systemUiVisibility & (-1793) : systemUiVisibility | 1792);
        }
    }
}
