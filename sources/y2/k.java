package y2;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashSet;
import org.json.JSONException;
import org.json.JSONObject;
import q2.a0;
import q2.b0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends u {
    public static final Parcelable.Creator<k> CREATOR = new n4.e(19);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f6197e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final x1.f f6198f;

    public k(o oVar) {
        super(oVar);
        this.f6197e = "instagram_login";
        this.f6198f = x1.f.INSTAGRAM_APPLICATION_WEB;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // y2.t
    public final String e() {
        return this.f6197e;
    }

    @Override // y2.t
    public final int k(m mVar) {
        Object obj;
        d7.g.f("request", mVar);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("init", System.currentTimeMillis());
        } catch (JSONException unused) {
        }
        String string = jSONObject.toString();
        d7.g.e("e2e.toString()", string);
        Context contextE = d().e();
        if (contextE == null) {
            contextE = x1.r.a();
        }
        String str = mVar.f6203d;
        HashSet hashSet = mVar.f6201b;
        boolean zA = mVar.a();
        int i6 = mVar.f6202c;
        int i9 = i6 == 0 ? 1 : i6;
        String strC = c(mVar.f6204e);
        String str2 = mVar.h;
        String str3 = mVar.f6208j;
        boolean z5 = mVar.f6209k;
        boolean z8 = mVar.f6211m;
        boolean z9 = mVar.f6212v;
        b0 b0Var = b0.f4712a;
        Intent intent = null;
        if (!v2.a.b(b0.class)) {
            try {
                d7.g.f("applicationId", str);
                d7.g.f("permissions", hashSet);
                d7.g.f("authType", str2);
                try {
                    obj = b0.class;
                    try {
                        Intent intentC = b0.f4712a.c(new a0(1), str, hashSet, string, zA, i9, strC, str2, false, str3, z5, 2, z8, z9, "");
                        if (!v2.a.b(obj) && intentC != null) {
                            try {
                                ResolveInfo resolveInfoResolveActivity = contextE.getPackageManager().resolveActivity(intentC, 0);
                                if (resolveInfoResolveActivity != null) {
                                    String str4 = resolveInfoResolveActivity.activityInfo.packageName;
                                    d7.g.e("resolveInfo.activityInfo.packageName", str4);
                                    if (q2.l.a(contextE, str4)) {
                                        intent = intentC;
                                    }
                                }
                            } catch (Throwable th) {
                                v2.a.a(th, obj);
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        v2.a.a(th, obj);
                    }
                } catch (Throwable th3) {
                    th = th3;
                    obj = b0.class;
                }
            } catch (Throwable th4) {
                th = th4;
                obj = b0.class;
            }
        }
        Intent intent2 = intent;
        a("e2e", string);
        x1.r rVar = x1.r.f5918a;
        q2.g.k();
        return r(intent2) ? 1 : 0;
    }

    @Override // y2.u
    public final x1.f n() {
        return this.f6198f;
    }

    @Override // y2.t, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        d7.g.f("dest", parcel);
        super.writeToParcel(parcel, i6);
    }

    public k(Parcel parcel) {
        super(0, parcel);
        this.f6197e = "instagram_login";
        this.f6198f = x1.f.INSTAGRAM_APPLICATION_WEB;
    }
}
