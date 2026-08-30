package x1;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import java.nio.charset.Charset;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i implements Parcelable {
    public static final Parcelable.Creator<i> CREATOR = new n4.e(11);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5888a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f5889b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f5890c;

    public i(String str) throws JSONException {
        d7.g.f("encodedHeaderString", str);
        q2.g.h(str, "encodedHeaderString");
        byte[] bArrDecode = Base64.decode(str, 0);
        d7.g.e("decodedBytes", bArrDecode);
        Charset charset = k7.a.f3570a;
        try {
            JSONObject jSONObject = new JSONObject(new String(bArrDecode, charset));
            String strOptString = jSONObject.optString("alg");
            d7.g.e("alg", strOptString);
            boolean z5 = strOptString.length() > 0 && strOptString.equals("RS256");
            String strOptString2 = jSONObject.optString("kid");
            d7.g.e("jsonObj.optString(\"kid\")", strOptString2);
            boolean z8 = strOptString2.length() > 0;
            String strOptString3 = jSONObject.optString("typ");
            d7.g.e("jsonObj.optString(\"typ\")", strOptString3);
            boolean z9 = strOptString3.length() > 0;
            if (z5 && z8 && z9) {
                byte[] bArrDecode2 = Base64.decode(str, 0);
                d7.g.e("decodedBytes", bArrDecode2);
                JSONObject jSONObject2 = new JSONObject(new String(bArrDecode2, charset));
                String string = jSONObject2.getString("alg");
                d7.g.e("jsonObj.getString(\"alg\")", string);
                this.f5888a = string;
                String string2 = jSONObject2.getString("typ");
                d7.g.e("jsonObj.getString(\"typ\")", string2);
                this.f5889b = string2;
                String string3 = jSONObject2.getString("kid");
                d7.g.e("jsonObj.getString(\"kid\")", string3);
                this.f5890c = string3;
                return;
            }
        } catch (JSONException unused) {
        }
        throw new IllegalArgumentException("Invalid Header");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return d7.g.a(this.f5888a, iVar.f5888a) && d7.g.a(this.f5889b, iVar.f5889b) && d7.g.a(this.f5890c, iVar.f5890c);
    }

    public final int hashCode() {
        return this.f5890c.hashCode() + q2.x.d(q2.x.d(527, this.f5888a, 31), this.f5889b, 31);
    }

    public final String toString() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("alg", this.f5888a);
        jSONObject.put("typ", this.f5889b);
        jSONObject.put("kid", this.f5890c);
        String string = jSONObject.toString();
        d7.g.e("headerJsonObject.toString()", string);
        return string;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        d7.g.f("dest", parcel);
        parcel.writeString(this.f5888a);
        parcel.writeString(this.f5889b);
        parcel.writeString(this.f5890c);
    }

    public i(Parcel parcel) {
        String string = parcel.readString();
        q2.g.j(string, "alg");
        this.f5888a = string;
        String string2 = parcel.readString();
        q2.g.j(string2, "typ");
        this.f5889b = string2;
        String string3 = parcel.readString();
        q2.g.j(string3, "kid");
        this.f5890c = string3;
    }
}
