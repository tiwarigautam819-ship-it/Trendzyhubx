package com.google.android.gms.measurement.internal;

import android.os.SystemClock;
import b4.b;
import com.google.android.gms.common.internal.d0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zznl {
    private final b4.a zza;
    private long zzb;

    public zznl(b4.a aVar) {
        d0.h(aVar);
        this.zza = aVar;
    }

    public final void zza() {
        this.zzb = 0L;
    }

    public final void zzb() {
        ((b) this.zza).getClass();
        this.zzb = SystemClock.elapsedRealtime();
    }

    public final boolean zza(long j3) {
        if (this.zzb == 0) {
            return true;
        }
        ((b) this.zza).getClass();
        return SystemClock.elapsedRealtime() - this.zzb >= 3600000;
    }
}
