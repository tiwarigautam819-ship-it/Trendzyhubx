package com.google.android.gms.internal.measurement;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h0 extends Binder implements IInterface {
    public h0(String str) {
        attachInterface(this, str);
    }

    @Override // android.os.Binder
    public boolean onTransact(int i6, Parcel parcel, Parcel parcel2, int i9) throws RemoteException {
        boolean zOnTransact;
        if (i6 > 16777215) {
            zOnTransact = super.onTransact(i6, parcel, parcel2, i9);
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
            zOnTransact = false;
        }
        if (zOnTransact) {
            return true;
        }
        return zza(i6, parcel, parcel2, i9);
    }

    public abstract boolean zza(int i6, Parcel parcel, Parcel parcel2, int i9);

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }
}
