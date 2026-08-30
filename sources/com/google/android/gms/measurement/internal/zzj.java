package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.w0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzj implements Runnable {
    private final /* synthetic */ w0 zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ String zzc;
    private final /* synthetic */ boolean zzd;
    private final /* synthetic */ AppMeasurementDynamiteService zze;

    public zzj(AppMeasurementDynamiteService appMeasurementDynamiteService, w0 w0Var, String str, String str2, boolean z5) {
        this.zza = w0Var;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = z5;
        this.zze = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zze.zza.zzr().zza(this.zza, this.zzb, this.zzc, this.zzd);
    }
}
