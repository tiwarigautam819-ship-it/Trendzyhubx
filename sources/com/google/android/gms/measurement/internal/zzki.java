package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzki implements Runnable {
    private final /* synthetic */ String zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ long zzc;
    private final /* synthetic */ Bundle zzd;
    private final /* synthetic */ boolean zze;
    private final /* synthetic */ boolean zzf;
    private final /* synthetic */ boolean zzg;
    private final /* synthetic */ String zzh;
    private final /* synthetic */ zzjq zzi;

    public zzki(zzjq zzjqVar, String str, String str2, long j3, Bundle bundle, boolean z5, boolean z8, boolean z9, String str3) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = j3;
        this.zzd = bundle;
        this.zze = z5;
        this.zzf = z8;
        this.zzg = z9;
        this.zzh = str3;
        this.zzi = zzjqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzi.zza(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh);
    }
}
