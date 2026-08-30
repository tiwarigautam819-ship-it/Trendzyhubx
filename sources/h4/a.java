package h4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a implements IInterface {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2971b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final IBinder f2972c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f2973d;

    public /* synthetic */ a(IBinder iBinder, String str, int i6) {
        this.f2971b = i6;
        this.f2972c = iBinder;
        this.f2973d = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        switch (this.f2971b) {
        }
        return this.f2972c;
    }

    public Parcel b(int i6, Parcel parcel) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                this.f2972c.transact(i6, parcel, parcelObtain, 0);
                parcelObtain.readException();
                return parcelObtain;
            } catch (RuntimeException e9) {
                parcelObtain.recycle();
                throw e9;
            }
        } finally {
            parcel.recycle();
        }
    }

    public Parcel c() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f2973d);
        return parcelObtain;
    }
}
