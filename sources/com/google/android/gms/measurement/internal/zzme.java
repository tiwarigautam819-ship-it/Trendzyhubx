package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.d0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzme implements Runnable {
    private final /* synthetic */ zzo zza;
    private final /* synthetic */ zzls zzb;

    public zzme(zzls zzlsVar, zzo zzoVar) {
        this.zza = zzoVar;
        this.zzb = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar = this.zzb.zzb;
        if (zzgbVar == null) {
            this.zzb.zzj().zzu().zza("Failed to send app backgrounded");
            return;
        }
        try {
            d0.h(this.zza);
            zzgbVar.zzc(this.zza);
            this.zzb.zzar();
        } catch (RemoteException e9) {
            this.zzb.zzj().zzg().zza("Failed to send app backgrounded to the service", e9);
        }
    }
}
