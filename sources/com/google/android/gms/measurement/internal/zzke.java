package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzke implements Runnable {
    private final /* synthetic */ boolean zza;
    private final /* synthetic */ zzjq zzb;

    public zzke(zzjq zzjqVar, boolean z5) {
        this.zza = z5;
        this.zzb = zzjqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zZzac = this.zzb.zzu.zzac();
        boolean zZzab = this.zzb.zzu.zzab();
        this.zzb.zzu.zza(this.zza);
        if (zZzab == this.zza) {
            this.zzb.zzu.zzj().zzp().zza("Default data collection state already set to", Boolean.valueOf(this.zza));
        }
        if (this.zzb.zzu.zzac() == zZzac || this.zzb.zzu.zzac() != this.zzb.zzu.zzab()) {
            this.zzb.zzu.zzj().zzv().zza("Default data collection is different than actual status", Boolean.valueOf(this.zza), Boolean.valueOf(zZzac));
        }
        this.zzb.zzav();
    }
}
