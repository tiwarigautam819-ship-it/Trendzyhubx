package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class z implements m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final IBinder f1508b;

    public z(IBinder iBinder) {
        this.f1508b = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f1508b;
    }

    public final void b(f0 f0Var, i iVar) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            parcelObtain.writeStrongBinder(f0Var);
            parcelObtain.writeInt(1);
            a.c.a(iVar, parcelObtain, 0);
            this.f1508b.transact(46, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}
