package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zziu implements Runnable {
    private final /* synthetic */ zzbf zza;
    private final /* synthetic */ zzo zzb;
    private final /* synthetic */ zzic zzc;

    public zziu(zzic zzicVar, zzbf zzbfVar, zzo zzoVar) {
        this.zza = zzbfVar;
        this.zzb = zzoVar;
        this.zzc = zzicVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zzc(this.zzc.zzb(this.zza, this.zzb), this.zzb);
    }
}
