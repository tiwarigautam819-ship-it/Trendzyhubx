package x1;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h implements Parcelable {
    public static final Parcelable.Creator<h> CREATOR = new n4.e(10);
    public final String A;
    public final String B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5870a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f5871b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f5872c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f5873d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f5874e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f5875f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f5876g;
    public final String h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f5877i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f5878j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f5879k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f5880l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f5881m;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final Set f5882v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final String f5883w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final Map f5884x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final Map f5885y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final Map f5886z;

    /* JADX WARN: Removed duplicated region for block: B:10:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public h(java.lang.String r11, java.lang.String r12) throws org.json.JSONException {
        /*
            Method dump skipped, instruction units count: 468
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: x1.h.<init>(java.lang.String, java.lang.String):void");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return d7.g.a(this.f5870a, hVar.f5870a) && d7.g.a(this.f5871b, hVar.f5871b) && d7.g.a(this.f5872c, hVar.f5872c) && d7.g.a(this.f5873d, hVar.f5873d) && this.f5874e == hVar.f5874e && this.f5875f == hVar.f5875f && d7.g.a(this.f5876g, hVar.f5876g) && d7.g.a(this.h, hVar.h) && d7.g.a(this.f5877i, hVar.f5877i) && d7.g.a(this.f5878j, hVar.f5878j) && d7.g.a(this.f5879k, hVar.f5879k) && d7.g.a(this.f5880l, hVar.f5880l) && d7.g.a(this.f5881m, hVar.f5881m) && d7.g.a(this.f5882v, hVar.f5882v) && d7.g.a(this.f5883w, hVar.f5883w) && d7.g.a(this.f5884x, hVar.f5884x) && d7.g.a(this.f5885y, hVar.f5885y) && d7.g.a(this.f5886z, hVar.f5886z) && d7.g.a(this.A, hVar.A) && d7.g.a(this.B, hVar.B);
    }

    public final int hashCode() {
        int iD = q2.x.d(q2.x.d(q2.x.d(q2.x.d(527, this.f5870a, 31), this.f5871b, 31), this.f5872c, 31), this.f5873d, 31);
        long j3 = this.f5874e;
        int i6 = (iD + ((int) (j3 ^ (j3 >>> 32)))) * 31;
        long j8 = this.f5875f;
        int iD2 = q2.x.d((i6 + ((int) (j8 ^ (j8 >>> 32)))) * 31, this.f5876g, 31);
        String str = this.h;
        int iHashCode = (iD2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f5877i;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f5878j;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.f5879k;
        int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.f5880l;
        int iHashCode5 = (iHashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.f5881m;
        int iHashCode6 = (iHashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        Set set = this.f5882v;
        int iHashCode7 = (iHashCode6 + (set != null ? set.hashCode() : 0)) * 31;
        String str7 = this.f5883w;
        int iHashCode8 = (iHashCode7 + (str7 != null ? str7.hashCode() : 0)) * 31;
        Map map = this.f5884x;
        int iHashCode9 = (iHashCode8 + (map != null ? map.hashCode() : 0)) * 31;
        Map map2 = this.f5885y;
        int iHashCode10 = (iHashCode9 + (map2 != null ? map2.hashCode() : 0)) * 31;
        Map map3 = this.f5886z;
        int iHashCode11 = (iHashCode10 + (map3 != null ? map3.hashCode() : 0)) * 31;
        String str8 = this.A;
        int iHashCode12 = (iHashCode11 + (str8 != null ? str8.hashCode() : 0)) * 31;
        String str9 = this.B;
        return iHashCode12 + (str9 != null ? str9.hashCode() : 0);
    }

    public final String toString() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("jti", this.f5870a);
        jSONObject.put("iss", this.f5871b);
        jSONObject.put("aud", this.f5872c);
        jSONObject.put("nonce", this.f5873d);
        jSONObject.put("exp", this.f5874e);
        jSONObject.put("iat", this.f5875f);
        String str = this.f5876g;
        if (str != null) {
            jSONObject.put("sub", str);
        }
        String str2 = this.h;
        if (str2 != null) {
            jSONObject.put("name", str2);
        }
        String str3 = this.f5877i;
        if (str3 != null) {
            jSONObject.put("given_name", str3);
        }
        String str4 = this.f5878j;
        if (str4 != null) {
            jSONObject.put("middle_name", str4);
        }
        String str5 = this.f5879k;
        if (str5 != null) {
            jSONObject.put("family_name", str5);
        }
        String str6 = this.f5880l;
        if (str6 != null) {
            jSONObject.put("email", str6);
        }
        String str7 = this.f5881m;
        if (str7 != null) {
            jSONObject.put("picture", str7);
        }
        Set set = this.f5882v;
        if (set != null) {
            jSONObject.put("user_friends", new JSONArray((Collection) set));
        }
        String str8 = this.f5883w;
        if (str8 != null) {
            jSONObject.put("user_birthday", str8);
        }
        Map map = this.f5884x;
        if (map != null) {
            jSONObject.put("user_age_range", new JSONObject(map));
        }
        Map map2 = this.f5885y;
        if (map2 != null) {
            jSONObject.put("user_hometown", new JSONObject(map2));
        }
        Map map3 = this.f5886z;
        if (map3 != null) {
            jSONObject.put("user_location", new JSONObject(map3));
        }
        String str9 = this.A;
        if (str9 != null) {
            jSONObject.put("user_gender", str9);
        }
        String str10 = this.B;
        if (str10 != null) {
            jSONObject.put("user_link", str10);
        }
        String string = jSONObject.toString();
        d7.g.e("claimsJsonObject.toString()", string);
        return string;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        d7.g.f("dest", parcel);
        parcel.writeString(this.f5870a);
        parcel.writeString(this.f5871b);
        parcel.writeString(this.f5872c);
        parcel.writeString(this.f5873d);
        parcel.writeLong(this.f5874e);
        parcel.writeLong(this.f5875f);
        parcel.writeString(this.f5876g);
        parcel.writeString(this.h);
        parcel.writeString(this.f5877i);
        parcel.writeString(this.f5878j);
        parcel.writeString(this.f5879k);
        parcel.writeString(this.f5880l);
        parcel.writeString(this.f5881m);
        Set set = this.f5882v;
        if (set == null) {
            parcel.writeStringList(null);
        } else {
            parcel.writeStringList(new ArrayList(set));
        }
        parcel.writeString(this.f5883w);
        parcel.writeMap(this.f5884x);
        parcel.writeMap(this.f5885y);
        parcel.writeMap(this.f5886z);
        parcel.writeString(this.A);
        parcel.writeString(this.B);
    }

    public h(Parcel parcel) {
        String string = parcel.readString();
        q2.g.j(string, "jti");
        this.f5870a = string;
        String string2 = parcel.readString();
        q2.g.j(string2, "iss");
        this.f5871b = string2;
        String string3 = parcel.readString();
        q2.g.j(string3, "aud");
        this.f5872c = string3;
        String string4 = parcel.readString();
        q2.g.j(string4, "nonce");
        this.f5873d = string4;
        this.f5874e = parcel.readLong();
        this.f5875f = parcel.readLong();
        String string5 = parcel.readString();
        q2.g.j(string5, "sub");
        this.f5876g = string5;
        this.h = parcel.readString();
        this.f5877i = parcel.readString();
        this.f5878j = parcel.readString();
        this.f5879k = parcel.readString();
        this.f5880l = parcel.readString();
        this.f5881m = parcel.readString();
        ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
        this.f5882v = arrayListCreateStringArrayList != null ? Collections.unmodifiableSet(new HashSet(arrayListCreateStringArrayList)) : null;
        this.f5883w = parcel.readString();
        HashMap hashMap = parcel.readHashMap(d7.f.class.getClassLoader());
        hashMap = hashMap == null ? null : hashMap;
        this.f5884x = hashMap != null ? Collections.unmodifiableMap(hashMap) : null;
        HashMap hashMap2 = parcel.readHashMap(d7.n.class.getClassLoader());
        hashMap2 = hashMap2 == null ? null : hashMap2;
        this.f5885y = hashMap2 != null ? Collections.unmodifiableMap(hashMap2) : null;
        HashMap hashMap3 = parcel.readHashMap(d7.n.class.getClassLoader());
        hashMap3 = hashMap3 == null ? null : hashMap3;
        this.f5886z = hashMap3 != null ? Collections.unmodifiableMap(hashMap3) : null;
        this.A = parcel.readString();
        this.B = parcel.readString();
    }
}
