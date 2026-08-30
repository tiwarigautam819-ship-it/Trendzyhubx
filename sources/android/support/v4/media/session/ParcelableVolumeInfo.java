package android.support.v4.media.session;

import a.c;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new c(8);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f135a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f136b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f137c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f138d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f139e;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeInt(this.f135a);
        parcel.writeInt(this.f137c);
        parcel.writeInt(this.f138d);
        parcel.writeInt(this.f139e);
        parcel.writeInt(this.f136b);
    }
}
