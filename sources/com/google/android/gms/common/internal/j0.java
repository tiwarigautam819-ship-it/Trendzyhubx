package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j0 extends y3.a {
    public static final Parcelable.Creator<j0> CREATOR = new a.c(20);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Bundle f1441a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public v3.c[] f1442b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1443c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public h f1444d;

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iP = z7.d.p(20293, parcel);
        z7.d.j(parcel, 1, this.f1441a);
        z7.d.n(parcel, 2, this.f1442b, i6);
        int i9 = this.f1443c;
        z7.d.r(parcel, 3, 4);
        parcel.writeInt(i9);
        z7.d.l(parcel, 4, this.f1444d, i6);
        z7.d.q(iP, parcel);
    }
}
