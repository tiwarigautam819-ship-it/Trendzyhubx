package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import b4.b;
import com.google.android.gms.common.internal.d0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzmj implements Runnable {
    private final /* synthetic */ boolean zza;
    private final /* synthetic */ zzo zzb;
    private final /* synthetic */ boolean zzc;
    private final /* synthetic */ zzbf zzd;
    private final /* synthetic */ String zze;
    private final /* synthetic */ zzls zzf;

    public zzmj(zzls zzlsVar, boolean z5, zzo zzoVar, boolean z8, zzbf zzbfVar, String str) {
        this.zza = z5;
        this.zzb = zzoVar;
        this.zzc = z8;
        this.zzd = zzbfVar;
        this.zze = str;
        this.zzf = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        long j3;
        long jElapsedRealtime;
        zzgb zzgbVar = this.zzf.zzb;
        if (zzgbVar == null) {
            this.zzf.zzj().zzg().zza("Discarding data. Failed to send event to service");
            return;
        }
        if (this.zza) {
            d0.h(this.zzb);
            this.zzf.zza(zzgbVar, this.zzc ? null : this.zzd, this.zzb);
        } else {
            boolean zZza = this.zzf.zze().zza(zzbh.zzce);
            try {
                if (TextUtils.isEmpty(this.zze)) {
                    d0.h(this.zzb);
                    if (zZza) {
                        ((b) this.zzf.zzu.zzb()).getClass();
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        try {
                            ((b) this.zzf.zzu.zzb()).getClass();
                            jElapsedRealtime = SystemClock.elapsedRealtime();
                            j3 = jCurrentTimeMillis;
                        } catch (RemoteException e9) {
                            e = e9;
                            jElapsedRealtime = 0;
                            j3 = jCurrentTimeMillis;
                            this.zzf.zzj().zzg().zza("Failed to send event to the service", e);
                            if (zZza) {
                                zzgm zzgmVarZza = zzgm.zza(this.zzf.zzu);
                                ((b) this.zzf.zzu.zzb()).getClass();
                                long jCurrentTimeMillis2 = System.currentTimeMillis();
                                ((b) this.zzf.zzu.zzb()).getClass();
                                zzgmVarZza.zza(36301, 13, j3, jCurrentTimeMillis2, (int) (SystemClock.elapsedRealtime() - jElapsedRealtime));
                            }
                            this.zzf.zzar();
                        }
                    } else {
                        j3 = 0;
                        jElapsedRealtime = 0;
                    }
                    try {
                        zzgbVar.zza(this.zzd, this.zzb);
                        if (zZza) {
                            this.zzf.zzj().zzp().zza("Logging telemetry for logEvent");
                            zzgm zzgmVarZza2 = zzgm.zza(this.zzf.zzu);
                            ((b) this.zzf.zzu.zzb()).getClass();
                            long jCurrentTimeMillis3 = System.currentTimeMillis();
                            ((b) this.zzf.zzu.zzb()).getClass();
                            zzgmVarZza2.zza(36301, 0, j3, jCurrentTimeMillis3, (int) (SystemClock.elapsedRealtime() - jElapsedRealtime));
                        }
                    } catch (RemoteException e10) {
                        e = e10;
                        this.zzf.zzj().zzg().zza("Failed to send event to the service", e);
                        if (zZza && j3 != 0) {
                            zzgm zzgmVarZza3 = zzgm.zza(this.zzf.zzu);
                            ((b) this.zzf.zzu.zzb()).getClass();
                            long jCurrentTimeMillis22 = System.currentTimeMillis();
                            ((b) this.zzf.zzu.zzb()).getClass();
                            zzgmVarZza3.zza(36301, 13, j3, jCurrentTimeMillis22, (int) (SystemClock.elapsedRealtime() - jElapsedRealtime));
                        }
                    }
                } else {
                    zzgbVar.zza(this.zzd, this.zze, this.zzf.zzj().zzx());
                }
            } catch (RemoteException e11) {
                e = e11;
                j3 = 0;
                jElapsedRealtime = 0;
            }
        }
        this.zzf.zzar();
    }
}
