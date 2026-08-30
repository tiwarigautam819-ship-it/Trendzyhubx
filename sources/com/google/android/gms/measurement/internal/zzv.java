package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.c4;
import com.google.android.gms.internal.measurement.d4;
import com.google.android.gms.internal.measurement.e4;
import com.google.android.gms.internal.measurement.f4;
import com.google.android.gms.internal.measurement.l3;
import com.google.android.gms.internal.measurement.m3;
import com.google.android.gms.internal.measurement.n3;
import com.google.android.gms.internal.measurement.o3;
import com.google.android.gms.internal.measurement.o8;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import s.e;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzv {
    private String zza;
    private boolean zzb;
    private d4 zzc;
    private BitSet zzd;
    private BitSet zze;
    private Map<Integer, Long> zzf;
    private Map<Integer, List<Long>> zzg;
    private final /* synthetic */ zzt zzh;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v14, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v19, types: [java.util.List] */
    public final m3 zza(int i6) {
        ArrayList arrayList;
        ?? arrayList2;
        l3 l3VarR = m3.r();
        l3VarR.e();
        m3.o((m3) l3VarR.f1993b, i6);
        boolean z5 = this.zzb;
        l3VarR.e();
        m3.q((m3) l3VarR.f1993b, z5);
        d4 d4Var = this.zzc;
        if (d4Var != null) {
            l3VarR.e();
            m3.s((m3) l3VarR.f1993b, d4Var);
        }
        c4 c4VarZ = d4.z();
        List<Long> listZza = zzoo.zza(this.zzd);
        c4VarZ.e();
        d4.s((d4) c4VarZ.f1993b, listZza);
        List<Long> listZza2 = zzoo.zza(this.zze);
        c4VarZ.e();
        d4.y((d4) c4VarZ.f1993b, listZza2);
        if (this.zzf == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList(this.zzf.size());
            for (Integer num : this.zzf.keySet()) {
                int iIntValue = num.intValue();
                Long l4 = this.zzf.get(num);
                if (l4 != null) {
                    n3 n3VarR = o3.r();
                    n3VarR.e();
                    o3.o((o3) n3VarR.f1993b, iIntValue);
                    long jLongValue = l4.longValue();
                    n3VarR.e();
                    o3.p((o3) n3VarR.f1993b, jLongValue);
                    arrayList.add((o3) n3VarR.c());
                }
            }
        }
        if (arrayList != null) {
            c4VarZ.e();
            d4.p((d4) c4VarZ.f1993b, arrayList);
        }
        if (this.zzg == null) {
            arrayList2 = Collections.EMPTY_LIST;
        } else {
            arrayList2 = new ArrayList(this.zzg.size());
            for (Integer num2 : this.zzg.keySet()) {
                e4 e4VarS = f4.s();
                int iIntValue2 = num2.intValue();
                e4VarS.e();
                f4.p((f4) e4VarS.f1993b, iIntValue2);
                List<Long> list = this.zzg.get(num2);
                if (list != null) {
                    Collections.sort(list);
                    e4VarS.e();
                    f4.q((f4) e4VarS.f1993b, list);
                }
                arrayList2.add((f4) e4VarS.c());
            }
        }
        c4VarZ.e();
        d4.v((d4) c4VarZ.f1993b, (List) arrayList2);
        l3VarR.e();
        m3.p((m3) l3VarR.f1993b, (d4) c4VarZ.c());
        return (m3) l3VarR.c();
    }

    private zzv(zzt zztVar, String str) {
        this.zzh = zztVar;
        this.zza = str;
        this.zzb = true;
        this.zzd = new BitSet();
        this.zze = new BitSet();
        this.zzf = new e(0);
        this.zzg = new e(0);
    }

    private zzv(zzt zztVar, String str, d4 d4Var, BitSet bitSet, BitSet bitSet2, Map<Integer, Long> map, Map<Integer, Long> map2) {
        this.zzh = zztVar;
        this.zza = str;
        this.zzd = bitSet;
        this.zze = bitSet2;
        this.zzf = map;
        this.zzg = new e(0);
        if (map2 != null) {
            for (Integer num : map2.keySet()) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(map2.get(num));
                this.zzg.put(num, arrayList);
            }
        }
        this.zzb = false;
        this.zzc = d4Var;
    }

    public final void zza(zzaa zzaaVar) {
        int iZza = zzaaVar.zza();
        Boolean bool = zzaaVar.zzc;
        if (bool != null) {
            this.zze.set(iZza, bool.booleanValue());
        }
        Boolean bool2 = zzaaVar.zzd;
        if (bool2 != null) {
            this.zzd.set(iZza, bool2.booleanValue());
        }
        if (zzaaVar.zze != null) {
            Long l4 = this.zzf.get(Integer.valueOf(iZza));
            long jLongValue = zzaaVar.zze.longValue() / 1000;
            if (l4 == null || jLongValue > l4.longValue()) {
                this.zzf.put(Integer.valueOf(iZza), Long.valueOf(jLongValue));
            }
        }
        if (zzaaVar.zzf != null) {
            List<Long> arrayList = this.zzg.get(Integer.valueOf(iZza));
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.zzg.put(Integer.valueOf(iZza), arrayList);
            }
            if (zzaaVar.zzc()) {
                arrayList.clear();
            }
            o8.a();
            zzag zzagVarZze = this.zzh.zze();
            String str = this.zza;
            zzfz<Boolean> zzfzVar = zzbh.zzbp;
            if (zzagVarZze.zzf(str, zzfzVar) && zzaaVar.zzb()) {
                arrayList.clear();
            }
            o8.a();
            if (this.zzh.zze().zzf(this.zza, zzfzVar)) {
                long jLongValue2 = zzaaVar.zzf.longValue() / 1000;
                if (arrayList.contains(Long.valueOf(jLongValue2))) {
                    return;
                }
                arrayList.add(Long.valueOf(jLongValue2));
                return;
            }
            arrayList.add(Long.valueOf(zzaaVar.zzf.longValue() / 1000));
        }
    }
}
