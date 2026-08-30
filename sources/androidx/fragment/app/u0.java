package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class u0 implements Parcelable {
    public static final Parcelable.Creator<u0> CREATOR = new a.c(12);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f627a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f628b;

    public u0(String str, int i6) {
        this.f627a = str;
        this.f628b = i6;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeString(this.f627a);
        parcel.writeInt(this.f628b);
    }
}
