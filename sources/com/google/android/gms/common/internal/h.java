package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h extends y3.a {
    public static final Parcelable.Creator<h> CREATOR = new a.c(21);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p f1417a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f1418b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f1419c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f1420d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1421e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f1422f;

    public h(p pVar, boolean z5, boolean z8, int[] iArr, int i6, int[] iArr2) {
        this.f1417a = pVar;
        this.f1418b = z5;
        this.f1419c = z8;
        this.f1420d = iArr;
        this.f1421e = i6;
        this.f1422f = iArr2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iP = z7.d.p(20293, parcel);
        z7.d.l(parcel, 1, this.f1417a, i6);
        z7.d.r(parcel, 2, 4);
        parcel.writeInt(this.f1418b ? 1 : 0);
        z7.d.r(parcel, 3, 4);
        parcel.writeInt(this.f1419c ? 1 : 0);
        int[] iArr = this.f1420d;
        if (iArr != null) {
            int iP2 = z7.d.p(4, parcel);
            parcel.writeIntArray(iArr);
            z7.d.q(iP2, parcel);
        }
        z7.d.r(parcel, 5, 4);
        parcel.writeInt(this.f1421e);
        int[] iArr2 = this.f1422f;
        if (iArr2 != null) {
            int iP3 = z7.d.p(6, parcel);
            parcel.writeIntArray(iArr2);
            z7.d.q(iP3, parcel);
        }
        z7.d.q(iP, parcel);
    }
}
