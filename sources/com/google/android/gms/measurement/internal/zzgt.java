package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.d0;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzgt implements Runnable {
    private final zzgu zza;
    private final int zzb;
    private final Throwable zzc;
    private final byte[] zzd;
    private final String zze;
    private final Map<String, List<String>> zzf;

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zza(this.zze, this.zzb, this.zzc, this.zzd, this.zzf);
    }

    private zzgt(String str, zzgu zzguVar, int i6, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        d0.h(zzguVar);
        this.zza = zzguVar;
        this.zzb = i6;
        this.zzc = th;
        this.zzd = bArr;
        this.zze = str;
        this.zzf = map;
    }
}
