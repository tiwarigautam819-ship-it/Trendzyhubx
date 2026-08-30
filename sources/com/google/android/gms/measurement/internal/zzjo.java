package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.e1;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzjo {
    final Context zza;
    String zzb;
    String zzc;
    String zzd;
    Boolean zze;
    long zzf;
    e1 zzg;
    boolean zzh;
    Long zzi;
    String zzj;

    public zzjo(Context context, e1 e1Var, Long l4) {
        this.zzh = true;
        d0.h(context);
        Context applicationContext = context.getApplicationContext();
        d0.h(applicationContext);
        this.zza = applicationContext;
        this.zzi = l4;
        if (e1Var != null) {
            this.zzg = e1Var;
            this.zzb = e1Var.f1574f;
            this.zzc = e1Var.f1573e;
            this.zzd = e1Var.f1572d;
            this.zzh = e1Var.f1571c;
            this.zzf = e1Var.f1570b;
            this.zzj = e1Var.h;
            Bundle bundle = e1Var.f1575g;
            if (bundle != null) {
                this.zze = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
