package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zznf implements Runnable {
    long zza;
    long zzb;
    final /* synthetic */ zzng zzc;

    public zznf(zzng zzngVar, long j3, long j8) {
        this.zzc = zzngVar;
        this.zza = j3;
        this.zzb = j8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zza.zzl().zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzni
            @Override // java.lang.Runnable
            public final void run() {
                zznf zznfVar = this.zza;
                zzng zzngVar = zznfVar.zzc;
                long j3 = zznfVar.zza;
                long j8 = zznfVar.zzb;
                zzngVar.zza.zzt();
                zzngVar.zza.zzj().zzc().zza("Application going to the background");
                zzngVar.zza.zzk().zzn.zza(true);
                zzngVar.zza.zza(true);
                if (!zzngVar.zza.zze().zzw()) {
                    if (zzngVar.zza.zze().zza(zzbh.zzcp)) {
                        zzngVar.zza.zza(false, false, j8);
                        zzngVar.zza.zzb.zzb(j8);
                    } else {
                        zzngVar.zza.zzb.zzb(j8);
                        zzngVar.zza.zza(false, false, j8);
                    }
                }
                zzngVar.zza.zzj().zzo().zza("Application backgrounded at: timestamp_millis", Long.valueOf(j3));
                if (zzngVar.zza.zze().zza(zzbh.zzdd)) {
                    zzngVar.zza.zzm().zzam();
                }
            }
        });
    }
}
