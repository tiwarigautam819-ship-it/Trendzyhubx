package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q extends y3.a {
    public static final Parcelable.Creator<q> CREATOR = new a.c(15);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1484a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List f1485b;

    public q(List list, int i6) {
        this.f1484a = i6;
        this.f1485b = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iP = z7.d.p(20293, parcel);
        z7.d.r(parcel, 1, 4);
        parcel.writeInt(this.f1484a);
        z7.d.o(parcel, 2, this.f1485b);
        z7.d.q(iP, parcel);
    }
}
