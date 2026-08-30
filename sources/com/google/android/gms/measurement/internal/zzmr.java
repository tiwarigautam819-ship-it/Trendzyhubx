package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzmr implements Runnable {
    private final /* synthetic */ zzgb zza;
    private final /* synthetic */ zzmq zzb;

    public zzmr(zzmq zzmqVar, zzgb zzgbVar) {
        this.zza = zzgbVar;
        this.zzb = zzmqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzb) {
            try {
                this.zzb.zzb = false;
                if (!this.zzb.zza.zzal()) {
                    this.zzb.zza.zzj().zzc().zza("Connected to remote service");
                    this.zzb.zza.zza(this.zza);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
