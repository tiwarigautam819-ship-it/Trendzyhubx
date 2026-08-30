package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.x3;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzoj {
    private long zza;
    private x3 zzb;
    private String zzc;
    private Map<String, String> zzd;
    private zznt zze;

    public final long zza() {
        return this.zza;
    }

    public final zznw zzb() {
        return new zznw(this.zzc, this.zzd, this.zze);
    }

    public final x3 zzc() {
        return this.zzb;
    }

    public final String zzd() {
        return this.zzc;
    }

    public final Map<String, String> zze() {
        return this.zzd;
    }

    private zzoj(long j3, x3 x3Var, String str, Map<String, String> map, zznt zzntVar) {
        this.zza = j3;
        this.zzb = x3Var;
        this.zzc = str;
        this.zzd = map;
        this.zze = zzntVar;
    }
}
