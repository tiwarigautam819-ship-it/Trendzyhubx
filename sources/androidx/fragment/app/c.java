package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Parcelable {
    public static final Parcelable.Creator<c> CREATOR = new a.c(11);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f458a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f459b;

    public c(Parcel parcel) {
        this.f458a = parcel.createStringArrayList();
        this.f459b = parcel.createTypedArrayList(b.CREATOR);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeStringList(this.f458a);
        parcel.writeTypedList(this.f459b);
    }
}
