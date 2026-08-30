package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.d0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzmb implements Runnable {
    private final /* synthetic */ zzo zza;
    private final /* synthetic */ zzls zzb;

    public zzmb(zzls zzlsVar, zzo zzoVar) {
        this.zza = zzoVar;
        this.zzb = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        zzgb zzgbVar = this.zzb.zzb;
        if (zzgbVar == null) {
            this.zzb.zzj().zzg().zza("Discarding data. Failed to send app launch");
            return;
        }
        try {
            d0.h(this.zza);
            zzgbVar.zzd(this.zza);
            this.zzb.zzh().zzac();
            this.zzb.zza(zzgbVar, (y3.a) null, this.zza);
            this.zzb.zzar();
        } catch (RemoteException e9) {
            this.zzb.zzj().zzg().zza("Failed to send app launch to the service", e9);
        }
    }
}
