package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.d0;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzog implements Callable<String> {
    private final /* synthetic */ zzo zza;
    private final /* synthetic */ zznv zzb;

    public zzog(zznv zznvVar, zzo zzoVar) {
        this.zza = zzoVar;
        this.zzb = zznvVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() {
        zznv zznvVar = this.zzb;
        String str = this.zza.zza;
        d0.h(str);
        if (!zznvVar.zzb(str).zzh() || !zzje.zzb(this.zza.zzt).zzh()) {
            this.zzb.zzj().zzp().zza("Analytics storage consent denied. Returning null app instance id");
            return null;
        }
        zzg zzgVarZza = this.zzb.zza(this.zza);
        if (zzgVarZza != null) {
            return zzgVarZza.zzad();
        }
        this.zzb.zzj().zzu().zza("App info was null when attempting to get app instance id");
        return null;
    }
}
