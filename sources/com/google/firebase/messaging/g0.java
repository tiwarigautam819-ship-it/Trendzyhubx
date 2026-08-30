package com.google.firebase.messaging;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final long f2084i = TimeUnit.HOURS.toSeconds(8);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f2085j = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f2086a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s f2087b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.common.internal.g f2088c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final FirebaseMessaging f2089d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f2091f;
    public final e0 h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final s.e f2090e = new s.e(0);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2092g = false;

    public g0(FirebaseMessaging firebaseMessaging, s sVar, e0 e0Var, com.google.android.gms.common.internal.g gVar, Context context, ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        this.f2089d = firebaseMessaging;
        this.f2087b = sVar;
        this.h = e0Var;
        this.f2088c = gVar;
        this.f2086a = context;
        this.f2091f = scheduledThreadPoolExecutor;
    }

    public static void a(p4.q qVar) throws IOException {
        try {
            j7.g.b(qVar, 30L, TimeUnit.SECONDS);
        } catch (InterruptedException | TimeoutException e9) {
            throw new IOException("SERVICE_NOT_AVAILABLE", e9);
        } catch (ExecutionException e10) {
            Throwable cause = e10.getCause();
            if (cause instanceof IOException) {
                throw ((IOException) cause);
            }
            if (!(cause instanceof RuntimeException)) {
                throw new IOException(e10);
            }
            throw ((RuntimeException) cause);
        }
    }

    public static boolean d() {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            return true;
        }
        return Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseMessaging", 3);
    }

    public final void b(String str) throws IOException {
        String strA = this.f2089d.a();
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", "/topics/" + str);
        com.google.android.gms.common.internal.g gVar = this.f2088c;
        a(gVar.e(gVar.k(strA, "/topics/" + str, bundle)));
    }

    public final void c(String str) throws IOException {
        String strA = this.f2089d.a();
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", "/topics/" + str);
        bundle.putString("delete", "1");
        com.google.android.gms.common.internal.g gVar = this.f2088c;
        a(gVar.e(gVar.k(strA, "/topics/" + str, bundle)));
    }

    public final void e(d0 d0Var) {
        synchronized (this.f2090e) {
            try {
                String str = d0Var.f2072c;
                if (this.f2090e.containsKey(str)) {
                    ArrayDeque arrayDeque = (ArrayDeque) this.f2090e.get(str);
                    p4.j jVar = (p4.j) arrayDeque.poll();
                    if (jVar != null) {
                        jVar.a(null);
                    }
                    if (arrayDeque.isEmpty()) {
                        this.f2090e.remove(str);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void f(boolean z5) {
        this.f2092g = z5;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0083 A[Catch: IOException -> 0x005d, TryCatch #1 {IOException -> 0x005d, blocks: (B:15:0x0028, B:32:0x0083, B:34:0x0089, B:20:0x0039, B:22:0x0041, B:24:0x004a, B:27:0x005f, B:29:0x0067, B:31:0x0070), top: B:54:0x0028 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean g() throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 247
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.g0.g():boolean");
    }

    public final void h(long j3) {
        this.f2091f.schedule(new i0(this, this.f2086a, this.f2087b, Math.min(Math.max(30L, 2 * j3), f2084i)), j3, TimeUnit.SECONDS);
        f(true);
    }
}
