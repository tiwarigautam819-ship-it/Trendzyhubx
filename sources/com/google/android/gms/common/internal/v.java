package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class v extends y3.a {
    public static final Parcelable.Creator<v> CREATOR = new a.c(17);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1493a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Account f1494b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1495c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final GoogleSignInAccount f1496d;

    public v(int i6, Account account, int i9, GoogleSignInAccount googleSignInAccount) {
        this.f1493a = i6;
        this.f1494b = account;
        this.f1495c = i9;
        this.f1496d = googleSignInAccount;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iP = z7.d.p(20293, parcel);
        z7.d.r(parcel, 1, 4);
        parcel.writeInt(this.f1493a);
        z7.d.l(parcel, 2, this.f1494b, i6);
        z7.d.r(parcel, 3, 4);
        parcel.writeInt(this.f1495c);
        z7.d.l(parcel, 4, this.f1496d, i6);
        z7.d.q(iP, parcel);
    }
}
