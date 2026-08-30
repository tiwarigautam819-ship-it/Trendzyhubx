package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.w0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzmc implements Runnable {
    private final /* synthetic */ zzo zza;
    private final /* synthetic */ w0 zzb;
    private final /* synthetic */ zzls zzc;

    public zzmc(zzls zzlsVar, zzo zzoVar, w0 w0Var) {
        this.zza = zzoVar;
        this.zzb = w0Var;
        this.zzc = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (!this.zzc.zzk().zzo().zzh()) {
                this.zzc.zzj().zzv().zza("Analytics storage consent denied; will not get app instance id");
                this.zzc.zzm().zzc((String) null);
                this.zzc.zzk().zze.zza(null);
                return;
            }
            zzgb zzgbVar = this.zzc.zzb;
            if (zzgbVar == null) {
                this.zzc.zzj().zzg().zza("Failed to get app instance id");
                return;
            }
            d0.h(this.zza);
            String strZzb = zzgbVar.zzb(this.zza);
            if (strZzb != null) {
                this.zzc.zzm().zzc(strZzb);
                this.zzc.zzk().zze.zza(strZzb);
            }
            this.zzc.zzar();
            this.zzc.zzq().zza(this.zzb, strZzb);
        } catch (RemoteException e9) {
            this.zzc.zzj().zzg().zza("Failed to get app instance id", e9);
        } finally {
            this.zzc.zzq().zza(this.zzb, (String) null);
        }
    }
}
