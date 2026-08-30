package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f implements n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f1588a;

    public f(Boolean bool) {
        if (bool == null) {
            this.f1588a = false;
        } else {
            this.f1588a = bool.booleanValue();
        }
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final n a() {
        return new f(Boolean.valueOf(this.f1588a));
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final Double c() {
        return Double.valueOf(this.f1588a ? 1.0d : 0.0d);
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final n d(String str, com.google.firebase.messaging.y yVar, ArrayList arrayList) {
        boolean zEquals = "toString".equals(str);
        boolean z5 = this.f1588a;
        if (zEquals) {
            return new p(Boolean.toString(z5));
        }
        throw new IllegalArgumentException(Boolean.toString(z5) + "." + str + " is not a function.");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f) && this.f1588a == ((f) obj).f1588a;
    }

    public final int hashCode() {
        return Boolean.valueOf(this.f1588a).hashCode();
    }

    public final String toString() {
        return String.valueOf(this.f1588a);
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final Boolean zzd() {
        return Boolean.valueOf(this.f1588a);
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final String zzf() {
        return Boolean.toString(this.f1588a);
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final Iterator zzh() {
        return null;
    }
}
