package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h implements n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n f1665a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f1666b;

    public h(String str) {
        this.f1665a = n.f1743n;
        this.f1666b = str;
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final n a() {
        return new h(this.f1666b, this.f1665a.a());
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final Double c() {
        throw new IllegalStateException("Control is not a double");
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final n d(String str, com.google.firebase.messaging.y yVar, ArrayList arrayList) {
        throw new IllegalStateException("Control does not have functions");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f1666b.equals(hVar.f1666b) && this.f1665a.equals(hVar.f1665a);
    }

    public final int hashCode() {
        return this.f1665a.hashCode() + (this.f1666b.hashCode() * 31);
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final Boolean zzd() {
        throw new IllegalStateException("Control is not a boolean");
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final String zzf() {
        throw new IllegalStateException("Control is not a String");
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final Iterator zzh() {
        return null;
    }

    public h(String str, n nVar) {
        this.f1665a = nVar;
        this.f1666b = str;
    }
}
