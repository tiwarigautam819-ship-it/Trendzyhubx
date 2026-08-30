package com.google.android.gms.measurement.internal;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zznw {
    private String zza;
    private Map<String, String> zzb;
    private zznt zzc;

    public zznw(String str, zznt zzntVar) {
        this.zza = str;
        this.zzc = zzntVar;
    }

    public final zznt zza() {
        return this.zzc;
    }

    public final String zzb() {
        return this.zza;
    }

    public final Map<String, String> zzc() {
        Map<String, String> map = this.zzb;
        return map == null ? Collections.EMPTY_MAP : map;
    }

    public zznw(String str, Map<String, String> map, zznt zzntVar) {
        this.zza = str;
        this.zzb = map;
        this.zzc = zzntVar;
    }
}
