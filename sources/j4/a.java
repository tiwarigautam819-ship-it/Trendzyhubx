package j4;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.engagelab.privates.core.api.WakeMessage;
import n4.f;
import x3.r;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a extends Binder implements IInterface {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3371b = 1;

    public /* synthetic */ a() {
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        int i6 = this.f3371b;
        return this;
    }

    public boolean c(int i6, Parcel parcel, Parcel parcel2) {
        return false;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i6, Parcel parcel, Parcel parcel2, int i9) {
        switch (this.f3371b) {
            case 0:
                if (i6 <= 16777215) {
                    parcel.enforceInterface(getInterfaceDescriptor());
                } else if (super.onTransact(i6, parcel, parcel2, i9)) {
                    return true;
                }
                return c(i6, parcel, parcel2);
            default:
                if (i6 <= 16777215) {
                    parcel.enforceInterface(getInterfaceDescriptor());
                } else if (super.onTransact(i6, parcel, parcel2, i9)) {
                    return true;
                }
                switch (i6) {
                    case 3:
                        h4.b.b(parcel);
                        break;
                    case 4:
                        h4.b.b(parcel);
                        break;
                    case 5:
                    default:
                        return false;
                    case 6:
                        h4.b.b(parcel);
                        break;
                    case 7:
                        h4.b.b(parcel);
                        break;
                    case WakeMessage.ACTIVITY /* 8 */:
                        f fVar = (f) h4.b.a(parcel, f.CREATOR);
                        h4.b.b(parcel);
                        r rVar = (r) this;
                        rVar.f6007d.post(new s4.b(rVar, fVar, 19, false));
                        break;
                    case 9:
                        h4.b.b(parcel);
                        break;
                }
                parcel2.writeNoException();
                return true;
        }
    }

    public a(String str) {
        attachInterface(this, str);
    }
}
