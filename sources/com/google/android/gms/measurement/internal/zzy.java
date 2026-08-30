package com.google.android.gms.measurement.internal;

import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.p3;
import com.google.android.gms.internal.measurement.q3;
import com.google.android.gms.internal.measurement.u3;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzy {
    private q3 zza;
    private Long zzb;
    private long zzc;
    private final /* synthetic */ zzt zzd;

    public final q3 zza(String str, q3 q3Var) {
        q3 q3Var2;
        Object obj;
        String strB = q3Var.B();
        List listC = q3Var.C();
        this.zzd.g_();
        Long l4 = (Long) zzoo.zzb(q3Var, "_eid");
        boolean z5 = l4 != null;
        if (z5 && strB.equals("_ep")) {
            d0.h(l4);
            this.zzd.g_();
            String str2 = (String) zzoo.zzb(q3Var, "_en");
            if (TextUtils.isEmpty(str2)) {
                this.zzd.zzj().zzn().zza("Extra parameter without an event name. eventId", l4);
                return null;
            }
            if (this.zza == null || this.zzb == null || l4.longValue() != this.zzb.longValue()) {
                Pair<q3, Long> pairZza = this.zzd.zzh().zza(str, l4);
                if (pairZza == null || (obj = pairZza.first) == null) {
                    this.zzd.zzj().zzn().zza("Extra parameter without existing main event. eventName, eventId", str2, l4);
                    return null;
                }
                this.zza = (q3) obj;
                this.zzc = ((Long) pairZza.second).longValue();
                this.zzd.g_();
                this.zzb = (Long) zzoo.zzb(this.zza, "_eid");
            }
            long j3 = this.zzc - 1;
            this.zzc = j3;
            if (j3 <= 0) {
                zzal zzalVarZzh = this.zzd.zzh();
                zzalVarZzh.zzt();
                zzalVarZzh.zzj().zzp().zza("Clearing complex main event info. appId", str);
                try {
                    zzalVarZzh.e_().execSQL("delete from main_event_params where app_id=?", new String[]{str});
                } catch (SQLiteException e9) {
                    zzalVarZzh.zzj().zzg().zza("Error clearing complex main event", e9);
                }
            } else {
                this.zzd.zzh().zza(str, l4, this.zzc, this.zza);
            }
            ArrayList arrayList = new ArrayList();
            for (u3 u3Var : this.zza.C()) {
                this.zzd.g_();
                if (zzoo.zza(q3Var, u3Var.C()) == null) {
                    arrayList.add(u3Var);
                }
            }
            if (arrayList.isEmpty()) {
                this.zzd.zzj().zzn().zza("No unique parameters in main event. eventName", str2);
            } else {
                arrayList.addAll(listC);
                listC = arrayList;
            }
            q3Var2 = q3Var;
            strB = str2;
        } else if (z5) {
            this.zzb = l4;
            this.zza = q3Var;
            this.zzd.g_();
            long jLongValue = ((Long) zzoo.zza(q3Var, "_epc", (Object) 0L)).longValue();
            this.zzc = jLongValue;
            if (jLongValue <= 0) {
                this.zzd.zzj().zzn().zza("Complex event with zero extra param count. eventName", strB);
                q3Var2 = q3Var;
            } else {
                zzal zzalVarZzh2 = this.zzd.zzh();
                d0.h(l4);
                q3Var2 = q3Var;
                zzalVarZzh2.zza(str, l4, this.zzc, q3Var2);
            }
        } else {
            q3Var2 = q3Var;
        }
        p3 p3Var = (p3) q3Var2.k();
        p3Var.j(strB);
        p3Var.e();
        q3.r((q3) p3Var.f1993b);
        p3Var.e();
        q3.u((q3) p3Var.f1993b, listC);
        return (q3) p3Var.c();
    }

    private zzy(zzt zztVar) {
        this.zzd = zztVar;
    }
}
