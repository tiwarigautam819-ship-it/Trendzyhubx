package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class p extends y3.a {
    public static final Parcelable.Creator<p> CREATOR = new a.c(19);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f1477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f1478c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1479d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1480e;

    public p(int i6, int i9, int i10, boolean z5, boolean z8) {
        this.f1476a = i6;
        this.f1477b = z5;
        this.f1478c = z8;
        this.f1479d = i9;
        this.f1480e = i10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iP = z7.d.p(20293, parcel);
        z7.d.r(parcel, 1, 4);
        parcel.writeInt(this.f1476a);
        z7.d.r(parcel, 2, 4);
        parcel.writeInt(this.f1477b ? 1 : 0);
        z7.d.r(parcel, 3, 4);
        parcel.writeInt(this.f1478c ? 1 : 0);
        z7.d.r(parcel, 4, 4);
        parcel.writeInt(this.f1479d);
        z7.d.r(parcel, 5, 4);
        parcel.writeInt(this.f1480e);
        z7.d.q(iP, parcel);
    }
}
