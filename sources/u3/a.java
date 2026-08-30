package u3;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends y3.a {
    public static final Parcelable.Creator<a> CREATOR = new c(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Intent f5445a;

    public a(Intent intent) {
        this.f5445a = intent;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iP = z7.d.p(20293, parcel);
        z7.d.l(parcel, 1, this.f5445a, i6);
        z7.d.q(iP, parcel);
    }
}
