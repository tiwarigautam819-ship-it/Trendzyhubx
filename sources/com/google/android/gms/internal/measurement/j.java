package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class j implements i, n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1682a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f1683b = new HashMap();

    public j(String str) {
        this.f1682a = str;
    }

    @Override // com.google.android.gms.internal.measurement.i
    public final void b(String str, n nVar) {
        HashMap map = this.f1683b;
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

    @Override // com.google.android.gms.internal.measurement.n
    public final n d(String str, com.google.firebase.messaging.y yVar, ArrayList arrayList) {
        return "toString".equals(str) ? new p(this.f1682a) : w5.g(this, new p(str), yVar, arrayList);
    }

    public abstract n e(com.google.firebase.messaging.y yVar, List list);

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        String str = this.f1682a;
        if (str != null) {
            return str.equals(jVar.f1682a);
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f1682a;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.i
    public final n zza(String str) {
        HashMap map = this.f1683b;
        return map.containsKey(str) ? (n) map.get(str) : n.f1743n;
    }

    @Override // com.google.android.gms.internal.measurement.i
    public final boolean zzc(String str) {
        return this.f1683b.containsKey(str);
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final Boolean zzd() {
        return Boolean.TRUE;
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final String zzf() {
        return this.f1682a;
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final Iterator zzh() {
        return new k(this.f1683b.keySet().iterator());
    }

    @Override // com.google.android.gms.internal.measurement.n
    public n a() {
        return this;
    }
}
