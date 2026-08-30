package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class w extends y3.a {
    public static final Parcelable.Creator<w> CREATOR = new a.c(18);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1497a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final IBinder f1498b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConnectionResult f1499c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f1500d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f1501e;

    public w(int i6, IBinder iBinder, ConnectionResult connectionResult, boolean z5, boolean z8) {
        this.f1497a = i6;
        this.f1498b = iBinder;
        this.f1499c = connectionResult;
        this.f1500d = z5;
        this.f1501e = z8;
    }

    public final boolean equals(Object obj) {
        Object q0Var;
        if (obj == null) {
            return false;
        }
        if (this != obj) {
            if (!(obj instanceof w)) {
                return false;
            }
            w wVar = (w) obj;
            if (!this.f1499c.equals(wVar.f1499c)) {
                return false;
            }
            Object q0Var2 = null;
            IBinder iBinder = this.f1498b;
            if (iBinder == null) {
                q0Var = null;
            } else {
                int i6 = a.f1400c;
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                q0Var = iInterfaceQueryLocalInterface instanceof l ? (l) iInterfaceQueryLocalInterface : new q0(iBinder, "com.google.android.gms.common.internal.IAccountAccessor", 1);
            }
            IBinder iBinder2 = wVar.f1498b;
            if (iBinder2 != null) {
                int i9 = a.f1400c;
                IInterface iInterfaceQueryLocalInterface2 = iBinder2.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                q0Var2 = iInterfaceQueryLocalInterface2 instanceof l ? (l) iInterfaceQueryLocalInterface2 : new q0(iBinder2, "com.google.android.gms.common.internal.IAccountAccessor", 1);
            }
            if (!d0.k(q0Var, q0Var2)) {
                return false;
            }
        }
        return true;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iP = z7.d.p(20293, parcel);
        z7.d.r(parcel, 1, 4);
        parcel.writeInt(this.f1497a);
        z7.d.k(parcel, 2, this.f1498b);
        z7.d.l(parcel, 3, this.f1499c, i6);
        z7.d.r(parcel, 4, 4);
        parcel.writeInt(this.f1500d ? 1 : 0);
        z7.d.r(parcel, 5, 4);
        parcel.writeInt(this.f1501e ? 1 : 0);
        z7.d.q(iP, parcel);
    }
}
