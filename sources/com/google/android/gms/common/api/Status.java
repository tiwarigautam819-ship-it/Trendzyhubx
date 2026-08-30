package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import b2.k;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.y4;
import java.util.Arrays;
import n4.e;
import y3.a;
import z7.d;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class Status extends a implements ReflectedParcelable {
    public static final Parcelable.Creator<Status> CREATOR = new e(7);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1396a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f1397b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PendingIntent f1398c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ConnectionResult f1399d;

    public Status(int i6, String str, PendingIntent pendingIntent, ConnectionResult connectionResult) {
        this.f1396a = i6;
        this.f1397b = str;
        this.f1398c = pendingIntent;
        this.f1399d = connectionResult;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.f1396a == status.f1396a && d0.k(this.f1397b, status.f1397b) && d0.k(this.f1398c, status.f1398c) && d0.k(this.f1399d, status.f1399d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f1396a), this.f1397b, this.f1398c, this.f1399d});
    }

    public final String toString() {
        y4 y4Var = new y4(this);
        String strG = this.f1397b;
        if (strG == null) {
            strG = k.g(this.f1396a);
        }
        y4Var.f("statusCode", strG);
        y4Var.f("resolution", this.f1398c);
        return y4Var.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iP = d.p(20293, parcel);
        d.r(parcel, 1, 4);
        parcel.writeInt(this.f1396a);
        d.m(parcel, 2, this.f1397b);
        d.l(parcel, 3, this.f1398c, i6);
        d.l(parcel, 4, this.f1399d, i6);
        d.q(iP, parcel);
    }
}
