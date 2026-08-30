package y2;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.fragment.app.h0;
import com.YaarWin.app.R;
import com.facebook.CustomTabMainActivity;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.j0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;
import q2.g0;
import x1.w;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o implements Parcelable {
    public static final Parcelable.Creator<o> CREATOR = new n4.e(21);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public t[] f6224a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6225b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public q f6226c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public j0 f6227d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public p f6228e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f6229f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public m f6230g;
    public Map h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public LinkedHashMap f6231i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public r f6232j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f6233k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f6234l;

    public final void a(String str, String str2, boolean z5) {
        Map map = this.h;
        if (map == null) {
            map = new HashMap();
        }
        if (this.h == null) {
            this.h = map;
        }
        if (map.containsKey(str) && z5) {
            str2 = ((String) map.get(str)) + ',' + str2;
        }
        map.put(str, str2);
    }

    public final boolean b() {
        if (this.f6229f) {
            return true;
        }
        h0 h0VarE = e();
        if ((h0VarE != null ? h0VarE.checkCallingOrSelfPermission("android.permission.INTERNET") : -1) == 0) {
            this.f6229f = true;
            return true;
        }
        h0 h0VarE2 = e();
        String string = h0VarE2 != null ? h0VarE2.getString(R.string.com_facebook_internet_permission_error_title) : null;
        String string2 = h0VarE2 != null ? h0VarE2.getString(R.string.com_facebook_internet_permission_error_message) : null;
        m mVar = this.f6230g;
        ArrayList arrayList = new ArrayList();
        if (string != null) {
            arrayList.add(string);
        }
        if (string2 != null) {
            arrayList.add(string2);
        }
        c(new n(mVar, 3, null, TextUtils.join(": ", arrayList), null));
        return false;
    }

    public final void c(n nVar) {
        o oVar;
        String str;
        d7.g.f("outcome", nVar);
        int i6 = nVar.f6217a;
        t tVarF = f();
        if (tVarF != null) {
            String strE = tVarF.e();
            HashMap map = tVarF.f6245a;
            if (i6 == 1) {
                str = FirebaseAnalytics.Param.SUCCESS;
            } else if (i6 == 2) {
                str = "cancel";
            } else {
                if (i6 != 3) {
                    throw null;
                }
                str = "error";
            }
            oVar = this;
            oVar.h(strE, str, nVar.f6220d, nVar.f6221e, map);
        } else {
            oVar = this;
        }
        Map map2 = oVar.h;
        if (map2 != null) {
            nVar.f6223g = map2;
        }
        LinkedHashMap linkedHashMap = oVar.f6231i;
        if (linkedHashMap != null) {
            nVar.h = linkedHashMap;
        }
        oVar.f6224a = null;
        oVar.f6225b = -1;
        oVar.f6230g = null;
        oVar.h = null;
        oVar.f6233k = 0;
        oVar.f6234l = 0;
        j0 j0Var = oVar.f6227d;
        if (j0Var != null) {
            q qVar = (q) j0Var.f2113b;
            qVar.f6237g0 = null;
            int i9 = i6 == 2 ? 0 : -1;
            Bundle bundle = new Bundle();
            bundle.putParcelable("com.facebook.LoginFragment:Result", nVar);
            Intent intent = new Intent();
            intent.putExtras(bundle);
            h0 h0VarC = qVar.c();
            if (!qVar.k() || h0VarC == null) {
                return;
            }
            h0VarC.setResult(i9, intent);
            h0VarC.finish();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003b A[Catch: Exception -> 0x0039, TryCatch #0 {Exception -> 0x0039, blocks: (B:8:0x001e, B:10:0x0028, B:14:0x0053, B:13:0x003b), top: B:23:0x001e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void d(y2.n r19) {
        /*
            r18 = this;
            r1 = r18
            r0 = r19
            java.lang.String r2 = "outcome"
            d7.g.f(r2, r0)
            x1.a r2 = r0.f6218b
            if (r2 == 0) goto L7b
            java.util.Date r3 = x1.a.f5789l
            boolean r3 = h8.b.i()
            if (r3 == 0) goto L7b
            x1.a r3 = h8.b.f()
            r6 = 3
            java.lang.String r10 = ": "
            if (r3 == 0) goto L3b
            java.lang.String r3 = r3.f5799i     // Catch: java.lang.Exception -> L39
            java.lang.String r2 = r2.f5799i     // Catch: java.lang.Exception -> L39
            boolean r2 = d7.g.a(r3, r2)     // Catch: java.lang.Exception -> L39
            if (r2 == 0) goto L3b
            y2.m r12 = r1.f6230g     // Catch: java.lang.Exception -> L39
            x1.a r14 = r0.f6218b     // Catch: java.lang.Exception -> L39
            x1.g r15 = r0.f6219c     // Catch: java.lang.Exception -> L39
            y2.n r11 = new y2.n     // Catch: java.lang.Exception -> L39
            r16 = 0
            r17 = 0
            r13 = 1
            r11.<init>(r12, r13, r14, r15, r16, r17)     // Catch: java.lang.Exception -> L39
            goto L53
        L39:
            r0 = move-exception
            goto L57
        L3b:
            y2.m r5 = r1.f6230g     // Catch: java.lang.Exception -> L39
            java.lang.String r0 = "User logged in as different Facebook user."
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Exception -> L39
            r2.<init>()     // Catch: java.lang.Exception -> L39
            r2.add(r0)     // Catch: java.lang.Exception -> L39
            java.lang.String r8 = android.text.TextUtils.join(r10, r2)     // Catch: java.lang.Exception -> L39
            y2.n r4 = new y2.n     // Catch: java.lang.Exception -> L39
            r7 = 0
            r9 = 0
            r4.<init>(r5, r6, r7, r8, r9)     // Catch: java.lang.Exception -> L39
            r11 = r4
        L53:
            r1.c(r11)     // Catch: java.lang.Exception -> L39
            return
        L57:
            y2.m r5 = r1.f6230g
            java.lang.String r0 = r0.getMessage()
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.lang.String r3 = "Caught exception"
            r2.add(r3)
            if (r0 == 0) goto L6c
            r2.add(r0)
        L6c:
            java.lang.String r8 = android.text.TextUtils.join(r10, r2)
            y2.n r4 = new y2.n
            r7 = 0
            r9 = 0
            r4.<init>(r5, r6, r7, r8, r9)
            r1.c(r4)
            return
        L7b:
            r18.c(r19)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: y2.o.d(y2.n):void");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final h0 e() {
        q qVar = this.f6226c;
        if (qVar != null) {
            return qVar.c();
        }
        return null;
    }

    public final t f() {
        t[] tVarArr;
        int i6 = this.f6225b;
        if (i6 < 0 || (tVarArr = this.f6224a) == null) {
            return null;
        }
        return tVarArr[i6];
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0019  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final y2.r g() {
        /*
            r4 = this;
            y2.r r0 = r4.f6232j
            if (r0 == 0) goto L21
            boolean r1 = v2.a.b(r0)
            r2 = 0
            if (r1 == 0) goto Ld
        Lb:
            r1 = r2
            goto L15
        Ld:
            java.lang.String r1 = r0.f6242a     // Catch: java.lang.Throwable -> L10
            goto L15
        L10:
            r1 = move-exception
            v2.a.a(r1, r0)
            goto Lb
        L15:
            y2.m r3 = r4.f6230g
            if (r3 == 0) goto L1b
            java.lang.String r2 = r3.f6203d
        L1b:
            boolean r1 = d7.g.a(r1, r2)
            if (r1 != 0) goto L3f
        L21:
            y2.r r0 = new y2.r
            androidx.fragment.app.h0 r1 = r4.e()
            if (r1 == 0) goto L2a
            goto L2e
        L2a:
            android.content.Context r1 = x1.r.a()
        L2e:
            y2.m r2 = r4.f6230g
            if (r2 == 0) goto L36
            java.lang.String r2 = r2.f6203d
            if (r2 != 0) goto L3a
        L36:
            java.lang.String r2 = x1.r.b()
        L3a:
            r0.<init>(r1, r2)
            r4.f6232j = r0
        L3f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: y2.o.g():y2.r");
    }

    public final void h(String str, String str2, String str3, String str4, Map map) {
        m mVar = this.f6230g;
        if (mVar == null) {
            r rVarG = g();
            if (v2.a.b(rVarG)) {
                return;
            }
            try {
                int i6 = r.f6241c;
                Bundle bundleD = w.d("");
                bundleD.putString("2_result", "error");
                bundleD.putString("5_error_message", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.");
                bundleD.putString("3_method", str);
                rVarG.f6243b.a(bundleD, "fb_mobile_login_method_complete");
                return;
            } catch (Throwable th) {
                v2.a.a(th, rVarG);
                return;
            }
        }
        r rVarG2 = g();
        String str5 = mVar.f6204e;
        String str6 = mVar.f6211m ? "foa_mobile_login_method_complete" : "fb_mobile_login_method_complete";
        if (v2.a.b(rVarG2)) {
            return;
        }
        try {
            int i9 = r.f6241c;
            Bundle bundleD2 = w.d(str5);
            bundleD2.putString("2_result", str2);
            if (str3 != null) {
                bundleD2.putString("5_error_message", str3);
            }
            if (str4 != null) {
                bundleD2.putString("4_error_code", str4);
            }
            if (map != null && !map.isEmpty()) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Map.Entry entry : map.entrySet()) {
                    if (((String) entry.getKey()) != null) {
                        linkedHashMap.put(entry.getKey(), entry.getValue());
                    }
                }
                bundleD2.putString("6_extras", new JSONObject(linkedHashMap).toString());
            }
            bundleD2.putString("3_method", str);
            rVarG2.f6243b.a(bundleD2, str6);
        } catch (Throwable th2) {
            v2.a.a(th2, rVarG2);
        }
    }

    public final void i(int i6, int i9, Intent intent) {
        this.f6233k++;
        if (this.f6230g != null) {
            if (intent != null) {
                int i10 = CustomTabMainActivity.f1317c;
                if (intent.getBooleanExtra("CustomTabMainActivity.no_activity_exception", false)) {
                    j();
                    return;
                }
            }
            t tVarF = f();
            if (tVarF != null) {
                if ((tVarF instanceof l) && intent == null && this.f6233k < this.f6234l) {
                    return;
                }
                tVarF.h(i6, i9, intent);
            }
        }
    }

    public final void j() {
        o oVar;
        t tVarF = f();
        if (tVarF != null) {
            oVar = this;
            oVar.h(tVarF.e(), "skipped", null, null, tVarF.f6245a);
        } else {
            oVar = this;
        }
        t[] tVarArr = oVar.f6224a;
        while (tVarArr != null) {
            int i6 = oVar.f6225b;
            if (i6 >= tVarArr.length - 1) {
                break;
            }
            oVar.f6225b = i6 + 1;
            t tVarF2 = f();
            if (tVarF2 != null) {
                if (!(tVarF2 instanceof v) || b()) {
                    m mVar = oVar.f6230g;
                    if (mVar == null) {
                        continue;
                    } else {
                        boolean z5 = mVar.f6211m;
                        String str = mVar.f6204e;
                        int iK = tVarF2.k(mVar);
                        oVar.f6233k = 0;
                        if (iK > 0) {
                            r rVarG = g();
                            String strE = tVarF2.e();
                            String str2 = z5 ? "foa_mobile_login_method_start" : "fb_mobile_login_method_start";
                            if (!v2.a.b(rVarG)) {
                                try {
                                    int i9 = r.f6241c;
                                    Bundle bundleD = w.d(str);
                                    bundleD.putString("3_method", strE);
                                    rVarG.f6243b.a(bundleD, str2);
                                } catch (Throwable th) {
                                    v2.a.a(th, rVarG);
                                }
                            }
                            oVar.f6234l = iK;
                        } else {
                            r rVarG2 = g();
                            String strE2 = tVarF2.e();
                            String str3 = z5 ? "foa_mobile_login_method_not_tried" : "fb_mobile_login_method_not_tried";
                            if (!v2.a.b(rVarG2)) {
                                try {
                                    int i10 = r.f6241c;
                                    Bundle bundleD2 = w.d(str);
                                    bundleD2.putString("3_method", strE2);
                                    rVarG2.f6243b.a(bundleD2, str3);
                                } catch (Throwable th2) {
                                    v2.a.a(th2, rVarG2);
                                }
                            }
                            a("not_tried", tVarF2.e(), true);
                        }
                        if (iK > 0) {
                            return;
                        }
                    }
                } else {
                    a("no_internet_permission", "1", false);
                }
            }
        }
        m mVar2 = oVar.f6230g;
        if (mVar2 != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add("Login attempt failed.");
            c(new n(mVar2, 3, null, TextUtils.join(": ", arrayList), null));
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        d7.g.f("dest", parcel);
        parcel.writeParcelableArray(this.f6224a, i6);
        parcel.writeInt(this.f6225b);
        parcel.writeParcelable(this.f6230g, i6);
        g0.N(parcel, this.h);
        g0.N(parcel, this.f6231i);
    }
}
