package com.google.firebase.analytics;

import com.google.android.gms.internal.measurement.k1;
import com.google.android.gms.internal.measurement.t0;
import com.google.android.gms.internal.measurement.u1;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzb implements Callable<Long> {
    private final /* synthetic */ FirebaseAnalytics zza;

    public zzb(FirebaseAnalytics firebaseAnalytics) {
        this.zza = firebaseAnalytics;
    }

    @Override // java.util.concurrent.Callable
    public final Long call() {
        k1 k1Var = this.zza.zzb;
        k1Var.getClass();
        t0 t0Var = new t0();
        k1Var.f(new u1(k1Var, t0Var, 5));
        return (Long) t0.c(t0Var.b(120000L), Long.class);
    }
}
