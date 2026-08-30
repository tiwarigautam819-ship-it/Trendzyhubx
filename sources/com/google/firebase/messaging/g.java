package com.google.firebase.messaging;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class g extends Service {
    static final long MESSAGE_TIMEOUT_S = 20;
    private static final String TAG = "EnhancedIntentService";
    private Binder binder;
    final ExecutorService executor;
    private int lastStartId;
    private final Object lock;
    private int runningTasks;

    public g() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new c4.a("Firebase-Messaging-Intent-Handle"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.executor = Executors.unconfigurableExecutorService(threadPoolExecutor);
        this.lock = new Object();
        this.runningTasks = 0;
    }

    public static p4.i access$000(g gVar, Intent intent) {
        if (gVar.handleIntentOnMainThread(intent)) {
            return j7.g.l(null);
        }
        p4.j jVar = new p4.j();
        gVar.executor.execute(new androidx.fragment.app.e(gVar, intent, jVar, 2));
        return jVar.f4641a;
    }

    public final void a(Intent intent) {
        if (intent != null) {
            k0.b(intent);
        }
        synchronized (this.lock) {
            try {
                int i6 = this.runningTasks - 1;
                this.runningTasks = i6;
                if (i6 == 0) {
                    stopSelfResultHook(this.lastStartId);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract Intent getStartCommandIntent(Intent intent);

    public abstract void handleIntent(Intent intent);

    public boolean handleIntentOnMainThread(Intent intent) {
        return false;
    }

    @Override // android.app.Service
    public final synchronized IBinder onBind(Intent intent) {
        try {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Service received bind request");
            }
            if (this.binder == null) {
                this.binder = new l0(new o5.c(5, this));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.binder;
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.executor.shutdown();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i6, int i9) {
        p4.q qVarL;
        synchronized (this.lock) {
            this.lastStartId = i9;
            this.runningTasks++;
        }
        Intent startCommandIntent = getStartCommandIntent(intent);
        if (startCommandIntent == null) {
            a(intent);
            return 2;
        }
        if (handleIntentOnMainThread(startCommandIntent)) {
            qVarL = j7.g.l(null);
        } else {
            p4.j jVar = new p4.j();
            this.executor.execute(new androidx.fragment.app.e(this, startCommandIntent, jVar, 2));
            qVarL = jVar.f4641a;
        }
        if (qVarL.f()) {
            a(intent);
            return 2;
        }
        qVarL.a(new c1.c(), new b2.d(this, 1, intent));
        return 3;
    }

    public boolean stopSelfResultHook(int i6) {
        return stopSelfResult(i6);
    }
}
