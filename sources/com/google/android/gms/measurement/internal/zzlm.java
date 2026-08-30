package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzlm implements Runnable {
    private final /* synthetic */ Bundle zza;
    private final /* synthetic */ zzlk zzb;
    private final /* synthetic */ zzlk zzc;
    private final /* synthetic */ long zzd;
    private final /* synthetic */ zzlj zze;

    public zzlm(zzlj zzljVar, Bundle bundle, zzlk zzlkVar, zzlk zzlkVar2, long j3) {
        this.zza = bundle;
        this.zzb = zzlkVar;
        this.zzc = zzlkVar2;
        this.zzd = j3;
        this.zze = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzlj.zza(this.zze, this.zza, this.zzb, this.zzc, this.zzd);
    }
}
