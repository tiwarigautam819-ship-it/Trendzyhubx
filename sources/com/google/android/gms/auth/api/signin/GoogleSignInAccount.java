package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.d0;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import n4.e;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import y3.a;
import z7.d;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class GoogleSignInAccount extends a implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new e(2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1375a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f1376b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f1377c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f1378d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f1379e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Uri f1380f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f1381g;
    public final long h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f1382i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f1383j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f1384k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f1385l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final HashSet f1386m = new HashSet();

    public GoogleSignInAccount(int i6, String str, String str2, String str3, String str4, Uri uri, String str5, long j3, String str6, ArrayList arrayList, String str7, String str8) {
        this.f1375a = i6;
        this.f1376b = str;
        this.f1377c = str2;
        this.f1378d = str3;
        this.f1379e = str4;
        this.f1380f = uri;
        this.f1381g = str5;
        this.h = j3;
        this.f1382i = str6;
        this.f1383j = arrayList;
        this.f1384k = str7;
        this.f1385l = str8;
    }

    public static GoogleSignInAccount a(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String strOptString = jSONObject.optString("photoUrl");
        Uri uri = !TextUtils.isEmpty(strOptString) ? Uri.parse(strOptString) : null;
        long j3 = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i6 = 0; i6 < length; i6++) {
            hashSet.add(new Scope(1, jSONArray.getString(i6)));
        }
        String strOptString2 = jSONObject.optString("id");
        String strOptString3 = jSONObject.has("tokenId") ? jSONObject.optString("tokenId") : null;
        String strOptString4 = jSONObject.has("email") ? jSONObject.optString("email") : null;
        String strOptString5 = jSONObject.has("displayName") ? jSONObject.optString("displayName") : null;
        String strOptString6 = jSONObject.has("givenName") ? jSONObject.optString("givenName") : null;
        String strOptString7 = jSONObject.has("familyName") ? jSONObject.optString("familyName") : null;
        String string = jSONObject.getString("obfuscatedIdentifier");
        d0.d(string);
        GoogleSignInAccount googleSignInAccount = new GoogleSignInAccount(3, strOptString2, strOptString3, strOptString4, strOptString5, uri, null, j3, string, new ArrayList(hashSet), strOptString6, strOptString7);
        googleSignInAccount.f1381g = jSONObject.has("serverAuthCode") ? jSONObject.optString("serverAuthCode") : null;
        return googleSignInAccount;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        if (!googleSignInAccount.f1382i.equals(this.f1382i)) {
            return false;
        }
        HashSet hashSet = new HashSet(googleSignInAccount.f1383j);
        hashSet.addAll(googleSignInAccount.f1386m);
        HashSet hashSet2 = new HashSet(this.f1383j);
        hashSet2.addAll(this.f1386m);
        return hashSet.equals(hashSet2);
    }

    public final int hashCode() {
        int iHashCode = this.f1382i.hashCode() + 527;
        HashSet hashSet = new HashSet(this.f1383j);
        hashSet.addAll(this.f1386m);
        return (iHashCode * 31) + hashSet.hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iP = d.p(20293, parcel);
        d.r(parcel, 1, 4);
        parcel.writeInt(this.f1375a);
        d.m(parcel, 2, this.f1376b);
        d.m(parcel, 3, this.f1377c);
        d.m(parcel, 4, this.f1378d);
        d.m(parcel, 5, this.f1379e);
        d.l(parcel, 6, this.f1380f, i6);
        d.m(parcel, 7, this.f1381g);
        d.r(parcel, 8, 8);
        parcel.writeLong(this.h);
        d.m(parcel, 9, this.f1382i);
        d.o(parcel, 10, this.f1383j);
        d.m(parcel, 11, this.f1384k);
        d.m(parcel, 12, this.f1385l);
        d.q(iP, parcel);
    }
}
