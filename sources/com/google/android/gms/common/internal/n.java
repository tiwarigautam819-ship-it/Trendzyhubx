package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class n extends y3.a {
    public static final Parcelable.Creator<n> CREATOR = new a.c(16);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1459a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1460b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1461c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f1462d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f1463e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f1464f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f1465g;
    public final int h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f1466i;

    public n(int i6, int i9, int i10, long j3, long j8, String str, String str2, int i11, int i12) {
        this.f1459a = i6;
        this.f1460b = i9;
        this.f1461c = i10;
        this.f1462d = j3;
        this.f1463e = j8;
        this.f1464f = str;
        this.f1465g = str2;
        this.h = i11;
        this.f1466i = i12;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iP = z7.d.p(20293, parcel);
        z7.d.r(parcel, 1, 4);
        parcel.writeInt(this.f1459a);
        z7.d.r(parcel, 2, 4);
        parcel.writeInt(this.f1460b);
        z7.d.r(parcel, 3, 4);
        parcel.writeInt(this.f1461c);
        z7.d.r(parcel, 4, 8);
        parcel.writeLong(this.f1462d);
        z7.d.r(parcel, 5, 8);
        parcel.writeLong(this.f1463e);
        z7.d.m(parcel, 6, this.f1464f);
        z7.d.m(parcel, 7, this.f1465g);
        z7.d.r(parcel, 8, 4);
        parcel.writeInt(this.h);
        z7.d.r(parcel, 9, 4);
        parcel.writeInt(this.f1466i);
        z7.d.q(iP, parcel);
    }
}
