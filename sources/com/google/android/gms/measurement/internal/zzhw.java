package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.d0;
import java.lang.Thread;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzhw<V> extends FutureTask<V> implements Comparable<zzhw<V>> {
    final boolean zza;
    private final long zzb;
    private final String zzc;
    private final /* synthetic */ zzhv zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzhw(zzhv zzhvVar, Runnable runnable, boolean z5, String str) {
        super(runnable, null);
        this.zzd = zzhvVar;
        d0.h(str);
        long andIncrement = zzhv.zza.getAndIncrement();
        this.zzb = andIncrement;
        this.zzc = str;
        this.zza = z5;
        if (andIncrement == Long.MAX_VALUE) {
            zzhvVar.zzj().zzg().zza("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        zzhw zzhwVar = (zzhw) obj;
        boolean z5 = this.zza;
        if (z5 != zzhwVar.zza) {
            return z5 ? -1 : 1;
        }
        long j3 = this.zzb;
        long j8 = zzhwVar.zzb;
        if (j3 < j8) {
            return -1;
        }
        if (j3 > j8) {
            return 1;
        }
        this.zzd.zzj().zzn().zza("Two tasks share the same index. index", Long.valueOf(this.zzb));
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    public final void setException(Throwable th) {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler;
        this.zzd.zzj().zzg().zza(this.zzc, th);
        if ((th instanceof zzhu) && (defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler()) != null) {
            defaultUncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
        }
        super.setException(th);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzhw(zzhv zzhvVar, Callable<V> callable, boolean z5, String str) {
        super(callable);
        this.zzd = zzhvVar;
        d0.h(str);
        long andIncrement = zzhv.zza.getAndIncrement();
        this.zzb = andIncrement;
        this.zzc = str;
        this.zza = z5;
        if (andIncrement == Long.MAX_VALUE) {
            zzhvVar.zzj().zzg().zza("Tasks index overflow");
        }
    }
}
