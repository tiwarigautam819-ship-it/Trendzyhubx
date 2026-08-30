package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zza implements Runnable {
    private final /* synthetic */ String zza;
    private final /* synthetic */ long zzb;
    private final /* synthetic */ zzb zzc;

    public zza(zzb zzbVar, String str, long j3) {
        this.zza = str;
        this.zzb = j3;
        this.zzc = zzbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzb.zza(this.zzc, this.zza, this.zzb);
    }
}
