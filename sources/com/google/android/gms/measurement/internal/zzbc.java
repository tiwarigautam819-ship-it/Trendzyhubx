package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.d0;
import java.util.Iterator;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbc {
    final String zza;
    final String zzb;
    final String zzc;
    final long zzd;
    final long zze;
    final zzbe zzf;

    public zzbc(zzhy zzhyVar, String str, String str2, String str3, long j3, long j8, Bundle bundle) {
        zzbe zzbeVar;
        d0.d(str2);
        d0.d(str3);
        this.zza = str2;
        this.zzb = str3;
        this.zzc = TextUtils.isEmpty(str) ? null : str;
        this.zzd = j3;
        this.zze = j8;
        if (j8 != 0 && j8 > j3) {
            zzhyVar.zzj().zzu().zza("Event created with reverse previous/current timestamps. appId", zzgo.zza(str2));
        }
        if (bundle == null || bundle.isEmpty()) {
            zzbeVar = new zzbe(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    zzhyVar.zzj().zzg().zza("Param name can't be null");
                    it.remove();
                } else {
                    Object objZzb = zzhyVar.zzt().zzb(next, bundle2.get(next));
                    if (objZzb == null) {
                        zzhyVar.zzj().zzu().zza("Param value can't be null", zzhyVar.zzk().zzb(next));
                        it.remove();
                    } else {
                        zzhyVar.zzt().zza(bundle2, next, objZzb);
                    }
                }
            }
            zzbeVar = new zzbe(bundle2);
        }
        this.zzf = zzbeVar;
    }

    public final String toString() {
        String str = this.zza;
        String str2 = this.zzb;
        String strValueOf = String.valueOf(this.zzf);
        StringBuilder sb = new StringBuilder("Event{appId='");
        sb.append(str);
        sb.append("', name='");
        sb.append(str2);
        sb.append("', params=");
        return x.h(sb, strValueOf, "}");
    }

    public final zzbc zza(zzhy zzhyVar, long j3) {
        return new zzbc(zzhyVar, this.zzc, this.zza, this.zzb, this.zzd, j3, this.zzf);
    }

    private zzbc(zzhy zzhyVar, String str, String str2, String str3, long j3, long j8, zzbe zzbeVar) {
        d0.d(str2);
        d0.d(str3);
        d0.h(zzbeVar);
        this.zza = str2;
        this.zzb = str3;
        this.zzc = TextUtils.isEmpty(str) ? null : str;
        this.zzd = j3;
        this.zze = j8;
        if (j8 != 0 && j8 > j3) {
            zzhyVar.zzj().zzu().zza("Event created with reverse previous/current timestamps. appId, name", zzgo.zza(str2), zzgo.zza(str3));
        }
        this.zzf = zzbeVar;
    }
}
