package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.d0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzbb {
    final String zza;
    final String zzb;
    final long zzc;
    final long zzd;
    final long zze;
    final long zzf;
    final long zzg;
    final Long zzh;
    final Long zzi;
    final Long zzj;
    final Boolean zzk;

    public zzbb(String str, String str2, long j3, long j8, long j9, long j10, Long l4, Long l8, Long l9, Boolean bool) {
        this(str, str2, 0L, 0L, 0L, j9, 0L, null, null, null, null);
    }

    public final zzbb zza(Long l4, Long l8, Boolean bool) {
        return new zzbb(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, l4, l8, (bool == null || bool.booleanValue()) ? bool : null);
    }

    public zzbb(String str, String str2, long j3, long j8, long j9, long j10, long j11, Long l4, Long l8, Long l9, Boolean bool) {
        d0.d(str);
        d0.d(str2);
        d0.a(j3 >= 0);
        d0.a(j8 >= 0);
        d0.a(j9 >= 0);
        d0.a(j11 >= 0);
        this.zza = str;
        this.zzb = str2;
        this.zzc = j3;
        this.zzd = j8;
        this.zze = j9;
        this.zzf = j10;
        this.zzg = j11;
        this.zzh = l4;
        this.zzi = l8;
        this.zzj = l9;
        this.zzk = bool;
    }

    public final zzbb zza(long j3, long j8) {
        return new zzbb(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, j3, Long.valueOf(j8), this.zzi, this.zzj, this.zzk);
    }

    public final zzbb zza(long j3) {
        return new zzbb(this.zza, this.zzb, this.zzc, this.zzd, this.zze, j3, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk);
    }
}
