package v3;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class p extends y3.a {
    public static final Parcelable.Creator<p> CREATOR = new n4.e(5);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f5572a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f5573b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5574c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f5575d;

    public p(int i6, int i9, String str, boolean z5) {
        this.f5572a = z5;
        this.f5573b = str;
        this.f5574c = j7.g.v(i6) - 1;
        this.f5575d = y1.j.m(i9) - 1;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iP = z7.d.p(20293, parcel);
        z7.d.r(parcel, 1, 4);
        parcel.writeInt(this.f5572a ? 1 : 0);
        z7.d.m(parcel, 2, this.f5573b);
        z7.d.r(parcel, 3, 4);
        parcel.writeInt(this.f5574c);
        z7.d.r(parcel, 4, 4);
        parcel.writeInt(this.f5575d);
        z7.d.q(iP, parcel);
    }
}
