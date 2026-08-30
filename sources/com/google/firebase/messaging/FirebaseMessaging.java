package com.google.firebase.messaging;

import android.app.Application;
import android.app.NotificationManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class FirebaseMessaging {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static b0 f2029k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static ScheduledThreadPoolExecutor f2031m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final t4.g f2032a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f2033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.common.internal.g f2034c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final j f2035d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final p f2036e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f2037f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ThreadPoolExecutor f2038g;
    public final s h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f2039i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final long f2028j = TimeUnit.HOURS.toSeconds(8);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static g5.a f2030l = new l(0);

    public FirebaseMessaging(t4.g gVar, g5.a aVar, g5.a aVar2, h5.e eVar, g5.a aVar3, d5.d dVar) {
        gVar.a();
        Context context = gVar.f5320a;
        final s sVar = new s();
        final int i6 = 0;
        sVar.f2149c = 0;
        sVar.f2151e = context;
        final com.google.android.gms.common.internal.g gVar2 = new com.google.android.gms.common.internal.g(gVar, sVar, aVar, aVar2, eVar);
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new c4.a("Firebase-Messaging-Task"));
        final int i9 = 1;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new c4.a("Firebase-Messaging-Init"));
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new c4.a("Firebase-Messaging-File-Io"));
        this.f2039i = false;
        f2030l = aVar3;
        this.f2032a = gVar;
        p pVar = new p();
        pVar.f2141e = this;
        pVar.f2138b = dVar;
        this.f2036e = pVar;
        gVar.a();
        final Context context2 = gVar.f5320a;
        this.f2033b = context2;
        k kVar = new k();
        this.h = sVar;
        this.f2034c = gVar2;
        this.f2035d = new j(executorServiceNewSingleThreadExecutor);
        this.f2037f = scheduledThreadPoolExecutor;
        this.f2038g = threadPoolExecutor;
        gVar.a();
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(kVar);
        } else {
            Log.w("FirebaseMessaging", "Context " + context + " was not an application, can't register for lifecycle callbacks. Some notification events may be dropped as a result.");
        }
        scheduledThreadPoolExecutor.execute(new Runnable(this) { // from class: com.google.firebase.messaging.m

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ FirebaseMessaging f2122b;

            {
                this.f2122b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i6) {
                    case 0:
                        FirebaseMessaging firebaseMessaging = this.f2122b;
                        if (firebaseMessaging.f2036e.f()) {
                            firebaseMessaging.j();
                        }
                        break;
                    default:
                        FirebaseMessaging firebaseMessaging2 = this.f2122b;
                        Context context3 = firebaseMessaging2.f2033b;
                        z7.l.k(context3);
                        a2.c.j(context3, firebaseMessaging2.f2034c, firebaseMessaging2.i());
                        if (firebaseMessaging2.i()) {
                            firebaseMessaging2.f();
                        }
                        break;
                }
            }
        });
        final ScheduledThreadPoolExecutor scheduledThreadPoolExecutor2 = new ScheduledThreadPoolExecutor(1, new c4.a("Firebase-Messaging-Topics-Io"));
        int i10 = g0.f2085j;
        j7.g.c(scheduledThreadPoolExecutor2, new Callable() { // from class: com.google.firebase.messaging.f0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                e0 e0Var;
                Context context3 = context2;
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor3 = scheduledThreadPoolExecutor2;
                FirebaseMessaging firebaseMessaging = this;
                s sVar2 = sVar;
                com.google.android.gms.common.internal.g gVar3 = gVar2;
                synchronized (e0.class) {
                    try {
                        WeakReference weakReference = e0.f2074d;
                        e0Var = weakReference != null ? (e0) weakReference.get() : null;
                        if (e0Var == null) {
                            e0 e0Var2 = new e0(context3.getSharedPreferences("com.google.android.gms.appid", 0), scheduledThreadPoolExecutor3);
                            e0Var2.b();
                            e0.f2074d = new WeakReference(e0Var2);
                            e0Var = e0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return new g0(firebaseMessaging, sVar2, e0Var, gVar3, context3, scheduledThreadPoolExecutor3);
            }
        }).c(scheduledThreadPoolExecutor, new n(this, i6));
        scheduledThreadPoolExecutor.execute(new Runnable(this) { // from class: com.google.firebase.messaging.m

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ FirebaseMessaging f2122b;

            {
                this.f2122b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i9) {
                    case 0:
                        FirebaseMessaging firebaseMessaging = this.f2122b;
                        if (firebaseMessaging.f2036e.f()) {
                            firebaseMessaging.j();
                        }
                        break;
                    default:
                        FirebaseMessaging firebaseMessaging2 = this.f2122b;
                        Context context3 = firebaseMessaging2.f2033b;
                        z7.l.k(context3);
                        a2.c.j(context3, firebaseMessaging2.f2034c, firebaseMessaging2.i());
                        if (firebaseMessaging2.i()) {
                            firebaseMessaging2.f();
                        }
                        break;
                }
            }
        });
    }

    public static void b(Runnable runnable, long j3) {
        synchronized (FirebaseMessaging.class) {
            try {
                if (f2031m == null) {
                    f2031m = new ScheduledThreadPoolExecutor(1, new c4.a("TAG"));
                }
                f2031m.schedule(runnable, j3, TimeUnit.SECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static synchronized FirebaseMessaging c() {
        return getInstance(t4.g.c());
    }

    public static synchronized b0 d(Context context) {
        try {
            if (f2029k == null) {
                f2029k = new b0(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return f2029k;
    }

    public static synchronized FirebaseMessaging getInstance(t4.g gVar) {
        FirebaseMessaging firebaseMessaging;
        firebaseMessaging = (FirebaseMessaging) gVar.b(FirebaseMessaging.class);
        com.google.android.gms.common.internal.d0.i("Firebase Messaging component is not present", firebaseMessaging);
        return firebaseMessaging;
    }

    public final String a() {
        p4.i iVarJ;
        a0 a0VarE = e();
        if (!l(a0VarE)) {
            return a0VarE.f2056a;
        }
        String strC = s.c(this.f2032a);
        j jVar = this.f2035d;
        synchronized (jVar) {
            iVarJ = (p4.i) ((s.e) jVar.f2111b).get(strC);
            if (iVarJ == null) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    Log.d("FirebaseMessaging", "Making new request for: " + strC);
                }
                com.google.android.gms.common.internal.g gVar = this.f2034c;
                iVarJ = gVar.e(gVar.k(s.c((t4.g) gVar.f1409b), "*", new Bundle())).k(this.f2038g, new o(this, strC, a0VarE, 0)).j((Executor) jVar.f2110a, new b2.d(jVar, 2, strC));
                ((s.e) jVar.f2111b).put(strC, iVarJ);
            } else if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Joining ongoing request for: " + strC);
            }
        }
        try {
            return (String) j7.g.a(iVarJ);
        } catch (InterruptedException | ExecutionException e9) {
            throw new IOException(e9);
        }
    }

    public final a0 e() {
        a0 a0VarB;
        b0 b0VarD = d(this.f2033b);
        t4.g gVar = this.f2032a;
        gVar.a();
        String strD = "[DEFAULT]".equals(gVar.f5321b) ? "" : gVar.d();
        String strC = s.c(this.f2032a);
        synchronized (b0VarD) {
            a0VarB = a0.b(b0VarD.f2061a.getString(strD + "|T|" + strC + "|*", null));
        }
        return a0VarB;
    }

    public final void f() {
        p4.q qVarK;
        int i6;
        u3.b bVar = (u3.b) this.f2034c.f1411d;
        if (bVar.f5450c.d() >= 241100000) {
            u3.n nVarA = u3.n.a(bVar.f5449b);
            Bundle bundle = Bundle.EMPTY;
            synchronized (nVarA) {
                i6 = nVarA.f5487d;
                nVarA.f5487d = i6 + 1;
            }
            qVarK = nVarA.b(new u3.m(i6, 5, bundle, 1)).i(u3.h.f5463c, u3.d.f5457c);
        } else {
            qVarK = j7.g.k(new IOException("SERVICE_NOT_AVAILABLE"));
        }
        qVarK.c(this.f2037f, new n(this, 1));
    }

    public final void g() {
        p pVar = this.f2036e;
        synchronized (pVar) {
            try {
                pVar.e();
                com.getcapacitor.n nVar = (com.getcapacitor.n) pVar.f2139c;
                if (nVar != null) {
                    ((v4.j) ((d5.d) pVar.f2138b)).b(nVar);
                    pVar.f2139c = null;
                }
                t4.g gVar = ((FirebaseMessaging) pVar.f2141e).f2032a;
                gVar.a();
                SharedPreferences.Editor editorEdit = gVar.f5320a.getSharedPreferences("com.google.firebase.messaging", 0).edit();
                editorEdit.putBoolean("auto_init", true);
                editorEdit.apply();
                ((FirebaseMessaging) pVar.f2141e).j();
                pVar.f2140d = Boolean.TRUE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void h(boolean z5) {
        this.f2039i = z5;
    }

    public final boolean i() {
        Context context = this.f2033b;
        z7.l.k(context);
        if (Build.VERSION.SDK_INT >= 29) {
            if (Binder.getCallingUid() != context.getApplicationInfo().uid) {
                Log.e("FirebaseMessaging", "error retrieving notification delegate for package " + context.getPackageName());
                return false;
            }
            if ("com.google.android.gms".equals(((NotificationManager) context.getSystemService(NotificationManager.class)).getNotificationDelegate())) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    Log.d("FirebaseMessaging", "GMS core is set for proxying");
                }
                if (this.f2032a.b(AnalyticsConnector.class) != null) {
                    return true;
                }
                if (z7.d.b() && f2030l != null) {
                    return true;
                }
            }
        } else if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Platform doesn't support proxying.");
        }
        return false;
    }

    public final void j() {
        if (l(e())) {
            synchronized (this) {
                if (!this.f2039i) {
                    k(0L);
                }
            }
        }
    }

    public final synchronized void k(long j3) {
        b(new c0(this, Math.min(Math.max(30L, 2 * j3), f2028j)), j3);
        this.f2039i = true;
    }

    public final boolean l(a0 a0Var) {
        if (a0Var != null) {
            return System.currentTimeMillis() > a0Var.f2058c + a0.f2055d || !this.h.a().equals(a0Var.f2057b);
        }
        return true;
    }
}
