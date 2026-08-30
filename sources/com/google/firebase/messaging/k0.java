package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f2116a = TimeUnit.MINUTES.toMillis(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f2117b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static o4.a f2118c;

    public static void a(Context context) {
        if (f2118c == null) {
            o4.a aVar = new o4.a(context);
            f2118c = aVar;
            synchronized (aVar.f4427a) {
                aVar.f4433g = true;
            }
        }
    }

    public static void b(Intent intent) {
        synchronized (f2117b) {
            try {
                if (f2118c != null && intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false)) {
                    intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
                    f2118c.c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void c(Context context, n0 n0Var, Intent intent) {
        synchronized (f2117b) {
            try {
                a(context);
                boolean booleanExtra = intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
                intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", true);
                if (!booleanExtra) {
                    f2118c.a(f2116a);
                }
                n0Var.b(intent).h(new j0(0, intent));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static ComponentName d(Context context, Intent intent) {
        synchronized (f2117b) {
            try {
                a(context);
                boolean booleanExtra = intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
                intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", true);
                ComponentName componentNameStartService = context.startService(intent);
                if (componentNameStartService == null) {
                    return null;
                }
                if (!booleanExtra) {
                    f2118c.a(f2116a);
                }
                return componentNameStartService;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
