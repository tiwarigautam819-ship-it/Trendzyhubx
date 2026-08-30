package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzik implements Runnable {
    private final /* synthetic */ String zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ String zzc;
    private final /* synthetic */ long zzd;
    private final /* synthetic */ zzic zze;

    public zzik(zzic zzicVar, String str, String str2, String str3, long j3) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = j3;
        this.zze = zzicVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.zza;
        if (str == null) {
            this.zze.zza.zza(this.zzb, (zzlk) null);
        } else {
            this.zze.zza.zza(this.zzb, new zzlk(this.zzc, str, this.zzd));
        }
    }
}
