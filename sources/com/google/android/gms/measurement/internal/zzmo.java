package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.w0;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzmo implements Runnable {
    private final /* synthetic */ String zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ zzo zzc;
    private final /* synthetic */ w0 zzd;
    private final /* synthetic */ zzls zze;

    public zzmo(zzls zzlsVar, String str, String str2, zzo zzoVar, w0 w0Var) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzoVar;
        this.zzd = w0Var;
        this.zze = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList<Bundle> arrayList = new ArrayList<>();
        try {
            zzgb zzgbVar = this.zze.zzb;
            if (zzgbVar == null) {
                this.zze.zzj().zzg().zza("Failed to get conditional properties; not connected to service", this.zza, this.zzb);
                return;
            }
            d0.h(this.zzc);
            ArrayList<Bundle> arrayListZzb = zzos.zzb(zzgbVar.zza(this.zza, this.zzb, this.zzc));
            this.zze.zzar();
            this.zze.zzq().zza(this.zzd, arrayListZzb);
        } catch (RemoteException e9) {
            this.zze.zzj().zzg().zza("Failed to get conditional properties; remote exception", this.zza, this.zzb, e9);
        } finally {
            this.zze.zzq().zza(this.zzd, arrayList);
        }
    }
}
