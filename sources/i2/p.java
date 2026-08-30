package i2;

import android.content.SharedPreferences;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p f3163a = new p();

    /* JADX WARN: Removed duplicated region for block: B:13:0x0018 A[Catch: all -> 0x001e, TRY_LEAVE, TryCatch #4 {, blocks: (B:4:0x0003, B:13:0x0018, B:11:0x0012, B:8:0x000e), top: B:98:0x0003, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x016f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static i2.l c(android.content.Context r22) {
        /*
            Method dump skipped, instruction units count: 438
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: i2.p.c(android.content.Context):i2.l");
    }

    public static r d() {
        Class clsD = t.d("com.android.billingclient.api.SkuDetailsParams");
        Class clsD2 = t.d("com.android.billingclient.api.SkuDetailsParams$Builder");
        if (clsD == null || clsD2 == null) {
            return null;
        }
        Method methodF = t.f(clsD, "newBuilder", new Class[0]);
        Method methodF2 = t.f(clsD2, "setType", String.class);
        Method methodF3 = t.f(clsD2, "setSkusList", List.class);
        Method methodF4 = t.f(clsD2, "build", new Class[0]);
        if (methodF == null || methodF2 == null || methodF3 == null || methodF4 == null) {
            return null;
        }
        r rVar = new r(clsD, clsD2, methodF, methodF2, methodF3, methodF4);
        if (!v2.a.b(r.class)) {
            try {
                r.h = rVar;
            } catch (Throwable th) {
                v2.a.a(th, r.class);
            }
        }
        if (v2.a.b(r.class)) {
            return null;
        }
        try {
            return r.h;
        } catch (Throwable th2) {
            v2.a.a(th2, r.class);
            return null;
        }
    }

    public static final void e() {
        if (v2.a.b(p.class)) {
            return;
        }
        try {
            SharedPreferences sharedPreferences = x1.r.a().getSharedPreferences("com.facebook.internal.SKU_DETAILS", 0);
            SharedPreferences sharedPreferences2 = x1.r.a().getSharedPreferences("com.facebook.internal.PURCHASE", 0);
            sharedPreferences.edit().clear().apply();
            sharedPreferences2.edit().clear().apply();
            x1.r.a().getSharedPreferences("com.facebook.internal.iap.PRODUCT_DETAILS", 0).edit().clear().apply();
        } catch (Throwable th) {
            v2.a.a(th, p.class);
        }
    }

    public static final void f(ConcurrentHashMap concurrentHashMap, ConcurrentHashMap concurrentHashMap2, boolean z5, String str, int i6, boolean z8) {
        if (v2.a.b(p.class)) {
            return;
        }
        try {
            d7.g.f("purchaseDetailsMap", concurrentHashMap);
            d7.g.f("skuDetailsMap", concurrentHashMap2);
            a1.a.n(i6, "billingClientVersion");
            p pVar = f3163a;
            LinkedHashMap linkedHashMapB = pVar.b(pVar.a(concurrentHashMap, z5), concurrentHashMap2, str);
            if (v2.a.b(pVar)) {
                return;
            }
            try {
                for (Map.Entry entry : linkedHashMapB.entrySet()) {
                    k2.k.e((String) entry.getKey(), (String) entry.getValue(), z5, i6, z8);
                }
            } catch (Throwable th) {
                v2.a.a(th, pVar);
            }
        } catch (Throwable th2) {
            v2.a.a(th2, p.class);
        }
    }

    public static ConcurrentHashMap g() {
        if (v2.a.b(l.class)) {
            return null;
        }
        try {
            return l.f3115o;
        } catch (Throwable th) {
            v2.a.a(th, l.class);
            return null;
        }
    }

    public static ConcurrentHashMap i() {
        if (v2.a.b(l.class)) {
            return null;
        }
        try {
            return l.f3117q;
        } catch (Throwable th) {
            v2.a.a(th, l.class);
            return null;
        }
    }

    public static ConcurrentHashMap j() {
        if (v2.a.b(l.class)) {
            return null;
        }
        try {
            return l.f3116p;
        } catch (Throwable th) {
            v2.a.a(th, l.class);
            return null;
        }
    }

    public static final void k() {
        if (v2.a.b(p.class)) {
            return;
        }
        try {
            SharedPreferences sharedPreferences = x1.r.a().getSharedPreferences("com.facebook.internal.iap.IAP_CACHE_GPBLV2V7", 0);
            long jMax = Math.max(Math.max(sharedPreferences.getLong("TIME_OF_LAST_LOGGED_PURCHASE", 0L), sharedPreferences.getLong("TIME_OF_LAST_LOGGED_SUBSCRIPTION", 0L)), 1736528400000L);
            CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
            SharedPreferences sharedPreferences2 = x1.r.a().getSharedPreferences("com.facebook.internal.iap.PRODUCT_DETAILS", 0);
            if (sharedPreferences2.contains("PURCHASE_DETAILS_SET")) {
                Collection stringSet = sharedPreferences2.getStringSet("PURCHASE_DETAILS_SET", new HashSet());
                copyOnWriteArraySet.addAll(stringSet == null ? new HashSet() : stringSet);
                Iterator it = copyOnWriteArraySet.iterator();
                while (it.hasNext()) {
                    try {
                        long j3 = Long.parseLong((String) k7.g.J((String) it.next(), new String[]{";"}, 2, 2).get(1)) * 1000;
                        if (Math.abs(String.valueOf(j3).length() - 13) < Math.log10(1000.0d)) {
                            jMax = Math.max(jMax, j3);
                        }
                    } catch (Exception unused) {
                    }
                }
            }
            sharedPreferences.edit().putLong("TIME_OF_LAST_LOGGED_SUBSCRIPTION", jMax).apply();
            sharedPreferences.edit().putLong("TIME_OF_LAST_LOGGED_PURCHASE", jMax).apply();
            e();
        } catch (Throwable th) {
            v2.a.a(th, p.class);
        }
    }

    public static final void l() {
        if (v2.a.b(p.class)) {
            return;
        }
        try {
            try {
                x1.r.a().getSharedPreferences("com.facebook.internal.iap.IAP_CACHE_GPBLV2V7", 0).edit().putBoolean("APP_HAS_BEEN_LAUNCHED_KEY", true).apply();
            } catch (Exception unused) {
            }
        } catch (Throwable th) {
            v2.a.a(th, p.class);
        }
    }

    public static final void m() {
        if (v2.a.b(p.class)) {
            return;
        }
        try {
            l();
            try {
                SharedPreferences sharedPreferences = x1.r.a().getSharedPreferences("com.facebook.internal.iap.IAP_CACHE_GPBLV2V7", 0);
                long jCurrentTimeMillis = System.currentTimeMillis();
                sharedPreferences.edit().putLong("TIME_OF_LAST_LOGGED_SUBSCRIPTION", jCurrentTimeMillis).apply();
                sharedPreferences.edit().putLong("TIME_OF_LAST_LOGGED_PURCHASE", jCurrentTimeMillis).apply();
            } catch (Exception unused) {
            }
        } catch (Throwable th) {
            v2.a.a(th, p.class);
        }
    }

    public HashMap a(Map map, boolean z5) {
        if (v2.a.b(this)) {
            return null;
        }
        try {
            d7.g.f("purchaseDetailsMap", map);
            SharedPreferences sharedPreferences = x1.r.a().getSharedPreferences("com.facebook.internal.iap.IAP_CACHE_GPBLV2V7", 0);
            long j3 = z5 ? sharedPreferences.getLong("TIME_OF_LAST_LOGGED_SUBSCRIPTION", 1736528400000L) : sharedPreferences.getLong("TIME_OF_LAST_LOGGED_PURCHASE", 1736528400000L);
            long jMax = 0;
            for (Map.Entry entry : s6.r.x(map).entrySet()) {
                String str = (String) entry.getKey();
                JSONObject jSONObject = (JSONObject) entry.getValue();
                try {
                    if (jSONObject.has("purchaseToken") && jSONObject.has("purchaseTime")) {
                        long j8 = jSONObject.getLong("purchaseTime");
                        if (j8 <= j3) {
                            map.remove(str);
                        }
                        jMax = Math.max(jMax, j8);
                    }
                } catch (Exception unused) {
                }
            }
            if (jMax >= j3) {
                if (z5) {
                    sharedPreferences.edit().putLong("TIME_OF_LAST_LOGGED_SUBSCRIPTION", jMax).apply();
                } else {
                    sharedPreferences.edit().putLong("TIME_OF_LAST_LOGGED_PURCHASE", jMax).apply();
                }
            }
            return new HashMap(map);
        } catch (Throwable th) {
            v2.a.a(th, this);
            return null;
        }
    }

    public LinkedHashMap b(HashMap map, Map map2, String str) {
        if (v2.a.b(this)) {
            return null;
        }
        try {
            d7.g.f("purchaseDetailsMap", map);
            d7.g.f("skuDetailsMap", map2);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry entry : map.entrySet()) {
                String str2 = (String) entry.getKey();
                JSONObject jSONObject = (JSONObject) entry.getValue();
                JSONObject jSONObject2 = (JSONObject) map2.get(str2);
                try {
                    jSONObject.put("packageName", str);
                    if (jSONObject2 != null) {
                        String string = jSONObject.toString();
                        d7.g.e("purchaseDetail.toString()", string);
                        String string2 = jSONObject2.toString();
                        d7.g.e("skuDetail.toString()", string2);
                        linkedHashMap.put(string, string2);
                    }
                } catch (Exception unused) {
                }
            }
            return linkedHashMap;
        } catch (Throwable th) {
            v2.a.a(th, this);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0014 A[Catch: all -> 0x0019, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:12:0x0014, B:10:0x000f, B:7:0x000b), top: B:20:0x0001, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized i2.l h(android.content.Context r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            java.lang.Class<i2.l> r0 = i2.l.class
            boolean r1 = v2.a.b(r0)     // Catch: java.lang.Throwable -> L19
            r2 = 0
            if (r1 == 0) goto Lb
            goto L12
        Lb:
            i2.l r2 = i2.l.f3113m     // Catch: java.lang.Throwable -> Le
            goto L12
        Le:
            r1 = move-exception
            v2.a.a(r1, r0)     // Catch: java.lang.Throwable -> L19
        L12:
            if (r2 != 0) goto L1b
            i2.l r2 = c(r4)     // Catch: java.lang.Throwable -> L19
            goto L1b
        L19:
            r4 = move-exception
            goto L1d
        L1b:
            monitor-exit(r3)
            return r2
        L1d:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L19
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: i2.p.h(android.content.Context):i2.l");
    }
}
