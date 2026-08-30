package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.w0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzk implements Runnable {
    private final /* synthetic */ w0 zza;
    private final /* synthetic */ zzbf zzb;
    private final /* synthetic */ String zzc;
    private final /* synthetic */ AppMeasurementDynamiteService zzd;

    public zzk(AppMeasurementDynamiteService appMeasurementDynamiteService, w0 w0Var, zzbf zzbfVar, String str) {
        this.zza = w0Var;
        this.zzb = zzbfVar;
        this.zzc = str;
        this.zzd = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzd.zza.zzr().zza(this.zza, this.zzb, this.zzc);
    }
}
