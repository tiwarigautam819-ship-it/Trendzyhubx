package com.google.android.gms.measurement.internal;

import b4.b;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzng {
    final /* synthetic */ zznb zza;
    private zznf zzb;

    public zzng(zznb zznbVar) {
        this.zza = zznbVar;
    }

    public final void zza(long j3) {
        ((b) this.zza.zzb()).getClass();
        this.zzb = new zznf(this, System.currentTimeMillis(), j3);
        this.zza.zzc.postDelayed(this.zzb, 2000L);
    }

    public final void zza() {
        this.zza.zzt();
        if (this.zzb != null) {
            this.zza.zzc.removeCallbacks(this.zzb);
        }
        this.zza.zzk().zzn.zza(false);
        this.zza.zza(false);
        if (this.zza.zze().zza(zzbh.zzcl) && this.zza.zzm().zzau()) {
            this.zza.zzj().zzp().zza("Retrying trigger URI registration in foreground");
            this.zza.zzm().zzas();
        }
    }
}
