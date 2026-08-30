package u3;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Parcelable.Creator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5455a;

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f5455a) {
            case 0:
                int iU = j7.g.u(parcel);
                Intent intent = null;
                while (parcel.dataPosition() < iU) {
                    int i6 = parcel.readInt();
                    if (((char) i6) != 1) {
                        j7.g.s(i6, parcel);
                    } else {
                        intent = (Intent) j7.g.f(parcel, i6, Intent.CREATOR);
                    }
                }
                j7.g.i(iU, parcel);
                return new a(intent);
            default:
                return new g(parcel.readStrongBinder());
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i6) {
        switch (this.f5455a) {
            case 0:
                return new a[i6];
            default:
                return new g[i6];
        }
    }
}
