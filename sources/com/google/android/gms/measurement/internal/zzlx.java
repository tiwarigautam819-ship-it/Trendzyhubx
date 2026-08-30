package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.d0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzlx implements Runnable {
    private final /* synthetic */ zzo zza;
    private final /* synthetic */ boolean zzb;
    private final /* synthetic */ zzon zzc;
    private final /* synthetic */ zzls zzd;

    public zzlx(zzls zzlsVar, zzo zzoVar, boolean z5, zzon zzonVar) {
        this.zza = zzoVar;
        this.zzb = z5;
        this.zzc = zzonVar;
        this.zzd = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        zzgb zzgbVar = this.zzd.zzb;
        if (zzgbVar == null) {
            this.zzd.zzj().zzg().zza("Discarding data. Failed to set user property");
            return;
        }
        d0.h(this.zza);
        this.zzd.zza(zzgbVar, this.zzb ? null : this.zzc, this.zza);
        this.zzd.zzar();
    }
}
