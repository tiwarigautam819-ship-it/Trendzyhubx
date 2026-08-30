package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class n0 implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f2127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Intent f2128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f2129c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayDeque f2130d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public l0 f2131e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2132f;

    public n0(Context context) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(0, new c4.a("Firebase-FirebaseInstanceIdServiceConnection"));
        this.f2130d = new ArrayDeque();
        this.f2132f = false;
        Context applicationContext = context.getApplicationContext();
        this.f2127a = applicationContext;
        this.f2128b = new Intent("com.google.firebase.MESSAGING_EVENT").setPackage(applicationContext.getPackageName());
        this.f2129c = scheduledThreadPoolExecutor;
    }

    public final synchronized void a() {
        try {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "flush queue called");
            }
            while (!this.f2130d.isEmpty()) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    Log.d("FirebaseMessaging", "found intent to be delivered");
                }
                l0 l0Var = this.f2131e;
                if (l0Var == null || !l0Var.isBinderAlive()) {
                    c();
                    return;
                }
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    Log.d("FirebaseMessaging", "binder is alive, sending the intent.");
                }
                this.f2131e.a((m0) this.f2130d.poll());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized p4.q b(Intent intent) {
        m0 m0Var;
        try {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "new intent queued in the bind-strategy delivery");
            }
            m0Var = new m0(intent);
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.f2129c;
            m0Var.f2124b.f4641a.a(scheduledThreadPoolExecutor, new j0(2, scheduledThreadPoolExecutor.schedule(new a2.g(7, m0Var), 20L, TimeUnit.SECONDS)));
            this.f2130d.add(m0Var);
            a();
        } catch (Throwable th) {
            throw th;
        }
        return m0Var.f2124b.f4641a;
    }

    public final void c() {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            StringBuilder sb = new StringBuilder("binder is dead. start connection? ");
            sb.append(!this.f2132f);
            Log.d("FirebaseMessaging", sb.toString());
        }
        if (this.f2132f) {
            return;
        }
        this.f2132f = true;
        try {
            if (a4.b.b().a(this.f2127a, this.f2128b, this, 65)) {
                return;
            } else {
                Log.e("FirebaseMessaging", "binding to the service failed");
            }
        } catch (SecurityException e9) {
            Log.e("FirebaseMessaging", "Exception while binding the service", e9);
        }
        this.f2132f = false;
        while (true) {
            ArrayDeque arrayDeque = this.f2130d;
            if (arrayDeque.isEmpty()) {
                return;
            } else {
                ((m0) arrayDeque.poll()).f2124b.c(null);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "onServiceConnected: " + componentName);
            }
            this.f2132f = false;
            if (iBinder instanceof l0) {
                this.f2131e = (l0) iBinder;
                a();
                return;
            }
            Log.e("FirebaseMessaging", "Invalid service connection: " + iBinder);
            ArrayDeque arrayDeque = this.f2130d;
            while (!arrayDeque.isEmpty()) {
                ((m0) arrayDeque.poll()).f2124b.c(null);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "onServiceDisconnected: " + componentName);
        }
        a();
    }
}
