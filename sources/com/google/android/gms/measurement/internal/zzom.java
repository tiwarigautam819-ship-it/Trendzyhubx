package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.x3;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzom {
    private long zza;
    private x3 zzb;
    private String zzc;
    private Map<String, String> zzd;
    private zznt zze;

    public final zzom zza(x3 x3Var) {
        this.zzb = x3Var;
        return this;
    }

    public final zzom zza(long j3) {
        this.zza = j3;
        return this;
    }

    public final zzom zza(Map<String, String> map) {
        this.zzd = map;
        return this;
    }

    public final zzom zza(zznt zzntVar) {
        this.zze = zzntVar;
        return this;
    }

    public final zzom zza(String str) {
        this.zzc = str;
        return this;
    }

    public final zzoj zza() {
        return new zzoj(this.zza, this.zzb, this.zzc, this.zzd, this.zze);
    }
}
