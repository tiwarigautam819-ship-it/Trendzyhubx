package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a1 implements Parcelable {
    public static final Parcelable.Creator<a1> CREATOR = new a.c(13);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ArrayList f436a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList f437b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public b[] f438c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f439d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f440e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ArrayList f441f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ArrayList f442g;
    public ArrayList h;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeStringList(this.f436a);
        parcel.writeStringList(this.f437b);
        parcel.writeTypedArray(this.f438c, i6);
        parcel.writeInt(this.f439d);
        parcel.writeString(this.f440e);
        parcel.writeStringList(this.f441f);
        parcel.writeTypedList(this.f442g);
        parcel.writeTypedList(this.h);
    }
}
