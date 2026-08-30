package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.SystemClock;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.common.internal.s;
import java.time.Duration;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicLong;
import p4.e;
import p4.k;
import p4.q;
import z3.b;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzgm {
    private static zzgm zza;
    private static final Duration zzb = Duration.ofMinutes(30);
    private final zzhy zzc;
    private final r zzd;
    private final AtomicLong zze = new AtomicLong(-1);

    private zzgm(Context context, zzhy zzhyVar) {
        this.zzd = new b(context, b.f6402i, new s("measurement:api"), w3.b.f5721b);
        this.zzc = zzhyVar;
    }

    public static zzgm zza(zzhy zzhyVar) {
        if (zza == null) {
            zza = new zzgm(zzhyVar.zza(), zzhyVar);
        }
        return zza;
    }

    public final /* synthetic */ void zza(long j3, Exception exc) {
        this.zze.set(j3);
    }

    public final synchronized void zza(int i6, int i9, long j3, long j8, int i10) {
        ((b4.b) this.zzc.zzb()).getClass();
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.zze.get() != -1 && jElapsedRealtime - this.zze.get() <= zzb.toMillis()) {
            return;
        }
        q qVarB = ((b) this.zzd).b(new com.google.android.gms.common.internal.q(Arrays.asList(new n(36301, i9, 0, j3, j8, null, null, 0, i10)), 0));
        e eVar = new e() { // from class: com.google.android.gms.measurement.internal.zzgl
            @Override // p4.e
            public final void onFailure(Exception exc) {
                this.zza.zza(jElapsedRealtime, exc);
            }
        };
        qVarB.getClass();
        qVarB.b(k.f4642a, eVar);
    }
}
