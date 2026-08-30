package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.w0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzmi implements Runnable {
    private final /* synthetic */ zzbf zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ w0 zzc;
    private final /* synthetic */ zzls zzd;

    public zzmi(zzls zzlsVar, zzbf zzbfVar, String str, w0 w0Var) {
        this.zza = zzbfVar;
        this.zzb = str;
        this.zzc = w0Var;
        this.zzd = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            zzgb zzgbVar = this.zzd.zzb;
            if (zzgbVar == null) {
                this.zzd.zzj().zzg().zza("Discarding data. Failed to send event to service to bundle");
                return;
            }
            byte[] bArrZza = zzgbVar.zza(this.zza, this.zzb);
            this.zzd.zzar();
            this.zzd.zzq().zza(this.zzc, bArrZza);
        } catch (RemoteException e9) {
            this.zzd.zzj().zzg().zza("Failed to send event to the service to bundle", e9);
        } finally {
            this.zzd.zzq().zza(this.zzc, (byte[]) null);
        }
    }
}
