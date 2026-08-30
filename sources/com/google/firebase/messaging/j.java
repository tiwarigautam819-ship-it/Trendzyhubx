package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import android.util.Log;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f2108c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static n0 f2109d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f2110a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f2111b;

    public j(ExecutorService executorService) {
        this.f2111b = new s.e(0);
        this.f2110a = executorService;
    }

    public static p4.q a(Context context, Intent intent, boolean z5) {
        n0 n0Var;
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Binding to service");
        }
        synchronized (f2108c) {
            try {
                if (f2109d == null) {
                    f2109d = new n0(context);
                }
                n0Var = f2109d;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z5) {
            return n0Var.b(intent).i(new c1.c(), new com.getcapacitor.n(2));
        }
        if (y.u().w(context)) {
            k0.c(context, n0Var, intent);
        } else {
            n0Var.b(intent);
        }
        return j7.g.l(-1);
    }

    public p4.q b(final Intent intent) {
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        final Context context = (Context) this.f2110a;
        c1.c cVar = (c1.c) this.f2111b;
        boolean z5 = b4.c.b() && context.getApplicationInfo().targetSdkVersion >= 26;
        final boolean z8 = (intent.getFlags() & 268435456) != 0;
        return (!z5 || z8) ? j7.g.c(cVar, new h(context, 0, intent)).j(cVar, new p4.a() { // from class: com.google.firebase.messaging.i
            @Override // p4.a
            public final Object b(p4.i iVar) {
                return (b4.c.b() && ((Integer) iVar.e()).intValue() == 402) ? j.a(context, intent, z8).i(new c1.c(), new com.getcapacitor.n(1)) : iVar;
            }
        }) : a(context, intent, z8);
    }

    public j(Context context) {
        this.f2110a = context;
        this.f2111b = new c1.c();
    }
}
