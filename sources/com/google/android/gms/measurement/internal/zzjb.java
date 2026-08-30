package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzjb implements Callable<List<zzop>> {
    private final /* synthetic */ String zza;
    private final /* synthetic */ zzic zzb;

    public zzjb(zzic zzicVar, String str) {
        this.zza = str;
        this.zzb = zzicVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzop> call() {
        this.zzb.zza.zzr();
        return this.zzb.zza.zzf().zzl(this.zza);
    }
}
