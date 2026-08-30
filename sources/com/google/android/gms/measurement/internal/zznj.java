package com.google.android.gms.measurement.internal;

import android.app.ActivityManager;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import b4.b;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zznj {
    final /* synthetic */ zznb zza;

    public zznj(zznb zznbVar) {
        this.zza = zznbVar;
    }

    private final void zzb(long j3, boolean z5) {
        this.zza.zzt();
        if (this.zza.zzu.zzac()) {
            this.zza.zzk().zzk.zza(j3);
            ((b) this.zza.zzb()).getClass();
            this.zza.zzj().zzp().zza("Session started, time", Long.valueOf(SystemClock.elapsedRealtime()));
            long j8 = j3 / 1000;
            this.zza.zzm().zza("auto", "_sid", Long.valueOf(j8), j3);
            this.zza.zzk().zzl.zza(j8);
            this.zza.zzk().zzg.zza(false);
            Bundle bundle = new Bundle();
            bundle.putLong("_sid", j8);
            this.zza.zzm().zza("auto", "_s", j3, bundle);
            String strZza = this.zza.zzk().zzq.zza();
            if (TextUtils.isEmpty(strZza)) {
                return;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString("_ffr", strZza);
            this.zza.zzm().zza("auto", "_ssr", j3, bundle2);
        }
    }

    public final void zza() {
        this.zza.zzt();
        zzha zzhaVarZzk = this.zza.zzk();
        ((b) this.zza.zzb()).getClass();
        if (zzhaVarZzk.zza(System.currentTimeMillis())) {
            this.zza.zzk().zzg.zza(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                this.zza.zzj().zzp().zza("Detected application was in foreground");
                ((b) this.zza.zzb()).getClass();
                zzb(System.currentTimeMillis(), false);
            }
        }
    }

    public final void zza(long j3, boolean z5) {
        this.zza.zzt();
        this.zza.zzab();
        if (this.zza.zzk().zza(j3)) {
            this.zza.zzk().zzg.zza(true);
            this.zza.zzg().zzag();
        }
        this.zza.zzk().zzk.zza(j3);
        if (this.zza.zzk().zzg.zza()) {
            zzb(j3, z5);
        }
    }
}
