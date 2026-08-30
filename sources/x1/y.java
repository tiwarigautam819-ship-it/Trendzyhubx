package x1;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class y implements Parcelable {
    public static final Parcelable.Creator<y> CREATOR = new n4.e(13);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5940a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Parcelable f5941b;

    public y(Parcelable parcelable) {
        this.f5940a = "image/png";
        this.f5941b = parcelable;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 1;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        d7.g.f("out", parcel);
        parcel.writeString(this.f5940a);
        parcel.writeParcelable(this.f5941b, i6);
    }

    public y(Parcel parcel) {
        this.f5940a = parcel.readString();
        this.f5941b = parcel.readParcelable(r.a().getClassLoader());
    }
}
