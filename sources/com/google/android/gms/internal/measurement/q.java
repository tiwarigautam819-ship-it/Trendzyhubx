package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q implements n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1816a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f1817b;

    public q(String str, ArrayList arrayList) {
        this.f1816a = str;
        ArrayList arrayList2 = new ArrayList();
        this.f1817b = arrayList2;
        arrayList2.addAll(arrayList);
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final Double c() {
        throw new IllegalStateException("Statement cannot be cast as Double");
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final n d(String str, com.google.firebase.messaging.y yVar, ArrayList arrayList) {
        throw new IllegalStateException("Statement is not an evaluated entity");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        ArrayList arrayList = qVar.f1817b;
        String str = qVar.f1816a;
        String str2 = this.f1816a;
        if (str2 == null ? str != null : !str2.equals(str)) {
            return false;
        }
        ArrayList arrayList2 = this.f1817b;
        return arrayList2 != null ? arrayList2.equals(arrayList) : arrayList == null;
    }

    public final int hashCode() {
        String str = this.f1816a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        ArrayList arrayList = this.f1817b;
        return iHashCode + (arrayList != null ? arrayList.hashCode() : 0);
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final Boolean zzd() {
        throw new IllegalStateException("Statement cannot be cast as Boolean");
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final String zzf() {
        throw new IllegalStateException("Statement cannot be cast as String");
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final Iterator zzh() {
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final n a() {
        return this;
    }
}
