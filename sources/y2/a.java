package y2;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.h0;
import com.facebook.CustomTabMainActivity;
import java.math.BigInteger;
import java.util.Random;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;
import org.json.JSONObject;
import q2.g0;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends u {
    public static final Parcelable.Creator<a> CREATOR = new n4.e(15);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static boolean f6156j;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f6157e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f6158f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f6159g;
    public final String h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final x1.f f6160i;

    public a(Parcel parcel) {
        super(1, parcel);
        this.h = "custom_tab";
        this.f6160i = x1.f.CHROME_CUSTOM_TAB;
        this.f6158f = parcel.readString();
        this.f6159g = q2.g.e(super.f());
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // y2.t
    public final String e() {
        return this.h;
    }

    @Override // y2.t
    public final String f() {
        return this.f6159g;
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000e  */
    @Override // y2.u, y2.t
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean h(int r7, int r8, android.content.Intent r9) {
        /*
            Method dump skipped, instruction units count: 280
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: y2.a.h(int, int, android.content.Intent):boolean");
    }

    @Override // y2.t
    public final void j(JSONObject jSONObject) throws JSONException {
        jSONObject.put("7_challenge", this.f6158f);
    }

    @Override // y2.t
    public final int k(m mVar) {
        d7.g.f("request", mVar);
        int i6 = mVar.f6210l;
        o oVarD = d();
        String str = this.f6159g;
        if (str.length() == 0) {
            return 0;
        }
        Bundle bundleM = m(mVar);
        String str2 = mVar.f6203d;
        bundleM.putString("redirect_uri", str);
        if (i6 == 2) {
            bundleM.putString("app_id", str2);
        } else {
            bundleM.putString("client_id", str2);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("init", System.currentTimeMillis());
        } catch (JSONException unused) {
        }
        String string = jSONObject.toString();
        d7.g.e("e2e.toString()", string);
        bundleM.putString("e2e", string);
        if (i6 == 2) {
            bundleM.putString("response_type", "token,signed_request,graph_domain,granted_scopes");
        } else {
            if (mVar.f6201b.contains("openid")) {
                bundleM.putString("nonce", mVar.f6213w);
            }
            bundleM.putString("response_type", "id_token,token,signed_request,graph_domain");
        }
        bundleM.putString("code_challenge", mVar.f6215y);
        int i9 = mVar.f6216z;
        bundleM.putString("code_challenge_method", i9 != 0 ? x.l(i9) : null);
        bundleM.putString("return_scopes", "true");
        bundleM.putString("auth_type", mVar.h);
        bundleM.putString("login_behavior", x.m(mVar.f6200a));
        x1.r rVar = x1.r.f5918a;
        bundleM.putString("sdk", "android-18.1.3");
        bundleM.putString("sso", "chrome_custom_tab");
        bundleM.putString("cct_prefetching", x1.r.f5928l ? "1" : "0");
        if (mVar.f6211m) {
            bundleM.putString("fx_app", x.c(i6));
        }
        if (mVar.f6212v) {
            bundleM.putString("skip_dedupe", "true");
        }
        String str3 = mVar.f6208j;
        if (str3 != null) {
            bundleM.putString("messenger_page_id", str3);
            bundleM.putString("reset_messenger_state", mVar.f6209k ? "1" : "0");
        }
        if (f6156j) {
            bundleM.putString("cct_over_app_switch", "1");
        }
        if (x1.r.f5928l) {
            if (i6 == 2) {
                ReentrantLock reentrantLock = b.f6161a;
                g0.a(g0.r(), "oauth/authorize", bundleM);
                ReentrantLock reentrantLock2 = b.f6161a;
                reentrantLock2.lock();
                reentrantLock2.unlock();
                reentrantLock2.lock();
                reentrantLock2.unlock();
            } else {
                ReentrantLock reentrantLock3 = b.f6161a;
                g0.a(g0.p(), x1.r.d() + "/dialog/oauth", bundleM);
                ReentrantLock reentrantLock4 = b.f6161a;
                reentrantLock4.lock();
                reentrantLock4.unlock();
                reentrantLock4.lock();
                reentrantLock4.unlock();
            }
        }
        h0 h0VarE = oVarD.e();
        if (h0VarE == null) {
            return 0;
        }
        Intent intent = new Intent(h0VarE, (Class<?>) CustomTabMainActivity.class);
        int i10 = CustomTabMainActivity.f1317c;
        intent.putExtra("CustomTabMainActivity.extra_action", "oauth");
        intent.putExtra("CustomTabMainActivity.extra_params", bundleM);
        String strC = this.f6157e;
        if (strC == null) {
            strC = q2.g.c();
            this.f6157e = strC;
        }
        intent.putExtra("CustomTabMainActivity.extra_chromePackage", strC);
        intent.putExtra("CustomTabMainActivity.extra_targetApp", x.c(i6));
        q qVar = oVarD.f6226c;
        if (qVar != null) {
            qVar.J(intent, 1, null);
        }
        return 1;
    }

    @Override // y2.u
    public final x1.f n() {
        return this.f6160i;
    }

    @Override // y2.t, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        d7.g.f("dest", parcel);
        super.writeToParcel(parcel, i6);
        parcel.writeString(this.f6158f);
    }

    public a(o oVar) {
        this.f6246b = oVar;
        this.h = "custom_tab";
        this.f6160i = x1.f.CHROME_CUSTOM_TAB;
        String string = new BigInteger(100, new Random()).toString(32);
        d7.g.e("BigInteger(length * 5, r).toString(32)", string);
        this.f6158f = string;
        f6156j = false;
        this.f6159g = q2.g.e(super.f());
    }
}
