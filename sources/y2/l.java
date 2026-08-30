package y2;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.HashSet;
import org.json.JSONException;
import org.json.JSONObject;
import q2.a0;
import q2.b0;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l extends u {
    public static final Parcelable.Creator<l> CREATOR = new n4.e(20);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f6199e;

    public l(o oVar) {
        super(oVar);
        this.f6199e = "katana_proxy_auth";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // y2.t
    public final String e() {
        return this.f6199e;
    }

    @Override // y2.t
    public final int k(m mVar) {
        d7.g.f("request", mVar);
        boolean z5 = x1.r.f5929m && q2.g.c() != null && x.a(mVar.f6200a);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("init", System.currentTimeMillis());
        } catch (JSONException unused) {
        }
        String string = jSONObject.toString();
        d7.g.e("e2e.toString()", string);
        d();
        String str = mVar.f6203d;
        HashSet hashSet = mVar.f6201b;
        boolean zA = mVar.a();
        int i6 = mVar.f6202c;
        int i9 = i6 == 0 ? 1 : i6;
        String strC = c(mVar.f6204e);
        String str2 = mVar.h;
        String str3 = mVar.f6208j;
        boolean z8 = mVar.f6209k;
        boolean z9 = mVar.f6211m;
        boolean z10 = mVar.f6212v;
        String str4 = mVar.f6213w;
        int i10 = mVar.f6216z;
        if (i10 != 0) {
            x.l(i10);
        }
        b0 b0Var = b0.f4712a;
        ArrayList<Intent> arrayList = null;
        if (!v2.a.b(b0.class)) {
            try {
                d7.g.f("applicationId", str);
                d7.g.f("permissions", hashSet);
                d7.g.f("authType", str2);
                ArrayList arrayList2 = b0.f4713b;
                ArrayList arrayList3 = new ArrayList();
                int size = arrayList2.size();
                int i11 = 0;
                while (i11 < size) {
                    Object obj = arrayList2.get(i11);
                    i11++;
                    boolean z11 = z9;
                    boolean z12 = z10;
                    Intent intentC = b0.f4712a.c((a0) obj, str, hashSet, string, zA, i9, strC, str2, z5, str3, z8, 1, z11, z12, str4);
                    if (intentC != null) {
                        arrayList3.add(intentC);
                    }
                    z9 = z11;
                    z10 = z12;
                }
                arrayList = arrayList3;
            } catch (Throwable th) {
                v2.a.a(th, b0.class);
            }
        }
        a("e2e", string);
        int i12 = 0;
        for (Intent intent : arrayList) {
            i12++;
            x1.r rVar = x1.r.f5918a;
            q2.g.k();
            if (r(intent)) {
                return i12;
            }
        }
        return 0;
    }

    public l(Parcel parcel) {
        super(0, parcel);
        this.f6199e = "katana_proxy_auth";
    }
}
