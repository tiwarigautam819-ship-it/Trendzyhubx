package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.SystemClock;
import b4.b;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zznh {
    protected long zza;
    final /* synthetic */ zznb zzb;
    private long zzc;
    private final zzav zzd;

    public zznh(zznb zznbVar) {
        this.zzb = zznbVar;
        this.zzd = new zznk(this, zznbVar.zzu);
        ((b) zznbVar.zzb()).getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.zzc = jElapsedRealtime;
        this.zza = jElapsedRealtime;
    }

    public final long zza(long j3) {
        long j8 = j3 - this.zza;
        this.zza = j3;
        return j8;
    }

    public final void zzb(long j3) {
        this.zzd.zza();
    }

    public final void zzc(long j3) {
        this.zzb.zzt();
        this.zzd.zza();
        this.zzc = j3;
        this.zza = j3;
    }

    public static void zza(zznh zznhVar) {
        zznhVar.zzb.zzt();
        ((b) zznhVar.zzb.zzb()).getClass();
        zznhVar.zza(false, false, SystemClock.elapsedRealtime());
        zzb zzbVarZzc = zznhVar.zzb.zzc();
        ((b) zznhVar.zzb.zzb()).getClass();
        zzbVarZzc.zza(SystemClock.elapsedRealtime());
    }

    public final void zza() {
        this.zzd.zza();
        if (this.zzb.zze().zza(zzbh.zzdb)) {
            ((b) this.zzb.zzb()).getClass();
            this.zzc = SystemClock.elapsedRealtime();
        } else {
            this.zzc = 0L;
        }
        this.zza = this.zzc;
    }

    public final boolean zza(boolean z5, boolean z8, long j3) {
        this.zzb.zzt();
        this.zzb.zzu();
        if (this.zzb.zzu.zzac()) {
            zzhb zzhbVar = this.zzb.zzk().zzk;
            ((b) this.zzb.zzb()).getClass();
            zzhbVar.zza(System.currentTimeMillis());
        }
        long jZza = j3 - this.zzc;
        if (!z5 && jZza < 1000) {
            this.zzb.zzj().zzp().zza("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(jZza));
            return false;
        }
        if (!z8) {
            jZza = zza(j3);
        }
        this.zzb.zzj().zzp().zza("Recording user engagement, ms", Long.valueOf(jZza));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", jZza);
        zzos.zza(this.zzb.zzn().zza(!this.zzb.zze().zzw()), bundle, true);
        if (!z8) {
            this.zzb.zzm().zzc("auto", "_e", bundle);
        }
        this.zzc = j3;
        this.zzd.zza();
        this.zzd.zza(zzbh.zzbc.zza(null).longValue());
        return true;
    }
}
