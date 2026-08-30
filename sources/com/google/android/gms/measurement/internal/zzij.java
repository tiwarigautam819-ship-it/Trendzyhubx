package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.d0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzij implements Runnable {
    private final /* synthetic */ zzo zza;
    private final /* synthetic */ zzic zzb;

    public zzij(zzic zzicVar, zzo zzoVar) {
        this.zza = zzoVar;
        this.zzb = zzicVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zzr();
        zznv zznvVar = this.zzb.zza;
        zzo zzoVar = this.zza;
        zznvVar.zzl().zzt();
        zznvVar.zzs();
        d0.d(zzoVar.zza);
        zznvVar.zza(zzoVar);
    }
}
