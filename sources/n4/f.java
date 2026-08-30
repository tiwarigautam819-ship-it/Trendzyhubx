package n4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.w;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f extends y3.a {
    public static final Parcelable.Creator<f> CREATOR = new e(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4338a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConnectionResult f4339b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final w f4340c;

    public f(int i6, ConnectionResult connectionResult, w wVar) {
        this.f4338a = i6;
        this.f4339b = connectionResult;
        this.f4340c = wVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iP = z7.d.p(20293, parcel);
        z7.d.r(parcel, 1, 4);
        parcel.writeInt(this.f4338a);
        z7.d.l(parcel, 2, this.f4339b, i6);
        z7.d.l(parcel, 3, this.f4340c, i6);
        z7.d.q(iP, parcel);
    }
}
