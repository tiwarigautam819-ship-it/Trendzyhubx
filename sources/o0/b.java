package o0;

import android.os.Parcel;
import android.os.Parcelable;
import m.q2;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class b implements Parcelable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Parcelable f4395a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f4394b = new a();
    public static final Parcelable.Creator<b> CREATOR = new q2(2);

    public b() {
        this.f4395a = null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i6) {
        parcel.writeParcelable(this.f4395a, i6);
    }

    public b(Parcelable parcelable) {
        if (parcelable != null) {
            this.f4395a = parcelable == f4394b ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    public b(Parcel parcel, ClassLoader classLoader) {
        Parcelable parcelable = parcel.readParcelable(classLoader);
        this.f4395a = parcelable == null ? f4394b : parcelable;
    }
}
