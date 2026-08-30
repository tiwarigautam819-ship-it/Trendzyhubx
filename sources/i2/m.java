package i2;

import com.google.android.gms.internal.measurement.y4;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m implements h {
    public static m I;
    public final Method A;
    public final Method B;
    public final Method C;
    public final Method D;
    public final Method E;
    public final Method F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f3128a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Class f3129b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Class f3130c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Class f3131d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Class f3132e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Class f3133f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Class f3134g;
    public final Class h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Class f3135i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Class f3136j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Class f3137k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Class f3138l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Class f3139m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Class f3140n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Class f3141o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Method f3142p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Method f3143q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Method f3144r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final Method f3145s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final Method f3146t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Method f3147u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final Method f3148v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final Method f3149w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final Method f3150x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final Method f3151y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final Method f3152z;
    public static final j G = new j(1);
    public static final AtomicBoolean H = new AtomicBoolean(false);
    public static final ConcurrentHashMap J = new ConcurrentHashMap();
    public static final ConcurrentHashMap K = new ConcurrentHashMap();
    public static final ConcurrentHashMap L = new ConcurrentHashMap();

    public m(Object obj, Class cls, Class cls2, Class cls3, Class cls4, Class cls5, Class cls6, Class cls7, Class cls8, Class cls9, Class cls10, Class cls11, Class cls12, Class cls13, Class cls14, Method method, Method method2, Method method3, Method method4, Method method5, Method method6, Method method7, Method method8, Method method9, Method method10, Method method11, Method method12, Method method13, Method method14, Method method15, Method method16, Method method17) {
        this.f3128a = obj;
        this.f3129b = cls;
        this.f3130c = cls2;
        this.f3131d = cls3;
        this.f3132e = cls4;
        this.f3133f = cls5;
        this.f3134g = cls6;
        this.h = cls7;
        this.f3135i = cls8;
        this.f3136j = cls9;
        this.f3137k = cls10;
        this.f3138l = cls11;
        this.f3139m = cls12;
        this.f3140n = cls13;
        this.f3141o = cls14;
        this.f3142p = method;
        this.f3143q = method2;
        this.f3144r = method3;
        this.f3145s = method4;
        this.f3146t = method5;
        this.f3147u = method6;
        this.f3148v = method7;
        this.f3149w = method8;
        this.f3150x = method9;
        this.f3151y = method10;
        this.f3152z = method11;
        this.A = method12;
        this.B = method13;
        this.C = method14;
        this.D = method15;
        this.E = method16;
        this.F = method17;
    }

    public static final /* synthetic */ String b() {
        if (v2.a.b(m.class)) {
            return null;
        }
        return "i2.m";
    }

    @Override // i2.h
    public final void a(s sVar, Runnable runnable) {
        if (v2.a.b(this)) {
            return;
        }
        try {
            c(new androidx.fragment.app.e(this, sVar, runnable, 4));
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }

    public final void c(Runnable runnable) {
        if (v2.a.b(this)) {
            return;
        }
        try {
            if (H.get()) {
                runnable.run();
                return;
            }
            Class cls = this.f3139m;
            if (v2.a.b(this)) {
                return;
            }
            try {
                Object objNewProxyInstance = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new k(this, new Object[]{runnable}, 1));
                Class cls2 = this.f3129b;
                Method method = this.E;
                Object obj = null;
                if (!v2.a.b(this)) {
                    try {
                        obj = this.f3128a;
                    } catch (Throwable th) {
                        v2.a.a(th, this);
                    }
                }
                t.j(cls2, method, obj, objNewProxyInstance);
            } catch (Throwable th2) {
                v2.a.a(th2, this);
            }
        } catch (Throwable th3) {
            v2.a.a(th3, this);
        }
    }

    public final String d(String str) {
        if (!v2.a.b(this)) {
            try {
                Pattern patternCompile = Pattern.compile("jsonString='(.*?)'");
                d7.g.e("compile(...)", patternCompile);
                Matcher matcher = patternCompile.matcher(str);
                d7.g.e("matcher(...)", matcher);
                y4 y4Var = !matcher.find(0) ? null : new y4(matcher, str);
                if (y4Var != null) {
                    if (((k7.d) y4Var.f1991c) == null) {
                        y4Var.f1991c = new k7.d(y4Var);
                    }
                    k7.d dVar = (k7.d) y4Var.f1991c;
                    d7.g.c(dVar);
                    return (String) (1 <= s6.h.j(dVar) ? dVar.get(1) : null);
                }
            } catch (Throwable th) {
                v2.a.a(th, this);
                return null;
            }
        }
        return null;
    }

    public final Object e(s sVar, ArrayList arrayList) {
        Class cls = this.f3136j;
        Class cls2 = this.f3138l;
        if (!v2.a.b(this)) {
            try {
                if (!arrayList.isEmpty()) {
                    ArrayList arrayList2 = new ArrayList();
                    int size = arrayList.size();
                    int i6 = 0;
                    while (i6 < size) {
                        Object obj = arrayList.get(i6);
                        i6++;
                        Object objJ = t.j(cls2, this.A, t.j(cls2, this.C, t.j(cls2, this.B, t.j(this.f3133f, this.f3152z, null, new Object[0]), (String) obj), sVar.f3179a), new Object[0]);
                        if (objJ != null) {
                            arrayList2.add(objJ);
                        }
                    }
                    return t.j(cls, this.f3150x, t.j(cls, this.f3151y, t.j(this.h, this.f3149w, null, new Object[0]), arrayList2), new Object[0]);
                }
            } catch (Throwable th) {
                v2.a.a(th, this);
                return null;
            }
        }
        return null;
    }

    public final void f(Object[] objArr, Object[] objArr2) {
        if (v2.a.b(this) || objArr2 == null) {
            return;
        }
        try {
            if (objArr2.length == 0) {
                return;
            }
            if (d7.g.a(t.j(this.f3134g, this.F, objArr2[0], new Object[0]), 0)) {
                H.set(true);
                if (objArr.length == 0) {
                    return;
                }
                Object obj = objArr[0];
                if (obj instanceof Runnable) {
                    ((Runnable) obj).run();
                }
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }

    public final void g(Object[] objArr, Object[] objArr2) {
        String strD;
        if (v2.a.b(this)) {
            return;
        }
        try {
            Object objP = s6.f.p(0, objArr);
            Object objP2 = objArr2 != null ? s6.f.p(1, objArr2) : null;
            if (objP2 != null && (objP2 instanceof List)) {
                Iterator it = ((List) objP2).iterator();
                while (it.hasNext()) {
                    try {
                        Object objJ = t.j(this.f3131d, this.D, it.next(), new Object[0]);
                        String str = objJ instanceof String ? (String) objJ : null;
                        if (str != null && (strD = d(str)) != null) {
                            JSONObject jSONObject = new JSONObject(strD);
                            if (jSONObject.has("productId")) {
                                String string = jSONObject.getString("productId");
                                ConcurrentHashMap concurrentHashMap = L;
                                d7.g.e("productId", string);
                                concurrentHashMap.put(string, jSONObject);
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
                if (objP == null || !(objP instanceof Runnable)) {
                    return;
                }
                ((Runnable) objP).run();
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }

    public final void h(Object[] objArr, Object[] objArr2) {
        Throwable th;
        Object objP;
        if (!v2.a.b(this)) {
            try {
                Object objP2 = s6.f.p(0, objArr);
                if (objP2 != null && (objP2 instanceof s)) {
                    Object objP3 = s6.f.p(1, objArr);
                    if (objP3 instanceof Runnable) {
                        if (objArr2 != null) {
                            try {
                                objP = s6.f.p(1, objArr2);
                            } catch (Throwable th2) {
                                th = th2;
                                v2.a.a(th, this);
                            }
                        } else {
                            objP = null;
                        }
                        if (objP != null && (objP instanceof List)) {
                            ArrayList arrayList = new ArrayList();
                            Iterator it = ((List) objP).iterator();
                            while (it.hasNext()) {
                                try {
                                    Object objJ = t.j(this.f3132e, this.f3147u, it.next(), new Object[0]);
                                    String str = objJ instanceof String ? (String) objJ : null;
                                    if (str != null) {
                                        JSONObject jSONObject = new JSONObject(str);
                                        if (jSONObject.has("productId")) {
                                            String string = jSONObject.getString("productId");
                                            if (!L.containsKey(string)) {
                                                d7.g.e("productId", string);
                                                arrayList.add(string);
                                            }
                                            if (objP2 == s.INAPP) {
                                                ConcurrentHashMap concurrentHashMap = J;
                                                d7.g.e("productId", string);
                                                concurrentHashMap.put(string, jSONObject);
                                            } else {
                                                ConcurrentHashMap concurrentHashMap2 = K;
                                                d7.g.e("productId", string);
                                                concurrentHashMap2.put(string, jSONObject);
                                            }
                                        }
                                    }
                                } catch (Exception unused) {
                                }
                            }
                            try {
                                if (arrayList.isEmpty()) {
                                    ((Runnable) objP3).run();
                                } else {
                                    s sVar = (s) objP2;
                                    Runnable runnable = (Runnable) objP3;
                                    if (!v2.a.b(this)) {
                                        try {
                                            try {
                                                c(new com.getcapacitor.b(this, runnable, sVar, arrayList, 2));
                                            } catch (Throwable th3) {
                                                th = th3;
                                                v2.a.a(th, this);
                                            }
                                        } catch (Throwable th4) {
                                            th = th4;
                                        }
                                    }
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                th = th;
                                v2.a.a(th, this);
                            }
                        }
                    }
                }
            } catch (Throwable th6) {
                th = th6;
            }
        }
    }

    public final void i(Object[] objArr, Object[] objArr2) {
        Throwable th;
        Object objP;
        Object objP2;
        if (!v2.a.b(this)) {
            try {
                objP = s6.f.p(0, objArr);
            } catch (Throwable th2) {
                th = th2;
            }
            if (objP != null && (objP instanceof s)) {
                Object objP3 = s6.f.p(1, objArr);
                if (objP3 instanceof Runnable) {
                    if (objArr2 != null) {
                        try {
                            objP2 = s6.f.p(1, objArr2);
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    } else {
                        objP2 = null;
                    }
                    if (objP2 != null && (objP2 instanceof List)) {
                        ArrayList arrayList = new ArrayList();
                        Iterator it = ((List) objP2).iterator();
                        while (it.hasNext()) {
                            Object objJ = t.j(this.f3130c, this.f3142p, it.next(), new Object[0]);
                            String str = objJ instanceof String ? (String) objJ : null;
                            if (str != null) {
                                JSONObject jSONObject = new JSONObject(str);
                                if (jSONObject.has("productId")) {
                                    String string = jSONObject.getString("productId");
                                    if (!L.containsKey(string)) {
                                        d7.g.e("productId", string);
                                        arrayList.add(string);
                                    }
                                    if (objP == s.INAPP) {
                                        ConcurrentHashMap concurrentHashMap = J;
                                        d7.g.e("productId", string);
                                        concurrentHashMap.put(string, jSONObject);
                                    } else {
                                        ConcurrentHashMap concurrentHashMap2 = K;
                                        d7.g.e("productId", string);
                                        concurrentHashMap2.put(string, jSONObject);
                                    }
                                }
                            }
                        }
                        try {
                            if (arrayList.isEmpty()) {
                                ((Runnable) objP3).run();
                                return;
                            }
                            s sVar = (s) objP;
                            Runnable runnable = (Runnable) objP3;
                            if (!v2.a.b(this)) {
                                try {
                                    try {
                                        c(new com.getcapacitor.b(this, runnable, sVar, arrayList, 2));
                                        return;
                                    } catch (Throwable th4) {
                                        th = th4;
                                        v2.a.a(th, this);
                                        return;
                                    }
                                } catch (Throwable th5) {
                                    th = th5;
                                }
                            }
                        } catch (Throwable th6) {
                            th = th6;
                        }
                        th = th;
                        v2.a.a(th, this);
                    }
                }
            }
        }
    }
}
