package n4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends y3.a {
    public static final Parcelable.Creator<d> CREATOR = new e(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f4335a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f4336b;

    public d(String str, ArrayList arrayList) {
        this.f4335a = arrayList;
        this.f4336b = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iP = z7.d.p(20293, parcel);
        List<String> list = this.f4335a;
        if (list != null) {
            int iP2 = z7.d.p(1, parcel);
            parcel.writeStringList(list);
            z7.d.q(iP2, parcel);
        }
        z7.d.m(parcel, 2, this.f4336b);
        z7.d.q(iP, parcel);
    }
}
