package x1;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f0 implements Parcelable {
    public static final Parcelable.Creator<f0> CREATOR = new n4.e(14);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5853a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f5854b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f5855c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f5856d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f5857e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Uri f5858f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Uri f5859g;

    public f0(String str, String str2, String str3, String str4, String str5, Uri uri, Uri uri2) {
        q2.g.j(str, "id");
        this.f5853a = str;
        this.f5854b = str2;
        this.f5855c = str3;
        this.f5856d = str4;
        this.f5857e = str5;
        this.f5858f = uri;
        this.f5859g = uri2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        Uri uri;
        Uri uri2;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f0)) {
            return false;
        }
        String str5 = this.f5853a;
        return ((str5 == null && ((f0) obj).f5853a == null) || d7.g.a(str5, ((f0) obj).f5853a)) && (((str = this.f5854b) == null && ((f0) obj).f5854b == null) || d7.g.a(str, ((f0) obj).f5854b)) && ((((str2 = this.f5855c) == null && ((f0) obj).f5855c == null) || d7.g.a(str2, ((f0) obj).f5855c)) && ((((str3 = this.f5856d) == null && ((f0) obj).f5856d == null) || d7.g.a(str3, ((f0) obj).f5856d)) && ((((str4 = this.f5857e) == null && ((f0) obj).f5857e == null) || d7.g.a(str4, ((f0) obj).f5857e)) && ((((uri = this.f5858f) == null && ((f0) obj).f5858f == null) || d7.g.a(uri, ((f0) obj).f5858f)) && (((uri2 = this.f5859g) == null && ((f0) obj).f5859g == null) || d7.g.a(uri2, ((f0) obj).f5859g))))));
    }

    public final int hashCode() {
        String str = this.f5853a;
        int iHashCode = 527 + (str != null ? str.hashCode() : 0);
        String str2 = this.f5854b;
        if (str2 != null) {
            iHashCode = (iHashCode * 31) + str2.hashCode();
        }
        String str3 = this.f5855c;
        if (str3 != null) {
            iHashCode = (iHashCode * 31) + str3.hashCode();
        }
        String str4 = this.f5856d;
        if (str4 != null) {
            iHashCode = (iHashCode * 31) + str4.hashCode();
        }
        String str5 = this.f5857e;
        if (str5 != null) {
            iHashCode = (iHashCode * 31) + str5.hashCode();
        }
        Uri uri = this.f5858f;
        if (uri != null) {
            iHashCode = (iHashCode * 31) + uri.hashCode();
        }
        Uri uri2 = this.f5859g;
        if (uri2 != null) {
            return uri2.hashCode() + (iHashCode * 31);
        }
        return iHashCode;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        d7.g.f("dest", parcel);
        parcel.writeString(this.f5853a);
        parcel.writeString(this.f5854b);
        parcel.writeString(this.f5855c);
        parcel.writeString(this.f5856d);
        parcel.writeString(this.f5857e);
        Uri uri = this.f5858f;
        parcel.writeString(uri != null ? uri.toString() : null);
        Uri uri2 = this.f5859g;
        parcel.writeString(uri2 != null ? uri2.toString() : null);
    }

    public f0(JSONObject jSONObject) {
        this.f5853a = jSONObject.optString("id", null);
        this.f5854b = jSONObject.optString("first_name", null);
        this.f5855c = jSONObject.optString("middle_name", null);
        this.f5856d = jSONObject.optString("last_name", null);
        this.f5857e = jSONObject.optString("name", null);
        String strOptString = jSONObject.optString("link_uri", null);
        this.f5858f = strOptString == null ? null : Uri.parse(strOptString);
        String strOptString2 = jSONObject.optString("picture_uri", null);
        this.f5859g = strOptString2 != null ? Uri.parse(strOptString2) : null;
    }

    public f0(Parcel parcel) {
        this.f5853a = parcel.readString();
        this.f5854b = parcel.readString();
        this.f5855c = parcel.readString();
        this.f5856d = parcel.readString();
        this.f5857e = parcel.readString();
        String string = parcel.readString();
        this.f5858f = string == null ? null : Uri.parse(string);
        String string2 = parcel.readString();
        this.f5859g = string2 != null ? Uri.parse(string2) : null;
    }
}
