package com.google.android.gms.measurement.internal;

import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzgn implements Runnable {
    private final /* synthetic */ int zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ Object zzc;
    private final /* synthetic */ Object zzd;
    private final /* synthetic */ Object zze;
    private final /* synthetic */ zzgo zzf;

    public zzgn(zzgo zzgoVar, int i6, String str, Object obj, Object obj2, Object obj3) {
        this.zza = i6;
        this.zzb = str;
        this.zzc = obj;
        this.zzd = obj2;
        this.zze = obj3;
        this.zzf = zzgoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzha zzhaVarZzn = this.zzf.zzu.zzn();
        if (!zzhaVarZzn.zzaf()) {
            this.zzf.zza(6, "Persisted config not initialized. Not logging error/warn");
            return;
        }
        if (this.zzf.zza == 0) {
            if (this.zzf.zze().zzz()) {
                this.zzf.zza = 'C';
            } else {
                this.zzf.zza = 'c';
            }
        }
        if (this.zzf.zzb < 0) {
            this.zzf.zzb = 106000L;
        }
        char cCharAt = "01VDIWEA?".charAt(this.zza);
        char c8 = this.zzf.zza;
        long j3 = this.zzf.zzb;
        String strZza = zzgo.zza(true, this.zzb, this.zzc, this.zzd, this.zze);
        StringBuilder sb = new StringBuilder("2");
        sb.append(cCharAt);
        sb.append(c8);
        sb.append(j3);
        String strH = x.h(sb, ":", strZza);
        if (strH.length() > 1024) {
            strH = this.zzb.substring(0, 1024);
        }
        zzhe zzheVar = zzhaVarZzn.zzb;
        if (zzheVar != null) {
            zzheVar.zza(strH, 1L);
        }
    }
}
