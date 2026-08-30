package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class m implements i, n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f1723a = new HashMap();

    @Override // com.google.android.gms.internal.measurement.n
    public final n a() {
        m mVar = new m();
        for (Map.Entry entry : this.f1723a.entrySet()) {
            boolean z5 = entry.getValue() instanceof i;
            HashMap map = mVar.f1723a;
            if (z5) {
                map.put((String) entry.getKey(), (n) entry.getValue());
            } else {
                map.put((String) entry.getKey(), ((n) entry.getValue()).a());
            }
        }
        return mVar;
    }

    @Override // com.google.android.gms.internal.measurement.i
    public final void b(String str, n nVar) {
        HashMap map = this.f1723a;
        if (nVar == null) {
            map.remove(str);
        } else {
            map.put(str, nVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final Double c() {
        return Double.valueOf(Double.NaN);
    }

    public n d(String str, com.google.firebase.messaging.y yVar, ArrayList arrayList) {
        return "toString".equals(str) ? new p(toString()) : w5.g(this, new p(str), yVar, arrayList);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof m) {
            return this.f1723a.equals(((m) obj).f1723a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f1723a.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        HashMap map = this.f1723a;
        if (!map.isEmpty()) {
            for (String str : map.keySet()) {
                sb.append(String.format("%s: %s,", str, map.get(str)));
            }
            sb.deleteCharAt(sb.lastIndexOf(","));
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.i
    public final n zza(String str) {
        HashMap map = this.f1723a;
        return map.containsKey(str) ? (n) map.get(str) : n.f1743n;
    }

    @Override // com.google.android.gms.internal.measurement.i
    public final boolean zzc(String str) {
        return this.f1723a.containsKey(str);
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final Boolean zzd() {
        return Boolean.TRUE;
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final String zzf() {
        return "[object Object]";
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final Iterator zzh() {
        return new k(this.f1723a.keySet().iterator());
    }
}
