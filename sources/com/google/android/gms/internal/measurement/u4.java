package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.net.Uri;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class u4 implements x4 {
    public static final s.e h = new s.e(0);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String[] f1924i = {"key", "value"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ContentResolver f1925a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Uri f1926b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Runnable f1927c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final r4 f1928d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f1929e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile Map f1930f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f1931g;

    public u4(ContentResolver contentResolver, Uri uri, Runnable runnable) {
        r4 r4Var = new r4(1, this);
        this.f1928d = r4Var;
        this.f1929e = new Object();
        this.f1931g = new ArrayList();
        contentResolver.getClass();
        uri.getClass();
        this.f1925a = contentResolver;
        this.f1926b = uri;
        this.f1927c = runnable;
        contentResolver.registerContentObserver(uri, false, r4Var);
    }

    public static u4 a(ContentResolver contentResolver, Uri uri, Runnable runnable) {
        u4 u4Var;
        synchronized (u4.class) {
            s.e eVar = h;
            u4Var = (u4) eVar.get(uri);
            if (u4Var == null) {
                try {
                    u4 u4Var2 = new u4(contentResolver, uri, runnable);
                    try {
                        eVar.put(uri, u4Var2);
                    } catch (SecurityException unused) {
                    }
                    u4Var = u4Var2;
                } catch (SecurityException unused2) {
                }
            }
        }
        return u4Var;
    }

    public static synchronized void c() {
        try {
            for (u4 u4Var : (s.d) h.values()) {
                u4Var.f1925a.unregisterContentObserver(u4Var.f1928d);
            }
            h.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0055 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0056  */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.os.StrictMode$ThreadPolicy, java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.Map b() {
        /*
            r5 = this;
            java.util.Map r0 = r5.f1930f
            if (r0 != 0) goto L53
            java.lang.Object r1 = r5.f1929e
            monitor-enter(r1)
            java.util.Map r0 = r5.f1930f     // Catch: java.lang.Throwable -> L49
            if (r0 != 0) goto L4f
            android.os.StrictMode$ThreadPolicy r0 = android.os.StrictMode.allowThreadDiskReads()     // Catch: java.lang.Throwable -> L49
            com.google.android.gms.internal.measurement.o6 r2 = new com.google.android.gms.internal.measurement.o6     // Catch: java.lang.Throwable -> L2c java.lang.IllegalStateException -> L2e android.database.sqlite.SQLiteException -> L30 java.lang.SecurityException -> L32
            r2.<init>()     // Catch: java.lang.Throwable -> L2c java.lang.IllegalStateException -> L2e android.database.sqlite.SQLiteException -> L30 java.lang.SecurityException -> L32
            r2.f1792a = r5     // Catch: java.lang.Throwable -> L2c java.lang.IllegalStateException -> L2e android.database.sqlite.SQLiteException -> L30 java.lang.SecurityException -> L32
            java.lang.Object r2 = r2.c()     // Catch: java.lang.SecurityException -> L1b java.lang.Throwable -> L2c java.lang.IllegalStateException -> L2e android.database.sqlite.SQLiteException -> L30
            goto L26
        L1b:
            long r3 = android.os.Binder.clearCallingIdentity()     // Catch: java.lang.Throwable -> L2c java.lang.IllegalStateException -> L2e android.database.sqlite.SQLiteException -> L30 java.lang.SecurityException -> L32
            java.lang.Object r2 = r2.c()     // Catch: java.lang.Throwable -> L34
            android.os.Binder.restoreCallingIdentity(r3)     // Catch: java.lang.Throwable -> L2c java.lang.IllegalStateException -> L2e android.database.sqlite.SQLiteException -> L30 java.lang.SecurityException -> L32
        L26:
            java.util.Map r2 = (java.util.Map) r2     // Catch: java.lang.Throwable -> L2c java.lang.IllegalStateException -> L2e android.database.sqlite.SQLiteException -> L30 java.lang.SecurityException -> L32
            android.os.StrictMode.setThreadPolicy(r0)     // Catch: java.lang.Throwable -> L49
            goto L45
        L2c:
            r2 = move-exception
            goto L4b
        L2e:
            r2 = move-exception
            goto L39
        L30:
            r2 = move-exception
            goto L39
        L32:
            r2 = move-exception
            goto L39
        L34:
            r2 = move-exception
            android.os.Binder.restoreCallingIdentity(r3)     // Catch: java.lang.Throwable -> L2c java.lang.IllegalStateException -> L2e android.database.sqlite.SQLiteException -> L30 java.lang.SecurityException -> L32
            throw r2     // Catch: java.lang.Throwable -> L2c java.lang.IllegalStateException -> L2e android.database.sqlite.SQLiteException -> L30 java.lang.SecurityException -> L32
        L39:
            java.lang.String r3 = "ConfigurationContentLdr"
            java.lang.String r4 = "Unable to query ContentProvider, using default values"
            android.util.Log.w(r3, r4, r2)     // Catch: java.lang.Throwable -> L2c
            java.util.Map r2 = java.util.Collections.EMPTY_MAP     // Catch: java.lang.Throwable -> L2c
            android.os.StrictMode.setThreadPolicy(r0)     // Catch: java.lang.Throwable -> L49
        L45:
            r5.f1930f = r2     // Catch: java.lang.Throwable -> L49
            r0 = r2
            goto L4f
        L49:
            r0 = move-exception
            goto L51
        L4b:
            android.os.StrictMode.setThreadPolicy(r0)     // Catch: java.lang.Throwable -> L49
            throw r2     // Catch: java.lang.Throwable -> L49
        L4f:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L49
            goto L53
        L51:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L49
            throw r0
        L53:
            if (r0 == 0) goto L56
            return r0
        L56:
            java.util.Map r0 = java.util.Collections.EMPTY_MAP
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.u4.b():java.util.Map");
    }

    @Override // com.google.android.gms.internal.measurement.x4
    public final /* synthetic */ Object zza(String str) {
        return (String) b().get(str);
    }
}
