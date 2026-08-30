package com.google.firebase.messaging;

import android.os.Binder;
import android.os.Process;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l0 extends Binder {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final o5.c f2120b;

    public l0(o5.c cVar) {
        this.f2120b = cVar;
    }

    public final void a(m0 m0Var) {
        if (Binder.getCallingUid() != Process.myUid()) {
            throw new SecurityException("Binding only allowed within app");
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "service received new intent via bind strategy");
        }
        g.access$000((g) this.f2120b.f4446b, m0Var.f2123a).a(new c1.c(), new j0(1, m0Var));
    }
}
