package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.c4;
import com.google.android.gms.internal.measurement.d4;
import com.google.android.gms.internal.measurement.f2;
import com.google.android.gms.internal.measurement.f4;
import com.google.android.gms.internal.measurement.h4;
import com.google.android.gms.internal.measurement.l2;
import com.google.android.gms.internal.measurement.m3;
import com.google.android.gms.internal.measurement.o3;
import com.google.android.gms.internal.measurement.o8;
import com.google.android.gms.internal.measurement.q3;
import com.google.android.gms.internal.measurement.v7;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import s.e;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzt extends zznr {
    private String zza;
    private Set<Integer> zzb;
    private Map<Integer, zzv> zzc;
    private Long zzd;
    private Long zze;

    public zzt(zznv zznvVar) {
        super(zznvVar);
    }

    private final zzv zza(Integer num) {
        if (this.zzc.containsKey(num)) {
            return this.zzc.get(num);
        }
        zzv zzvVar = new zzv(this, this.zza);
        this.zzc.put(num, zzvVar);
        return zzvVar;
    }

    private final List<m3> zzu() {
        ArrayList arrayList = new ArrayList();
        Set<Integer> setKeySet = this.zzc.keySet();
        setKeySet.removeAll(this.zzb);
        for (Integer num : setKeySet) {
            int iIntValue = num.intValue();
            zzv zzvVar = this.zzc.get(num);
            d0.h(zzvVar);
            m3 m3VarZza = zzvVar.zza(iIntValue);
            arrayList.add(m3VarZza);
            zzal zzalVarZzh = zzh();
            String str = this.zza;
            d4 d4VarT = m3VarZza.t();
            zzalVarZzh.zzal();
            zzalVarZzh.zzt();
            d0.d(str);
            d0.h(d4VarT);
            byte[] bArrC = d4VarT.c();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", num);
            contentValues.put("current_results", bArrC);
            try {
                if (zzalVarZzh.e_().insertWithOnConflict("audience_filter_values", null, contentValues, 5) == -1) {
                    zzalVarZzh.zzj().zzg().zza("Failed to insert filter results (got -1). appId", zzgo.zza(str));
                }
            } catch (SQLiteException e9) {
                zzalVarZzh.zzj().zzg().zza("Error storing filter results. appId", zzgo.zza(str), e9);
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zznr
    public final boolean zzc() {
        return false;
    }

    public final List<m3> zza(String str, List<q3> list, List<h4> list2, Long l4, Long l8) {
        return zza(str, list, list2, l4, l8, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v19 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v20 */
    /* JADX WARN: Type inference failed for: r12v22 */
    /* JADX WARN: Type inference failed for: r12v28 */
    /* JADX WARN: Type inference failed for: r12v29 */
    /* JADX WARN: Type inference failed for: r12v3, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r2v11, types: [s.j] */
    /* JADX WARN: Type inference failed for: r5v3, types: [com.google.android.gms.internal.measurement.d4, com.google.android.gms.internal.measurement.z5, java.lang.Object] */
    public final List<m3> zza(String str, List<q3> list, List<h4> list2, Long l4, Long l8, boolean z5) {
        boolean z8;
        boolean z9;
        HashSet hashSet;
        ?? r12;
        List<f2> list3;
        boolean z10;
        ?? r19;
        Iterator it;
        d4 d4Var;
        Iterator it2;
        Long l9;
        HashSet hashSet2;
        Map<Integer, List<Integer>> map;
        Iterator<Integer> it3;
        d0.d(str);
        d0.h(list);
        d0.h(list2);
        this.zza = str;
        this.zzb = new HashSet();
        this.zzc = new e(0);
        this.zzd = l4;
        this.zze = l8;
        Iterator<q3> it4 = list.iterator();
        while (true) {
            if (!it4.hasNext()) {
                z8 = false;
                break;
            }
            if ("_s".equals(it4.next().B())) {
                z8 = true;
                break;
            }
        }
        o8.a();
        boolean zZzf = zze().zzf(this.zza, zzbh.zzbp);
        o8.a();
        boolean zZzf2 = zze().zzf(this.zza, zzbh.zzbo);
        if (z8) {
            zzal zzalVarZzh = zzh();
            String str2 = this.zza;
            zzalVarZzh.zzal();
            zzalVarZzh.zzt();
            d0.d(str2);
            ContentValues contentValues = new ContentValues();
            contentValues.put("current_session_count", (Integer) 0);
            try {
                zzalVarZzh.e_().update("events", contentValues, "app_id = ?", new String[]{str2});
            } catch (SQLiteException e9) {
                zzalVarZzh.zzj().zzg().zza("Error resetting session-scoped event counts. appId", zzgo.zza(str2), e9);
            }
        }
        Map<Integer, List<f2>> mapZzn = Collections.EMPTY_MAP;
        if (zZzf2 && zZzf) {
            mapZzn = zzh().zzn(this.zza);
        }
        Map<Integer, d4> mapZzm = zzh().zzm(this.zza);
        if (mapZzm.isEmpty()) {
            z9 = true;
        } else {
            HashSet hashSet3 = new HashSet(mapZzm.keySet());
            if (z8) {
                String str3 = this.zza;
                Map<Integer, List<Integer>> mapZzo = zzh().zzo(this.zza);
                d0.d(str3);
                ?? eVar = new e(0);
                if (!mapZzm.isEmpty()) {
                    Iterator<Integer> it5 = mapZzm.keySet().iterator();
                    while (it5.hasNext()) {
                        Integer next = it5.next();
                        next.getClass();
                        d4 d4Var2 = mapZzm.get(next);
                        List<Integer> list4 = mapZzo.get(next);
                        if (list4 != null && !list4.isEmpty()) {
                            hashSet2 = hashSet3;
                            List<Long> listZza = g_().zza(d4Var2.C(), list4);
                            if (listZza.isEmpty()) {
                                hashSet3 = hashSet2;
                            } else {
                                c4 c4Var = (c4) d4Var2.k();
                                c4Var.e();
                                d4.r((d4) c4Var.f1993b);
                                c4Var.e();
                                map = mapZzo;
                                d4.s((d4) c4Var.f1993b, listZza);
                                List<Long> listZza2 = g_().zza(d4Var2.E(), list4);
                                c4Var.e();
                                d4.x((d4) c4Var.f1993b);
                                c4Var.e();
                                d4.y((d4) c4Var.f1993b, listZza2);
                                ArrayList arrayList = new ArrayList();
                                Iterator it6 = d4Var2.B().iterator();
                                while (it6.hasNext()) {
                                    Iterator it7 = it6;
                                    o3 o3Var = (o3) it6.next();
                                    Iterator<Integer> it8 = it5;
                                    if (!list4.contains(Integer.valueOf(o3Var.n()))) {
                                        arrayList.add(o3Var);
                                    }
                                    it6 = it7;
                                    it5 = it8;
                                }
                                it3 = it5;
                                c4Var.e();
                                d4.o((d4) c4Var.f1993b);
                                c4Var.e();
                                d4.p((d4) c4Var.f1993b, arrayList);
                                ArrayList arrayList2 = new ArrayList();
                                for (f4 f4Var : d4Var2.D()) {
                                    if (!list4.contains(Integer.valueOf(f4Var.r()))) {
                                        arrayList2.add(f4Var);
                                    }
                                }
                                c4Var.e();
                                d4.u((d4) c4Var.f1993b);
                                c4Var.e();
                                d4.v((d4) c4Var.f1993b, arrayList2);
                                eVar.put(next, (d4) c4Var.c());
                            }
                        } else {
                            hashSet2 = hashSet3;
                            map = mapZzo;
                            it3 = it5;
                            eVar.put(next, d4Var2);
                        }
                        hashSet3 = hashSet2;
                        mapZzo = map;
                        it5 = it3;
                    }
                }
                hashSet = hashSet3;
                z9 = true;
                r12 = eVar;
            } else {
                hashSet = hashSet3;
                z9 = true;
                r12 = mapZzm;
            }
            Iterator it9 = hashSet.iterator();
            ?? r122 = r12;
            while (it9.hasNext()) {
                Integer num = (Integer) it9.next();
                num.getClass();
                d4 d4Var3 = (d4) r122.get(num);
                BitSet bitSet = new BitSet();
                BitSet bitSet2 = new BitSet();
                d4 d4Var4 = d4Var3;
                e eVar2 = new e(0);
                if (d4Var4 != null && d4Var4.n() != 0) {
                    Iterator it10 = d4Var4.B().iterator();
                    while (it10.hasNext()) {
                        o3 o3Var2 = (o3) it10.next();
                        if (o3Var2.t()) {
                            d4Var = d4Var4;
                            Integer numValueOf = Integer.valueOf(o3Var2.n());
                            if (o3Var2.s()) {
                                Long lValueOf = Long.valueOf(o3Var2.q());
                                it2 = it10;
                                l9 = lValueOf;
                            } else {
                                it2 = it10;
                                l9 = null;
                            }
                            eVar2.put(numValueOf, l9);
                        } else {
                            d4Var = d4Var4;
                            it2 = it10;
                        }
                        d4Var4 = d4Var;
                        it10 = it2;
                    }
                }
                d4 d4Var5 = d4Var4;
                e eVar3 = new e(0);
                if (d4Var5 != null && d4Var5.t() != 0) {
                    r122 = r122;
                    for (f4 f4Var2 : d4Var5.D()) {
                        if (!f4Var2.u() || f4Var2.n() <= 0) {
                            r19 = r122;
                            it = it9;
                        } else {
                            r19 = r122;
                            it = it9;
                            eVar3.put(Integer.valueOf(f4Var2.r()), Long.valueOf(f4Var2.o(f4Var2.n() - 1)));
                        }
                        r122 = r19;
                        it9 = it;
                    }
                }
                ?? r192 = r122;
                Iterator it11 = it9;
                if (d4Var5 != null) {
                    int i6 = 0;
                    while (i6 < (d4Var5.w() << 6)) {
                        if (zzoo.zza((List<Long>) d4Var5.E(), i6)) {
                            z10 = zZzf;
                            zzj().zzp().zza("Filter already evaluated. audience ID, filter ID", num, Integer.valueOf(i6));
                            bitSet2.set(i6);
                            if (zzoo.zza((List<Long>) d4Var5.C(), i6)) {
                                bitSet.set(i6);
                            }
                            i6++;
                            zZzf = z10;
                        } else {
                            z10 = zZzf;
                        }
                        eVar2.remove(Integer.valueOf(i6));
                        i6++;
                        zZzf = z10;
                    }
                }
                boolean z11 = zZzf;
                d4 d4Var6 = mapZzm.get(num);
                if (zZzf2 && z11 && (list3 = mapZzn.get(num)) != null && this.zze != null && this.zzd != null) {
                    for (f2 f2Var : list3) {
                        int iR = f2Var.r();
                        Map<Integer, List<f2>> map2 = mapZzn;
                        long jLongValue = this.zze.longValue() / 1000;
                        if (f2Var.x()) {
                            jLongValue = this.zzd.longValue() / 1000;
                        }
                        if (eVar2.containsKey(Integer.valueOf(iR))) {
                            eVar2.put(Integer.valueOf(iR), Long.valueOf(jLongValue));
                        }
                        if (eVar3.containsKey(Integer.valueOf(iR))) {
                            eVar3.put(Integer.valueOf(iR), Long.valueOf(jLongValue));
                        }
                        mapZzn = map2;
                    }
                }
                this.zzc.put(num, new zzv(this, this.zza, d4Var6, bitSet, bitSet2, eVar2, eVar3));
                mapZzm = mapZzm;
                zZzf = z11;
                mapZzn = mapZzn;
                r122 = r192;
                it9 = it11;
            }
        }
        v7.a();
        if (zze().zzf(null, zzbh.zzcy)) {
            zza(list, z5);
            if (z5) {
                return new ArrayList();
            }
            zza(list2);
            return zzu();
        }
        zza(list, z9);
        zza(list2);
        return zzu();
    }

    private final void zza(List<q3> list, boolean z5) {
        e eVar;
        zzy zzyVar;
        zzbb zzbbVar;
        if (list.isEmpty()) {
            return;
        }
        zzac zzacVar = null;
        zzy zzyVar2 = new zzy(this);
        e eVar2 = new e(0);
        for (q3 q3Var : list) {
            q3 q3VarZza = zzyVar2.zza(this.zza, q3Var);
            if (q3VarZza != null) {
                zzal zzalVarZzh = zzh();
                String str = this.zza;
                String strB = q3VarZza.B();
                zzbb zzbbVarZzd = zzalVarZzh.zzd(str, q3Var.B());
                if (zzbbVarZzd == null) {
                    zzalVarZzh.zzj().zzu().zza("Event aggregate wasn't created during raw event logging. appId, event", zzgo.zza(str), zzalVarZzh.zzi().zza(strB));
                    zzyVar = zzyVar2;
                    eVar = eVar2;
                    zzbbVar = new zzbb(str, q3Var.B(), 1L, 1L, 1L, q3Var.z(), 0L, null, null, null, null);
                } else {
                    eVar = eVar2;
                    zzyVar = zzyVar2;
                    zzbbVar = new zzbb(zzbbVarZzd.zza, zzbbVarZzd.zzb, zzbbVarZzd.zzc + 1, zzbbVarZzd.zzd + 1, zzbbVarZzd.zze + 1, zzbbVarZzd.zzf, zzbbVarZzd.zzg, zzbbVarZzd.zzh, zzbbVarZzd.zzi, zzbbVarZzd.zzj, zzbbVarZzd.zzk);
                }
                zzh().zza(zzbbVar);
                v7.a();
                if (zze().zzf(null, zzbh.zzcy) && z5) {
                    zzacVar = null;
                    eVar2 = eVar;
                } else {
                    long j3 = zzbbVar.zzc;
                    String strB2 = q3VarZza.B();
                    e eVar3 = eVar;
                    Map<Integer, List<f2>> mapZzf = (Map) eVar3.get(strB2);
                    if (mapZzf == null) {
                        mapZzf = zzh().zzf(this.zza, strB2);
                        eVar3.put(strB2, mapZzf);
                    }
                    for (Integer num : mapZzf.keySet()) {
                        int iIntValue = num.intValue();
                        if (this.zzb.contains(num)) {
                            zzj().zzp().zza("Skipping failed audience ID", num);
                        } else {
                            Iterator<f2> it = mapZzf.get(num).iterator();
                            boolean z8 = true;
                            while (true) {
                                if (!it.hasNext()) {
                                    break;
                                }
                                f2 next = it.next();
                                zzx zzxVar = new zzx(this, this.zza, iIntValue, next);
                                boolean zZza = zzxVar.zza(this.zzd, this.zze, q3VarZza, j3, zzbbVar, zza(iIntValue, next.r()));
                                if (zZza) {
                                    zza(num).zza(zzxVar);
                                    z8 = zZza;
                                } else {
                                    this.zzb.add(num);
                                    z8 = zZza;
                                    break;
                                }
                            }
                            if (!z8) {
                                this.zzb.add(num);
                            }
                        }
                    }
                    eVar2 = eVar3;
                    zzacVar = null;
                }
                zzyVar2 = zzyVar;
            } else {
                eVar2 = eVar2;
                zzacVar = zzacVar;
            }
        }
    }

    private final void zza(List<h4> list) {
        l2 next;
        if (list.isEmpty()) {
            return;
        }
        e eVar = new e(0);
        for (h4 h4Var : list) {
            String strA = h4Var.A();
            Map<Integer, List<l2>> mapZzg = (Map) eVar.get(strA);
            if (mapZzg == null) {
                mapZzg = zzh().zzg(this.zza, strA);
                eVar.put(strA, mapZzg);
            }
            Iterator<Integer> it = mapZzg.keySet().iterator();
            while (true) {
                if (it.hasNext()) {
                    Integer next2 = it.next();
                    int iIntValue = next2.intValue();
                    if (this.zzb.contains(next2)) {
                        zzj().zzp().zza("Skipping failed audience ID", next2);
                        break;
                    }
                    Iterator<l2> it2 = mapZzg.get(next2).iterator();
                    boolean zZza = true;
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        next = it2.next();
                        if (zzj().zza(2)) {
                            zzj().zzp().zza("Evaluating filter. audience, filter, property", next2, next.v() ? Integer.valueOf(next.n()) : null, zzi().zzc(next.r()));
                            zzj().zzp().zza("Filter definition", g_().zza(next));
                        }
                        if (!next.v() || next.n() > 256) {
                            break;
                        }
                        zzz zzzVar = new zzz(this, this.zza, iIntValue, next);
                        zZza = zzzVar.zza(this.zzd, this.zze, h4Var, zza(iIntValue, next.n()));
                        if (zZza) {
                            zza(next2).zza(zzzVar);
                        } else {
                            this.zzb.add(next2);
                            break;
                        }
                    }
                    zzj().zzu().zza("Invalid property filter ID. appId, id", zzgo.zza(this.zza), String.valueOf(next.v() ? Integer.valueOf(next.n()) : null));
                    zZza = false;
                    if (!zZza) {
                        this.zzb.add(next2);
                    }
                }
            }
        }
    }

    private final boolean zza(int i6, int i9) {
        zzv zzvVar = this.zzc.get(Integer.valueOf(i6));
        if (zzvVar == null) {
            return false;
        }
        return zzvVar.zzd.get(i9);
    }
}
