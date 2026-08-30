package y2;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.h0;
import org.json.JSONException;
import org.json.JSONObject;
import q2.g0;
import q2.p0;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class v extends u {
    public static final Parcelable.Creator<v> CREATOR = new n4.e(24);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public p0 f6249e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f6250f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f6251g;
    public final x1.f h;

    public v(Parcel parcel) {
        super(1, parcel);
        this.f6251g = "web_view";
        this.h = x1.f.WEB_VIEW;
        this.f6250f = parcel.readString();
    }

    @Override // y2.t
    public final void b() {
        p0 p0Var = this.f6249e;
        if (p0Var != null) {
            if (p0Var != null) {
                p0Var.cancel();
            }
            this.f6249e = null;
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // y2.t
    public final String e() {
        return this.f6251g;
    }

    @Override // y2.t
    public final int k(m mVar) {
        d7.g.f("request", mVar);
        Bundle bundleM = m(mVar);
        u3.o oVar = new u3.o(this, mVar);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("init", System.currentTimeMillis());
        } catch (JSONException unused) {
        }
        String string = jSONObject.toString();
        d7.g.e("e2e.toString()", string);
        this.f6250f = string;
        a("e2e", string);
        h0 h0VarE = d().e();
        if (h0VarE == null) {
            return 0;
        }
        boolean zY = g0.y(h0VarE);
        String str = mVar.f6203d;
        d7.g.f("applicationId", str);
        q2.g.j(str, "applicationId");
        String str2 = this.f6250f;
        d7.g.d("null cannot be cast to non-null type kotlin.String", str2);
        String str3 = zY ? "fbconnect://chrome_os_success" : "fbconnect://success";
        String str4 = mVar.h;
        d7.g.f("authType", str4);
        int i6 = mVar.f6200a;
        a1.a.n(i6, "loginBehavior");
        int i9 = mVar.f6210l;
        a1.a.n(i9, "targetApp");
        boolean z5 = mVar.f6211m;
        boolean z8 = mVar.f6212v;
        bundleM.putString("redirect_uri", str3);
        bundleM.putString("client_id", str);
        bundleM.putString("e2e", str2);
        bundleM.putString("response_type", i9 == 2 ? "token,signed_request,graph_domain,granted_scopes" : "token,signed_request,graph_domain");
        bundleM.putString("return_scopes", "true");
        bundleM.putString("auth_type", str4);
        bundleM.putString("login_behavior", x.m(i6));
        if (z5) {
            bundleM.putString("fx_app", x.c(i9));
        }
        if (z8) {
            bundleM.putString("skip_dedupe", "true");
        }
        int i10 = p0.f4787m;
        a1.a.n(i9, "targetApp");
        p0.b(h0VarE);
        this.f6249e = new p0(h0VarE, "oauth", bundleM, i9, oVar);
        q2.i iVar = new q2.i();
        iVar.I();
        iVar.f4747t0 = this.f6249e;
        iVar.L(h0VarE.getSupportFragmentManager(), "FacebookDialogFragment");
        return 1;
    }

    @Override // y2.u
    public final x1.f n() {
        return this.h;
    }

    @Override // y2.t, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        d7.g.f("dest", parcel);
        super.writeToParcel(parcel, i6);
        parcel.writeString(this.f6250f);
    }

    public v(o oVar) {
        this.f6246b = oVar;
        this.f6251g = "web_view";
        this.h = x1.f.WEB_VIEW;
    }
}
