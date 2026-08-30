package com.google.android.gms.measurement.internal;

import android.os.Handler;
import b4.b;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.r0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
abstract class zzav {
    private static volatile Handler zza;
    private final zzjc zzb;
    private final Runnable zzc;
    private volatile long zzd;

    public zzav(zzjc zzjcVar) {
        d0.h(zzjcVar);
        this.zzb = zzjcVar;
        this.zzc = new zzay(this, zzjcVar);
    }

    private final Handler zzd() {
        Handler handler;
        if (zza != null) {
            return zza;
        }
        synchronized (zzav.class) {
            try {
                if (zza == null) {
                    zza = new r0(this.zzb.zza().getMainLooper(), 0);
                }
                handler = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    public abstract void zzb();

    public final boolean zzc() {
        return this.zzd != 0;
    }

    public final void zza() {
        this.zzd = 0L;
        zzd().removeCallbacks(this.zzc);
    }

    public final void zza(long j3) {
        zza();
        if (j3 >= 0) {
            ((b) this.zzb.zzb()).getClass();
            this.zzd = System.currentTimeMillis();
            if (zzd().postDelayed(this.zzc, j3)) {
                return;
            }
            this.zzb.zzj().zzg().zza("Failed to schedule delayed post. time", Long.valueOf(j3));
        }
    }
}
