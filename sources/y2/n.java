package y2;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashMap;
import java.util.Map;
import q2.g0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class n implements Parcelable {
    public static final Parcelable.Creator<n> CREATOR = new n4.e(23);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6217a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x1.a f6218b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final x1.g f6219c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f6220d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f6221e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final m f6222f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Map f6223g;
    public HashMap h;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public n(m mVar, int i6, x1.a aVar, String str, String str2) {
        this(mVar, i6, aVar, null, str, str2);
        a1.a.n(i6, "code");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        String str;
        d7.g.f("dest", parcel);
        int i9 = this.f6217a;
        if (i9 == 1) {
            str = "SUCCESS";
        } else if (i9 == 2) {
            str = "CANCEL";
        } else {
            if (i9 != 3) {
                throw null;
            }
            str = "ERROR";
        }
        parcel.writeString(str);
        parcel.writeParcelable(this.f6218b, i6);
        parcel.writeParcelable(this.f6219c, i6);
        parcel.writeString(this.f6220d);
        parcel.writeString(this.f6221e);
        parcel.writeParcelable(this.f6222f, i6);
        g0.N(parcel, this.f6223g);
        g0.N(parcel, this.h);
    }

    public n(m mVar, int i6, x1.a aVar, x1.g gVar, String str, String str2) {
        a1.a.n(i6, "code");
        this.f6222f = mVar;
        this.f6218b = aVar;
        this.f6219c = gVar;
        this.f6220d = str;
        this.f6217a = i6;
        this.f6221e = str2;
    }

    public n(Parcel parcel) {
        int i6;
        String string = parcel.readString();
        string = string == null ? "error" : string;
        if (string == null) {
            throw new NullPointerException("Name is null");
        }
        if (string.equals("SUCCESS")) {
            i6 = 1;
        } else if (string.equals("CANCEL")) {
            i6 = 2;
        } else {
            if (!string.equals("ERROR")) {
                throw new IllegalArgumentException("No enum constant com.facebook.login.LoginClient.Result.Code.".concat(string));
            }
            i6 = 3;
        }
        this.f6217a = i6;
        this.f6218b = (x1.a) parcel.readParcelable(x1.a.class.getClassLoader());
        this.f6219c = (x1.g) parcel.readParcelable(x1.g.class.getClassLoader());
        this.f6220d = parcel.readString();
        this.f6221e = parcel.readString();
        this.f6222f = (m) parcel.readParcelable(m.class.getClassLoader());
        this.f6223g = g0.I(parcel);
        this.h = g0.I(parcel);
    }
}
