package a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends Binder implements b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f3c = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f4b;

    public d(e eVar) {
        this.f4b = eVar;
        attachInterface(this, b.f1a);
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i6, Parcel parcel, Parcel parcel2, int i9) {
        String str = b.f1a;
        if (i6 >= 1 && i6 <= 16777215) {
            parcel.enforceInterface(str);
        }
        if (i6 == 1598968902) {
            parcel2.writeString(str);
            return true;
        }
        if (i6 != 1) {
            return super.onTransact(i6, parcel, parcel2, i9);
        }
        this.f4b.a(parcel.readInt(), (Bundle) (parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null));
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
