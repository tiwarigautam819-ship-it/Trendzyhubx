package y2;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import q2.g0;
import x1.c0;
import x1.d0;
import x1.j0;
import x1.w;
import x1.z;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class t implements Parcelable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public HashMap f6245a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o f6246b;

    public t(Parcel parcel) {
        HashMap map;
        int i6 = parcel.readInt();
        if (i6 < 0) {
            map = null;
        } else {
            map = new HashMap();
            for (int i9 = 0; i9 < i6; i9++) {
                map.put(parcel.readString(), parcel.readString());
            }
        }
        this.f6245a = map != null ? s6.r.y(map) : null;
    }

    public final void a(String str, String str2) {
        if (this.f6245a == null) {
            this.f6245a = new HashMap();
        }
        HashMap map = this.f6245a;
        if (map != null) {
        }
    }

    public final String c(String str) {
        d7.g.f("authId", str);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("0_auth_logger_id", str);
            jSONObject.put("3_method", e());
            j(jSONObject);
        } catch (JSONException e9) {
            Log.w("LoginMethodHandler", "Error creating client state json: " + e9.getMessage());
        }
        String string = jSONObject.toString();
        d7.g.e("param.toString()", string);
        return string;
    }

    public final o d() {
        o oVar = this.f6246b;
        if (oVar != null) {
            return oVar;
        }
        d7.g.i("loginClient");
        throw null;
    }

    public abstract String e();

    public String f() {
        return "fb" + x1.r.b() + "://authorize/";
    }

    public final void g(String str) {
        String strB;
        m mVar = d().f6230g;
        if (mVar == null || (strB = mVar.f6203d) == null) {
            strB = x1.r.b();
        }
        y1.k kVar = new y1.k(d().e(), strB);
        Bundle bundle = new Bundle();
        bundle.putString("fb_web_login_e2e", str);
        bundle.putLong("fb_web_login_switchback_time", System.currentTimeMillis());
        bundle.putString("app_id", strB);
        x1.r rVar = x1.r.f5918a;
        if (j0.c()) {
            kVar.g(bundle, "fb_dialogs_web_login_dialog_complete");
        }
    }

    public boolean h(int i6, int i9, Intent intent) {
        return false;
    }

    public final void i(m mVar, Bundle bundle) {
        String string = bundle.getString("code");
        if (g0.B(string)) {
            throw new x1.l("No code param found from the request");
        }
        if (string == null) {
            throw new x1.l("Failed to create code exchange request");
        }
        String strF = f();
        String str = mVar.f6214x;
        if (str == null) {
            str = "";
        }
        d7.g.f("redirectUri", strF);
        Bundle bundle2 = new Bundle();
        bundle2.putString("code", string);
        bundle2.putString("client_id", x1.r.b());
        bundle2.putString("redirect_uri", strF);
        bundle2.putString("code_verifier", str);
        String str2 = z.f5942j;
        z zVarU = w.u(null, "oauth/access_token", null);
        zVarU.h = d0.f5827a;
        zVarU.f5948d = bundle2;
        c0 c0VarC = zVarU.c();
        x1.o oVar = c0VarC.f5818c;
        if (oVar != null) {
            throw new x1.t(oVar, oVar.a());
        }
        try {
            JSONObject jSONObject = c0VarC.f5817b;
            String string2 = jSONObject != null ? jSONObject.getString("access_token") : null;
            if (jSONObject == null || g0.B(string2)) {
                throw new x1.l("No access token found from result");
            }
            bundle.putString("access_token", string2);
            if (jSONObject.has("id_token")) {
                bundle.putString("id_token", jSONObject.getString("id_token"));
            }
        } catch (JSONException e9) {
            throw new x1.l("Fail to process code exchange response: " + e9.getMessage());
        }
    }

    public abstract int k(m mVar);

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i6) {
        d7.g.f("dest", parcel);
        HashMap map = this.f6245a;
        if (map == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(map.size());
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            parcel.writeString(str);
            parcel.writeString(str2);
        }
    }

    public void b() {
    }

    public void j(JSONObject jSONObject) {
    }
}
