package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.d0;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzmn implements Runnable {
    private final /* synthetic */ AtomicReference zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ String zzc;
    private final /* synthetic */ String zzd;
    private final /* synthetic */ zzo zze;
    private final /* synthetic */ boolean zzf;
    private final /* synthetic */ zzls zzg;

    public zzmn(zzls zzlsVar, AtomicReference atomicReference, String str, String str2, String str3, zzo zzoVar, boolean z5) {
        this.zza = atomicReference;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = str3;
        this.zze = zzoVar;
        this.zzf = z5;
        this.zzg = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar;
        synchronized (this.zza) {
            try {
                try {
                    zzgbVar = this.zzg.zzb;
                } catch (RemoteException e9) {
                    this.zzg.zzj().zzg().zza("(legacy) Failed to get user properties; remote exception", zzgo.zza(this.zzb), this.zzc, e9);
                    this.zza.set(Collections.EMPTY_LIST);
                }
                if (zzgbVar == null) {
                    this.zzg.zzj().zzg().zza("(legacy) Failed to get user properties; not connected to service", zzgo.zza(this.zzb), this.zzc, this.zzd);
                    this.zza.set(Collections.EMPTY_LIST);
                    return;
                }
                if (TextUtils.isEmpty(this.zzb)) {
                    d0.h(this.zze);
                    this.zza.set(zzgbVar.zza(this.zzc, this.zzd, this.zzf, this.zze));
                } else {
                    this.zza.set(zzgbVar.zza(this.zzb, this.zzc, this.zzd, this.zzf));
                }
                this.zzg.zzar();
                this.zza.notify();
            } finally {
                this.zza.notify();
            }
        }
    }
}
