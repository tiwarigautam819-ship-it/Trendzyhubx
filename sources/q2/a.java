package q2;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements IInterface {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final IBinder f4707b;

    public a(IBinder iBinder) {
        this.f4707b = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f4707b;
    }

    public final String b() {
        Parcel parcelObtain = Parcel.obtain();
        d7.g.e("obtain()", parcelObtain);
        Parcel parcelObtain2 = Parcel.obtain();
        d7.g.e("obtain()", parcelObtain2);
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            this.f4707b.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readString();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public final boolean c() {
        Parcel parcelObtain = Parcel.obtain();
        d7.g.e("obtain()", parcelObtain);
        Parcel parcelObtain2 = Parcel.obtain();
        d7.g.e("obtain()", parcelObtain2);
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            parcelObtain.writeInt(1);
            this.f4707b.transact(2, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readInt() != 0;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}
