package android.support.v4.media;

import a.c;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new c(4);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f129a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f130b;

    public RatingCompat(int i6, float f9) {
        this.f129a = i6;
        this.f130b = f9;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return this.f129a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Rating:style=");
        sb.append(this.f129a);
        sb.append(" rating=");
        float f9 = this.f130b;
        sb.append(f9 < 0.0f ? "unrated" : String.valueOf(f9));
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeInt(this.f129a);
        parcel.writeFloat(this.f130b);
    }
}
