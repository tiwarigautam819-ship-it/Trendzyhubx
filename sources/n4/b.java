package n4;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends y3.a {
    public static final Parcelable.Creator<b> CREATOR = new a.c(29);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4332a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4333b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Intent f4334c;

    public b(int i6, int i9, Intent intent) {
        this.f4332a = i6;
        this.f4333b = i9;
        this.f4334c = intent;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iP = z7.d.p(20293, parcel);
        z7.d.r(parcel, 1, 4);
        parcel.writeInt(this.f4332a);
        z7.d.r(parcel, 2, 4);
        parcel.writeInt(this.f4333b);
        z7.d.l(parcel, 3, this.f4334c, i6);
        z7.d.q(iP, parcel);
    }
}
