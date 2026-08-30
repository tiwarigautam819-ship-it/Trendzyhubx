package m;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q2 implements Parcelable.ClassLoaderCreator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4073a;

    public /* synthetic */ q2(int i6) {
        this.f4073a = i6;
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        switch (this.f4073a) {
            case 0:
                return new r2(parcel, classLoader);
            case 1:
                return new c3(parcel, classLoader);
            case 2:
                if (parcel.readParcelable(classLoader) == null) {
                    return o0.b.f4394b;
                }
                throw new IllegalStateException("superState must be null");
            default:
                return new w.c(parcel, classLoader);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i6) {
        switch (this.f4073a) {
            case 0:
                return new r2[i6];
            case 1:
                return new c3[i6];
            case 2:
                return new o0.b[i6];
            default:
                return new w.c[i6];
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f4073a) {
            case 0:
                return new r2(parcel, null);
            case 1:
                return new c3(parcel, null);
            case 2:
                if (parcel.readParcelable(null) == null) {
                    return o0.b.f4394b;
                }
                throw new IllegalStateException("superState must be null");
            default:
                return new w.c(parcel, null);
        }
    }
}
