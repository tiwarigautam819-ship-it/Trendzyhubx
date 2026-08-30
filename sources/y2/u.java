package y2;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import androidx.fragment.app.m1;
import java.util.ArrayList;
import java.util.List;
import q2.g0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class u extends t {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6247c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f6248d;

    public /* synthetic */ u() {
        this.f6247c = 1;
    }

    @Override // y2.t
    public boolean h(int i6, int i9, Intent intent) {
        String str;
        String string;
        Object obj;
        switch (this.f6247c) {
            case 0:
                m mVar = d().f6230g;
                if (intent == null) {
                    l(new n(mVar, 2, null, "Operation canceled", null));
                    return true;
                }
                if (i9 == 0) {
                    Bundle extras = intent.getExtras();
                    if (extras != null && (string = extras.getString("error")) != null) {
                        str = string;
                    } else if (extras != null) {
                        String string2 = extras.getString("error_type");
                        str = string2;
                    } else {
                        str = null;
                    }
                    String string3 = (extras == null || (obj = extras.get("error_code")) == null) ? null : obj.toString();
                    if (!"CONNECTION_FAILURE".equals(string3)) {
                        l(new n(mVar, 2, null, str, null));
                        return true;
                    }
                    if (extras != null && (string = extras.getString("error_message")) != null) {
                        string = string;
                    } else if (extras != null) {
                        string = extras.getString("error_description");
                    }
                    ArrayList arrayList = new ArrayList();
                    if (str != null) {
                        arrayList.add(str);
                    }
                    if (string != null) {
                        arrayList.add(string);
                    }
                    l(new n(mVar, 3, null, TextUtils.join(": ", arrayList), string3));
                    return true;
                }
                if (i9 != -1) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add("Unexpected resultCode from authorization.");
                    l(new n(mVar, 3, null, TextUtils.join(": ", arrayList2), null));
                    return true;
                }
                Bundle extras2 = intent.getExtras();
                if (extras2 == null) {
                    ArrayList arrayList3 = new ArrayList();
                    arrayList3.add("Unexpected null from returned authorization data.");
                    l(new n(mVar, 3, null, TextUtils.join(": ", arrayList3), null));
                    return true;
                }
                String string4 = extras2.getString("error");
                if (string4 == null) {
                    string4 = extras2.getString("error_type");
                }
                Object obj2 = extras2.get("error_code");
                string = obj2 != null ? obj2.toString() : null;
                String string5 = extras2.getString("error_message");
                if (string5 == null) {
                    string5 = extras2.getString("error_description");
                }
                String string6 = extras2.getString("e2e");
                if (!g0.B(string6)) {
                    g(string6);
                }
                if (string4 != null || string != null || string5 != null || mVar == null) {
                    o(mVar, string4, string5, string);
                    return true;
                }
                if (!extras2.containsKey("code") || g0.B(extras2.getString("code"))) {
                    p(mVar, extras2);
                    return true;
                }
                x1.r.c().execute(new androidx.fragment.app.e(this, mVar, extras2, 9));
                return true;
            default:
                return super.h(i6, i9, intent);
        }
    }

    public void l(n nVar) {
        if (nVar != null) {
            d().d(nVar);
        } else {
            d().j();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.os.Bundle m(y2.m r8) {
        /*
            r7 = this;
            java.lang.String r0 = "request"
            d7.g.f(r0, r8)
            android.os.Bundle r0 = new android.os.Bundle
            r0.<init>()
            java.util.HashSet r1 = r8.f6201b
            if (r1 == 0) goto L25
            boolean r1 = r1.isEmpty()
            if (r1 == 0) goto L15
            goto L25
        L15:
            java.lang.String r1 = ","
            java.util.HashSet r2 = r8.f6201b
            java.lang.String r1 = android.text.TextUtils.join(r1, r2)
            java.lang.String r2 = "scope"
            r0.putString(r2, r1)
            r7.a(r2, r1)
        L25:
            int r1 = r8.f6202c
            if (r1 != 0) goto L2a
            r1 = 1
        L2a:
            java.lang.String r2 = "default_audience"
            java.lang.String r1 = q2.x.b(r1)
            r0.putString(r2, r1)
            java.lang.String r8 = r8.f6204e
            java.lang.String r8 = r7.c(r8)
            java.lang.String r1 = "state"
            r0.putString(r1, r8)
            java.util.Date r8 = x1.a.f5789l
            x1.a r8 = h8.b.f()
            if (r8 == 0) goto L49
            java.lang.String r8 = r8.f5796e
            goto L4a
        L49:
            r8 = 0
        L4a:
            java.lang.String r1 = "0"
            java.lang.String r2 = "1"
            java.lang.String r3 = "access_token"
            if (r8 == 0) goto L7d
            y2.o r4 = r7.d()
            androidx.fragment.app.h0 r4 = r4.e()
            if (r4 == 0) goto L5d
            goto L61
        L5d:
            android.content.Context r4 = x1.r.a()
        L61:
            java.lang.String r5 = "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"
            r6 = 0
            android.content.SharedPreferences r4 = r4.getSharedPreferences(r5, r6)
            java.lang.String r5 = "TOKEN"
            java.lang.String r6 = ""
            java.lang.String r4 = r4.getString(r5, r6)
            boolean r4 = r8.equals(r4)
            if (r4 == 0) goto L7d
            r0.putString(r3, r8)
            r7.a(r3, r2)
            goto L8d
        L7d:
            y2.o r8 = r7.d()
            androidx.fragment.app.h0 r8 = r8.e()
            if (r8 == 0) goto L8a
            q2.g0.c(r8)
        L8a:
            r7.a(r3, r1)
        L8d:
            long r3 = java.lang.System.currentTimeMillis()
            java.lang.String r8 = java.lang.String.valueOf(r3)
            java.lang.String r3 = "cbt"
            r0.putString(r3, r8)
            x1.r r8 = x1.r.f5918a
            boolean r8 = x1.j0.c()
            if (r8 == 0) goto La3
            r1 = r2
        La3:
            java.lang.String r8 = "ies"
            r0.putString(r8, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: y2.u.m(y2.m):android.os.Bundle");
    }

    public x1.f n() {
        return (x1.f) this.f6248d;
    }

    public void o(m mVar, String str, String str2, String str3) {
        if (str != null && str.equals("logged_out")) {
            a.f6156j = true;
            l(null);
            return;
        }
        if (s6.g.p(s6.h.k("service_disabled", "AndroidAuthKillSwitchException"), str)) {
            l(null);
            return;
        }
        if (s6.g.p(s6.h.k("access_denied", "OAuthAccessDeniedException"), str)) {
            l(new n(mVar, 2, null, null, null));
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (str != null) {
            arrayList.add(str);
        }
        if (str2 != null) {
            arrayList.add(str2);
        }
        l(new n(mVar, 3, null, TextUtils.join(": ", arrayList), str3));
    }

    public void p(m mVar, Bundle bundle) {
        try {
            l(new n(mVar, 1, y1.j.b(mVar.f6201b, bundle, n(), mVar.f6203d), y1.j.c(bundle, mVar.f6213w), null, null));
        } catch (x1.l e9) {
            String message = e9.getMessage();
            ArrayList arrayList = new ArrayList();
            if (message != null) {
                arrayList.add(message);
            }
            l(new n(mVar, 3, null, TextUtils.join(": ", arrayList), null));
        }
    }

    public void q(m mVar, Bundle bundle, x1.l lVar) {
        n nVar;
        n nVar2;
        d7.g.f("request", mVar);
        o oVarD = d();
        String strValueOf = null;
        this.f6248d = null;
        if (bundle != null) {
            if (bundle.containsKey("e2e")) {
                this.f6248d = bundle.getString("e2e");
            }
            try {
                x1.a aVarB = y1.j.b(mVar.f6201b, bundle, n(), mVar.f6203d);
                nVar2 = new n(oVarD.f6230g, 1, aVarB, y1.j.c(bundle, mVar.f6213w), null, null);
                if (oVarD.e() != null) {
                    try {
                        CookieSyncManager.createInstance(oVarD.e()).sync();
                    } catch (Exception unused) {
                    }
                    if (aVarB != null) {
                        String str = aVarB.f5796e;
                        Context contextE = d().e();
                        if (contextE == null) {
                            contextE = x1.r.a();
                        }
                        contextE.getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).edit().putString("TOKEN", str).apply();
                    }
                }
            } catch (x1.l e9) {
                m mVar2 = oVarD.f6230g;
                String message = e9.getMessage();
                ArrayList arrayList = new ArrayList();
                if (message != null) {
                    arrayList.add(message);
                }
                nVar = new n(mVar2, 3, null, TextUtils.join(": ", arrayList), null);
                nVar2 = nVar;
            }
        } else if (lVar instanceof x1.n) {
            nVar2 = new n(oVarD.f6230g, 2, null, "User canceled log in.", null);
        } else {
            this.f6248d = null;
            String message2 = lVar != null ? lVar.getMessage() : null;
            if (lVar instanceof x1.t) {
                x1.o oVar = ((x1.t) lVar).f5936a;
                strValueOf = String.valueOf(oVar.f5909b);
                message2 = oVar.toString();
            }
            String str2 = strValueOf;
            m mVar3 = oVarD.f6230g;
            ArrayList arrayList2 = new ArrayList();
            if (message2 != null) {
                arrayList2.add(message2);
            }
            nVar = new n(mVar3, 3, null, TextUtils.join(": ", arrayList2), str2);
            nVar2 = nVar;
        }
        if (!g0.B((String) this.f6248d)) {
            g((String) this.f6248d);
        }
        oVarD.d(nVar2);
    }

    public boolean r(Intent intent) {
        if (intent == null) {
            return false;
        }
        List<ResolveInfo> listQueryIntentActivities = x1.r.a().getPackageManager().queryIntentActivities(intent, 65536);
        d7.g.e("getApplicationContext()\n…nager.MATCH_DEFAULT_ONLY)", listQueryIntentActivities);
        if (listQueryIntentActivities.isEmpty()) {
            return false;
        }
        q qVar = d().f6226c;
        r6.j jVar = null;
        if (!m1.d(qVar)) {
            qVar = null;
        }
        if (qVar != null) {
            androidx.fragment.app.v vVar = qVar.f6239i0;
            if (vVar == null) {
                d7.g.i("launcher");
                throw null;
            }
            vVar.a(intent);
            jVar = r6.j.f5000a;
        }
        return jVar != null;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(int i6, Parcel parcel) {
        super(parcel);
        this.f6247c = i6;
        switch (i6) {
            case 1:
                super(parcel);
                break;
            default:
                this.f6248d = x1.f.FACEBOOK_APPLICATION_WEB;
                break;
        }
    }

    public u(o oVar) {
        this.f6247c = 0;
        this.f6246b = oVar;
        this.f6248d = x1.f.FACEBOOK_APPLICATION_WEB;
    }
}
