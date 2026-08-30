package x1;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Date f5792a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f5793b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set f5794c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Set f5795d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f5796e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final f f5797f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Date f5798g;
    public final String h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f5799i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Date f5800j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f5801k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final Date f5789l = new Date(Long.MAX_VALUE);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final Date f5790m = new Date();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final f f5791v = f.FACEBOOK_APPLICATION_WEB;
    public static final Parcelable.Creator<a> CREATOR = new n4.e(8);

    public a(String str, String str2, String str3, Collection collection, Collection collection2, Collection collection3, f fVar, Date date, Date date2, Date date3, String str4) {
        d7.g.f("accessToken", str);
        d7.g.f("applicationId", str2);
        d7.g.f("userId", str3);
        q2.g.h(str, "accessToken");
        q2.g.h(str2, "applicationId");
        q2.g.h(str3, "userId");
        Date date4 = f5789l;
        this.f5792a = date == null ? date4 : date;
        Set setUnmodifiableSet = Collections.unmodifiableSet(collection != null ? new HashSet(collection) : new HashSet());
        d7.g.e("unmodifiableSet(if (perm…missions) else HashSet())", setUnmodifiableSet);
        this.f5793b = setUnmodifiableSet;
        Set setUnmodifiableSet2 = Collections.unmodifiableSet(collection2 != null ? new HashSet(collection2) : new HashSet());
        d7.g.e("unmodifiableSet(\n       …missions) else HashSet())", setUnmodifiableSet2);
        this.f5794c = setUnmodifiableSet2;
        Set setUnmodifiableSet3 = Collections.unmodifiableSet(collection3 != null ? new HashSet(collection3) : new HashSet());
        d7.g.e("unmodifiableSet(\n       …missions) else HashSet())", setUnmodifiableSet3);
        this.f5795d = setUnmodifiableSet3;
        this.f5796e = str;
        fVar = fVar == null ? f5791v : fVar;
        if (str4 != null && str4.equals("instagram")) {
            int iOrdinal = fVar.ordinal();
            if (iOrdinal == 1) {
                fVar = f.INSTAGRAM_APPLICATION_WEB;
            } else if (iOrdinal == 4) {
                fVar = f.INSTAGRAM_WEB_VIEW;
            } else if (iOrdinal == 5) {
                fVar = f.INSTAGRAM_CUSTOM_CHROME_TAB;
            }
        }
        this.f5797f = fVar;
        this.f5798g = date2 == null ? f5790m : date2;
        this.h = str2;
        this.f5799i = str3;
        this.f5800j = (date3 == null || date3.getTime() == 0) ? date4 : date3;
        this.f5801k = str4 == null ? "facebook" : str4;
    }

    public final JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("version", 1);
        jSONObject.put("token", this.f5796e);
        jSONObject.put("expires_at", this.f5792a.getTime());
        jSONObject.put("permissions", new JSONArray((Collection) this.f5793b));
        jSONObject.put("declined_permissions", new JSONArray((Collection) this.f5794c));
        jSONObject.put("expired_permissions", new JSONArray((Collection) this.f5795d));
        jSONObject.put("last_refresh", this.f5798g.getTime());
        jSONObject.put(FirebaseAnalytics.Param.SOURCE, this.f5797f.name());
        jSONObject.put("application_id", this.h);
        jSONObject.put(MTCoreConstants.Register.KEY_USER_ID, this.f5799i);
        jSONObject.put("data_access_expiration_time", this.f5800j.getTime());
        String str = this.f5801k;
        if (str != null) {
            jSONObject.put("graph_domain", str);
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        String str = aVar.f5801k;
        if (d7.g.a(this.f5792a, aVar.f5792a) && d7.g.a(this.f5793b, aVar.f5793b) && d7.g.a(this.f5794c, aVar.f5794c) && d7.g.a(this.f5795d, aVar.f5795d) && d7.g.a(this.f5796e, aVar.f5796e) && this.f5797f == aVar.f5797f && d7.g.a(this.f5798g, aVar.f5798g) && d7.g.a(this.h, aVar.h) && d7.g.a(this.f5799i, aVar.f5799i) && d7.g.a(this.f5800j, aVar.f5800j)) {
            String str2 = this.f5801k;
            if (str2 == null ? str == null : d7.g.a(str2, str)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.f5800j.hashCode() + q2.x.d(q2.x.d((this.f5798g.hashCode() + ((this.f5797f.hashCode() + q2.x.d((this.f5795d.hashCode() + ((this.f5794c.hashCode() + ((this.f5793b.hashCode() + ((this.f5792a.hashCode() + 527) * 31)) * 31)) * 31)) * 31, this.f5796e, 31)) * 31)) * 31, this.h, 31), this.f5799i, 31)) * 31;
        String str = this.f5801k;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{AccessToken token:ACCESS_TOKEN_REMOVED permissions:[");
        synchronized (r.f5919b) {
        }
        sb.append(TextUtils.join(", ", this.f5793b));
        sb.append("]}");
        String string = sb.toString();
        d7.g.e("builder.toString()", string);
        return string;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        d7.g.f("dest", parcel);
        parcel.writeLong(this.f5792a.getTime());
        parcel.writeStringList(new ArrayList(this.f5793b));
        parcel.writeStringList(new ArrayList(this.f5794c));
        parcel.writeStringList(new ArrayList(this.f5795d));
        parcel.writeString(this.f5796e);
        parcel.writeString(this.f5797f.name());
        parcel.writeLong(this.f5798g.getTime());
        parcel.writeString(this.h);
        parcel.writeString(this.f5799i);
        parcel.writeLong(this.f5800j.getTime());
        parcel.writeString(this.f5801k);
    }

    public a(Parcel parcel) {
        f fVarValueOf;
        this.f5792a = new Date(parcel.readLong());
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        Set setUnmodifiableSet = Collections.unmodifiableSet(new HashSet(arrayList));
        d7.g.e("unmodifiableSet(HashSet(permissionsList))", setUnmodifiableSet);
        this.f5793b = setUnmodifiableSet;
        arrayList.clear();
        parcel.readStringList(arrayList);
        Set setUnmodifiableSet2 = Collections.unmodifiableSet(new HashSet(arrayList));
        d7.g.e("unmodifiableSet(HashSet(permissionsList))", setUnmodifiableSet2);
        this.f5794c = setUnmodifiableSet2;
        arrayList.clear();
        parcel.readStringList(arrayList);
        Set setUnmodifiableSet3 = Collections.unmodifiableSet(new HashSet(arrayList));
        d7.g.e("unmodifiableSet(HashSet(permissionsList))", setUnmodifiableSet3);
        this.f5795d = setUnmodifiableSet3;
        String string = parcel.readString();
        q2.g.j(string, "token");
        this.f5796e = string;
        String string2 = parcel.readString();
        if (string2 != null) {
            fVarValueOf = f.valueOf(string2);
        } else {
            fVarValueOf = f5791v;
        }
        this.f5797f = fVarValueOf;
        this.f5798g = new Date(parcel.readLong());
        String string3 = parcel.readString();
        q2.g.j(string3, "applicationId");
        this.h = string3;
        String string4 = parcel.readString();
        q2.g.j(string4, "userId");
        this.f5799i = string4;
        this.f5800j = new Date(parcel.readLong());
        this.f5801k = parcel.readString();
    }
}
