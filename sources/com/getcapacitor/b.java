package com.getcapacitor;

import i2.s;
import i2.t;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.HashSet;
import org.json.JSONObject;
import q2.g0;
import x1.r;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1321a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1322b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1323c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f1324d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f1325e;

    public /* synthetic */ b(Object obj, Object obj2, Object obj3, Object obj4, int i6) {
        this.f1321a = i6;
        this.f1322b = obj;
        this.f1323c = obj2;
        this.f1324d = obj3;
        this.f1325e = obj4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String[] strArrF;
        int i6 = this.f1321a;
        Object obj = null;
        Object obj2 = this.f1325e;
        Object obj3 = this.f1323c;
        Object obj4 = this.f1324d;
        Object obj5 = this.f1322b;
        switch (i6) {
            case 0:
                ((Bridge) obj5).lambda$callPluginMethod$0((PluginHandle) obj3, (String) obj4, (PluginCall) obj2);
                break;
            case 1:
                i2.l lVar = (i2.l) obj5;
                Runnable runnable = (Runnable) obj3;
                s sVar = (s) obj4;
                ArrayList arrayList = (ArrayList) obj2;
                if (!v2.a.b(i2.l.class)) {
                    try {
                        Class cls = lVar.f3122e;
                        Object objNewProxyInstance = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new i2.k(lVar, runnable, 0));
                        Object objA = lVar.f3127k.a(sVar, arrayList);
                        Class cls2 = lVar.f3119b;
                        Method method = lVar.f3125i;
                        if (!v2.a.b(lVar)) {
                            try {
                                obj = lVar.f3118a;
                            } catch (Throwable th) {
                                v2.a.a(th, lVar);
                            }
                        }
                        t.j(cls2, method, obj, objA, objNewProxyInstance);
                    } catch (Throwable th2) {
                        v2.a.a(th2, i2.l.class);
                        return;
                    }
                    break;
                }
                break;
            case 2:
                i2.m mVar = (i2.m) obj5;
                Runnable runnable2 = (Runnable) obj3;
                s sVar2 = (s) obj4;
                ArrayList arrayList2 = (ArrayList) obj2;
                if (!v2.a.b(i2.m.class)) {
                    try {
                        Class cls3 = mVar.f3140n;
                        Object objNewProxyInstance2 = Proxy.newProxyInstance(cls3.getClassLoader(), new Class[]{cls3}, new i2.k(mVar, new Object[]{runnable2}, 1));
                        Object objE = mVar.e(sVar2, arrayList2);
                        if (objE != null) {
                            Class cls4 = mVar.f3129b;
                            Method method2 = mVar.f3148v;
                            if (!v2.a.b(mVar)) {
                                try {
                                    obj = mVar.f3128a;
                                } catch (Throwable th3) {
                                    v2.a.a(th3, mVar);
                                }
                            }
                            t.j(cls4, method2, obj, objE, objNewProxyInstance2);
                        }
                    } catch (Throwable th4) {
                        v2.a.a(th4, i2.m.class);
                        return;
                    }
                    break;
                }
                break;
            default:
                JSONObject jSONObject = (JSONObject) obj5;
                String str = (String) obj4;
                o2.f fVar = (o2.f) obj3;
                String str2 = (String) obj2;
                if (!v2.a.b(o2.f.class)) {
                    try {
                        d7.g.f("$buttonText", str);
                        try {
                            String lowerCase = g0.m(r.a()).toLowerCase();
                            d7.g.e("this as java.lang.String).toLowerCase()", lowerCase);
                            float[] fArrC = o2.a.c(lowerCase, jSONObject);
                            String strE = o2.a.e(str, fVar.f4421d, lowerCase);
                            if (fArrC != null && (strArrF = l2.d.f(2, new float[][]{fArrC}, new String[]{strE})) != null) {
                                String str3 = strArrF[0];
                                o2.b.a(str2, str3);
                                if (!d7.g.a(str3, "other")) {
                                    HashSet hashSet = o2.f.f4417e;
                                    o2.a.j(str3, str, fArrC);
                                }
                            }
                        } catch (Exception unused) {
                            return;
                        }
                    } catch (Throwable th5) {
                        v2.a.a(th5, o2.f.class);
                    }
                    break;
                }
                break;
        }
    }

    public /* synthetic */ b(JSONObject jSONObject, String str, o2.f fVar, String str2) {
        this.f1321a = 3;
        this.f1322b = jSONObject;
        this.f1324d = str;
        this.f1323c = fVar;
        this.f1325e = str2;
    }
}
