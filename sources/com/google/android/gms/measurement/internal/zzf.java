package com.google.android.gms.measurement.internal;

import android.text.TextUtils;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzf {
    private final zzjh zza;

    public zzf(zzjh zzjhVar) {
        this.zza = zzjhVar;
    }

    public static zzf zza(String str) {
        return new zzf((TextUtils.isEmpty(str) || str.length() > 1) ? zzjh.UNINITIALIZED : zzje.zza(str.charAt(0)));
    }

    public final String zzb() {
        return String.valueOf(zzje.zza(this.zza));
    }

    public final zzjh zza() {
        return this.zza;
    }
}
