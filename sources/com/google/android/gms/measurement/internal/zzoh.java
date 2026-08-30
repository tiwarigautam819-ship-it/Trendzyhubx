package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import b4.b;
import com.google.android.gms.common.internal.d0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzoh implements Runnable {
    private final /* synthetic */ String zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ Bundle zzc;
    private final /* synthetic */ zzof zzd;

    public zzoh(zzof zzofVar, String str, String str2, Bundle bundle) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = bundle;
        this.zzd = zzofVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzos zzosVarZzq = this.zzd.zza.zzq();
        String str = this.zza;
        String str2 = this.zzb;
        Bundle bundle = this.zzc;
        ((b) this.zzd.zza.zzb()).getClass();
        zzbf zzbfVarZza = zzosVarZzq.zza(str, str2, bundle, "auto", System.currentTimeMillis(), false, true);
        zznv zznvVar = this.zzd.zza;
        d0.h(zzbfVarZza);
        zznvVar.zza(zzbfVarZza, this.zza);
    }
}
