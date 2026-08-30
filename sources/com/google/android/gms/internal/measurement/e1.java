package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e1 extends y3.a {
    public static final Parcelable.Creator<e1> CREATOR = new d1();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f1569a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f1570b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f1571c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f1572d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f1573e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f1574f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Bundle f1575g;
    public final String h;

    public e1(long j3, long j8, boolean z5, String str, String str2, String str3, Bundle bundle, String str4) {
        this.f1569a = j3;
        this.f1570b = j8;
        this.f1571c = z5;
        this.f1572d = str;
        this.f1573e = str2;
        this.f1574f = str3;
        this.f1575g = bundle;
        this.h = str4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iP = z7.d.p(20293, parcel);
        z7.d.r(parcel, 1, 8);
        parcel.writeLong(this.f1569a);
        z7.d.r(parcel, 2, 8);
        parcel.writeLong(this.f1570b);
        z7.d.r(parcel, 3, 4);
        parcel.writeInt(this.f1571c ? 1 : 0);
        z7.d.m(parcel, 4, this.f1572d);
        z7.d.m(parcel, 5, this.f1573e);
        z7.d.m(parcel, 6, this.f1574f);
        z7.d.j(parcel, 7, this.f1575g);
        z7.d.m(parcel, 8, this.h);
        z7.d.q(iP, parcel);
    }
}
