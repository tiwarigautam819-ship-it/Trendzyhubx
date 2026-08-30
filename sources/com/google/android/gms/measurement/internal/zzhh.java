package com.google.android.gms.measurement.internal;

import a4.b;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.internal.measurement.f9;
import com.google.android.gms.internal.measurement.j0;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzhh implements Runnable {
    private final /* synthetic */ j0 zza;
    private final /* synthetic */ ServiceConnection zzb;
    private final /* synthetic */ zzhi zzc;

    public zzhh(zzhi zzhiVar, j0 j0Var, ServiceConnection serviceConnection) {
        this.zza = j0Var;
        this.zzb = serviceConnection;
        this.zzc = zzhiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzhi zzhiVar = this.zzc;
        zzhf zzhfVar = zzhiVar.zza;
        String str = zzhiVar.zzb;
        j0 j0Var = this.zza;
        ServiceConnection serviceConnection = this.zzb;
        Bundle bundleZza = zzhfVar.zza(str, j0Var);
        zzhfVar.zza.zzl().zzt();
        zzhfVar.zza.zzy();
        if (bundleZza != null) {
            long j3 = bundleZza.getLong("install_begin_timestamp_seconds", 0L) * 1000;
            if (j3 == 0) {
                zzhfVar.zza.zzj().zzu().zza("Service response is missing Install Referrer install timestamp");
            } else {
                String string = bundleZza.getString("install_referrer");
                if (string == null || string.isEmpty()) {
                    zzhfVar.zza.zzj().zzg().zza("No referrer defined in Install Referrer response");
                } else {
                    zzhfVar.zza.zzj().zzp().zza("InstallReferrer API result", string);
                    f9.a();
                    boolean zZza = zzhfVar.zza.zzf().zza(zzbh.zzcu);
                    Bundle bundleZza2 = zzhfVar.zza.zzt().zza(Uri.parse("?".concat(string)), zZza);
                    if (bundleZza2 == null) {
                        zzhfVar.zza.zzj().zzg().zza("No campaign params defined in Install Referrer result");
                    } else {
                        if (!zZza) {
                            String string2 = bundleZza2.getString(FirebaseAnalytics.Param.MEDIUM);
                            if (string2 != null && !"(not set)".equalsIgnoreCase(string2) && !"organic".equalsIgnoreCase(string2)) {
                                long j8 = bundleZza.getLong("referrer_click_timestamp_seconds", 0L) * 1000;
                                if (j8 == 0) {
                                    zzhfVar.zza.zzj().zzg().zza("Install Referrer is missing click timestamp for ad campaign");
                                } else {
                                    bundleZza2.putLong("click_timestamp", j8);
                                }
                            }
                        } else if (bundleZza2.containsKey("gclid") || bundleZza2.containsKey("gbraid")) {
                            long j9 = bundleZza.getLong("referrer_click_timestamp_server_seconds", 0L) * 1000;
                            if (j9 > 0) {
                                bundleZza2.putLong("click_timestamp", j9);
                            }
                        }
                        if (j3 == zzhfVar.zza.zzn().zzd.zza()) {
                            zzhfVar.zza.zzj().zzp().zza("Logging Install Referrer campaign from module while it may have already been logged.");
                        }
                        if (zzhfVar.zza.zzac()) {
                            zzhfVar.zza.zzn().zzd.zza(j3);
                            zzhfVar.zza.zzj().zzp().zza("Logging Install Referrer campaign from gmscore with ", "referrer API v2");
                            bundleZza2.putString("_cis", "referrer API v2");
                            zzhfVar.zza.zzp().zza("auto", "_cmp", bundleZza2, str);
                        }
                    }
                }
            }
        }
        if (serviceConnection != null) {
            b.b().c(zzhfVar.zza.zza(), serviceConnection);
        }
    }
}
