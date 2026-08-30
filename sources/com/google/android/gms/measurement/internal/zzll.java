package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzll implements Runnable {
    private final /* synthetic */ zzlk zza;
    private final /* synthetic */ zzlk zzb;
    private final /* synthetic */ long zzc;
    private final /* synthetic */ boolean zzd;
    private final /* synthetic */ zzlj zze;

    public zzll(zzlj zzljVar, zzlk zzlkVar, zzlk zzlkVar2, long j3, boolean z5) {
        this.zza = zzlkVar;
        this.zzb = zzlkVar2;
        this.zzc = j3;
        this.zzd = z5;
        this.zze = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zze.zza(this.zza, this.zzb, this.zzc, this.zzd, (Bundle) null);
    }
}
