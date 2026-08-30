package m;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c3 extends o0.b {
    public static final Parcelable.Creator<c3> CREATOR = new q2(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3937c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f3938d;

    public c3(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f3937c = parcel.readInt();
        this.f3938d = parcel.readInt() != 0;
    }

    @Override // o0.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        super.writeToParcel(parcel, i6);
        parcel.writeInt(this.f3937c);
        parcel.writeInt(this.f3938d ? 1 : 0);
    }
}
