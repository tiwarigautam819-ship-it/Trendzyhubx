package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.w0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzlw implements Runnable {
    private final /* synthetic */ String zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ zzo zzc;
    private final /* synthetic */ boolean zzd;
    private final /* synthetic */ w0 zze;
    private final /* synthetic */ zzls zzf;

    public zzlw(zzls zzlsVar, String str, String str2, zzo zzoVar, boolean z5, w0 w0Var) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzoVar;
        this.zzd = z5;
        this.zze = w0Var;
        this.zzf = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bundle bundle = new Bundle();
        try {
            zzgb zzgbVar = this.zzf.zzb;
            if (zzgbVar == null) {
                this.zzf.zzj().zzg().zza("Failed to get user properties; not connected to service", this.zza, this.zzb);
                return;
            }
            d0.h(this.zzc);
            Bundle bundleZza = zzos.zza(zzgbVar.zza(this.zza, this.zzb, this.zzd, this.zzc));
            this.zzf.zzar();
            this.zzf.zzq().zza(this.zze, bundleZza);
        } catch (RemoteException e9) {
            this.zzf.zzj().zzg().zza("Failed to get user properties; remote exception", this.zza, e9);
        } finally {
            this.zzf.zzq().zza(this.zze, bundle);
        }
    }
}
