package com.google.android.gms.measurement.internal;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzjz implements Executor {
    private final /* synthetic */ zzjq zza;

    public zzjz(zzjq zzjqVar) {
        this.zza = zzjqVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.zza.zzl().zzb(runnable);
    }
}
