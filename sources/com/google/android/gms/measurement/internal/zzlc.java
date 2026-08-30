package com.google.android.gms.measurement.internal;

import android.net.Uri;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzlc implements Runnable {
    private final /* synthetic */ boolean zza;
    private final /* synthetic */ Uri zzb;
    private final /* synthetic */ String zzc;
    private final /* synthetic */ String zzd;
    private final /* synthetic */ zzkz zze;

    public zzlc(zzkz zzkzVar, boolean z5, Uri uri, String str, String str2) {
        this.zza = z5;
        this.zzb = uri;
        this.zzc = str;
        this.zzd = str2;
        this.zze = zzkzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkz.zza(this.zze, this.zza, this.zzb, this.zzc, this.zzd);
    }
}
