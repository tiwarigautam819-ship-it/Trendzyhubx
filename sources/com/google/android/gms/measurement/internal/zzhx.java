package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.d0;
import java.lang.Thread;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzhx implements Thread.UncaughtExceptionHandler {
    private final String zza;
    private final /* synthetic */ zzhv zzb;

    public zzhx(zzhv zzhvVar, String str) {
        this.zzb = zzhvVar;
        d0.h(str);
        this.zza = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        this.zzb.zzj().zzg().zza(this.zza, th);
    }
}
