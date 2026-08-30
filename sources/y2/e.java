package y2;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e implements Parcelable {
    public static final Parcelable.Creator<e> CREATOR = new n4.e(16);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f6170a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f6171b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f6172c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f6173d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f6174e;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        d7.g.f("dest", parcel);
        parcel.writeString(this.f6170a);
        parcel.writeString(this.f6171b);
        parcel.writeString(this.f6172c);
        parcel.writeLong(this.f6173d);
        parcel.writeLong(this.f6174e);
    }
}
