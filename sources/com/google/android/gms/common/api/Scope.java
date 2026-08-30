package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.d0;
import n4.e;
import y3.a;
import z7.d;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class Scope extends a implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new e(6);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1394a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f1395b;

    public Scope(int i6, String str) {
        d0.e(str, "scopeUri must not be null or empty");
        this.f1394a = i6;
        this.f1395b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scope)) {
            return false;
        }
        return this.f1395b.equals(((Scope) obj).f1395b);
    }

    public final int hashCode() {
        return this.f1395b.hashCode();
    }

    public final String toString() {
        return this.f1395b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iP = d.p(20293, parcel);
        d.r(parcel, 1, 4);
        parcel.writeInt(this.f1394a);
        d.m(parcel, 2, this.f1395b);
        d.q(iP, parcel);
    }
}
