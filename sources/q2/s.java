package q2;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.push.constants.MTPushConstants;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicBoolean f4805a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ConcurrentLinkedQueue f4806b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ConcurrentHashMap f4807c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Long f4808d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static o5.c f4809e;

    static {
        String str;
        d7.d dVarA = d7.l.a(s.class);
        LinkedHashMap linkedHashMap = d7.d.f2291d;
        Class cls = dVarA.f2292a;
        if (!cls.isAnonymousClass()) {
            if (cls.isLocalClass()) {
                String simpleName = cls.getSimpleName();
                Method enclosingMethod = cls.getEnclosingMethod();
                if (enclosingMethod != null) {
                    k7.g.M(simpleName, enclosingMethod.getName() + '$');
                } else {
                    Constructor<?> enclosingConstructor = cls.getEnclosingConstructor();
                    if (enclosingConstructor != null) {
                        k7.g.M(simpleName, enclosingConstructor.getName() + '$');
                    } else {
                        int iA = k7.g.A(simpleName, '$', 0, 6);
                        if (iA != -1) {
                            d7.g.e("substring(...)", simpleName.substring(iA + 1, simpleName.length()));
                        }
                    }
                }
            } else if (cls.isArray()) {
                Class<?> componentType = cls.getComponentType();
                if (componentType.isPrimitive() && (str = (String) linkedHashMap.get(componentType.getName())) != null) {
                    str.concat("Array");
                }
            }
        }
        f4805a = new AtomicBoolean(false);
        f4806b = new ConcurrentLinkedQueue();
        f4807c = new ConcurrentHashMap();
    }

    public static JSONObject a() {
        Bundle bundle = new Bundle();
        bundle.putString(MTPushConstants.PlatformNode.KEY_PLATFORM, "android");
        x1.r rVar = x1.r.f5918a;
        bundle.putString("sdk_version", "18.1.3");
        bundle.putString("fields", "gatekeepers");
        String str = x1.z.f5942j;
        x1.z zVarU = x1.w.u(null, String.format("app/%s", Arrays.copyOf(new Object[]{"mobile_sdk_gk"}, 1)), null);
        zVarU.f5948d = bundle;
        JSONObject jSONObject = zVarU.c().f5819d;
        return jSONObject == null ? new JSONObject() : jSONObject;
    }

    public static final boolean b(String str, String str2, boolean z5) {
        HashMap map;
        ConcurrentHashMap concurrentHashMap;
        Boolean bool;
        d7.g.f("name", str);
        ArrayList arrayList = null;
        c(null);
        ConcurrentHashMap concurrentHashMap2 = f4807c;
        if (concurrentHashMap2.containsKey(str2)) {
            o5.c cVar = f4809e;
            if (cVar != null && (concurrentHashMap = (ConcurrentHashMap) ((ConcurrentHashMap) cVar.f4446b).get(str2)) != null) {
                arrayList = new ArrayList(concurrentHashMap.size());
                Iterator it = concurrentHashMap.entrySet().iterator();
                while (it.hasNext()) {
                    arrayList.add((r2.a) ((Map.Entry) it.next()).getValue());
                }
            }
            int i6 = 0;
            if (arrayList != null) {
                map = new HashMap();
                int size = arrayList.size();
                while (i6 < size) {
                    Object obj = arrayList.get(i6);
                    i6++;
                    r2.a aVar = (r2.a) obj;
                    map.put(aVar.f4961a, Boolean.valueOf(aVar.f4962b));
                }
            } else {
                HashMap map2 = new HashMap();
                JSONObject jSONObject = (JSONObject) concurrentHashMap2.get(str2);
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    d7.g.e("key", next);
                    map2.put(next, Boolean.valueOf(jSONObject.optBoolean(next)));
                }
                o5.c cVar2 = f4809e;
                if (cVar2 == null) {
                    cVar2 = new o5.c(24);
                }
                ArrayList arrayList2 = new ArrayList(map2.size());
                for (Map.Entry entry : map2.entrySet()) {
                    arrayList2.add(new r2.a((String) entry.getKey(), ((Boolean) entry.getValue()).booleanValue()));
                }
                ConcurrentHashMap concurrentHashMap3 = new ConcurrentHashMap();
                int size2 = arrayList2.size();
                while (i6 < size2) {
                    Object obj2 = arrayList2.get(i6);
                    i6++;
                    r2.a aVar2 = (r2.a) obj2;
                    concurrentHashMap3.put(aVar2.f4961a, aVar2);
                }
                ((ConcurrentHashMap) cVar2.f4446b).put(str2, concurrentHashMap3);
                f4809e = cVar2;
                map = map2;
            }
        } else {
            map = new HashMap();
        }
        return (map.containsKey(str) && (bool = (Boolean) map.get(str)) != null) ? bool.booleanValue() : z5;
    }

    public static final synchronized void c(p pVar) {
        if (pVar != null) {
            try {
                f4806b.add(pVar);
            } catch (Throwable th) {
                throw th;
            }
        }
        String strB = x1.r.b();
        Long l4 = f4808d;
        if (l4 != null && System.currentTimeMillis() - l4.longValue() < 3600000 && f4807c.containsKey(strB)) {
            e();
            return;
        }
        Context contextA = x1.r.a();
        String str = String.format("com.facebook.internal.APP_GATEKEEPERS.%s", Arrays.copyOf(new Object[]{strB}, 1));
        JSONObject jSONObject = null;
        String string = contextA.getSharedPreferences("com.facebook.internal.preferences.APP_GATEKEEPERS", 0).getString(str, null);
        if (!g0.B(string)) {
            try {
                jSONObject = new JSONObject(string);
            } catch (JSONException unused) {
                x1.r rVar = x1.r.f5918a;
            }
            if (jSONObject != null) {
                d(strB, jSONObject);
            }
        }
        Executor executorC = x1.r.c();
        if (f4805a.compareAndSet(false, true)) {
            executorC.execute(new r(strB, contextA, str));
        }
    }

    public static final synchronized JSONObject d(String str, JSONObject jSONObject) {
        JSONObject jSONObject2;
        try {
            d7.g.f("applicationId", str);
            jSONObject2 = (JSONObject) f4807c.get(str);
            if (jSONObject2 == null) {
                jSONObject2 = new JSONObject();
            }
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(MTCoreConstants.Protocol.KEY_DATA);
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray != null ? jSONArrayOptJSONArray.optJSONObject(0) : null;
            if (jSONObjectOptJSONObject == null) {
                jSONObjectOptJSONObject = new JSONObject();
            }
            JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("gatekeepers");
            if (jSONArrayOptJSONArray2 == null) {
                jSONArrayOptJSONArray2 = new JSONArray();
            }
            int length = jSONArrayOptJSONArray2.length();
            for (int i6 = 0; i6 < length; i6++) {
                try {
                    JSONObject jSONObject3 = jSONArrayOptJSONArray2.getJSONObject(i6);
                    jSONObject2.put(jSONObject3.getString("key"), jSONObject3.getBoolean("value"));
                } catch (JSONException unused) {
                    x1.r rVar = x1.r.f5918a;
                }
            }
            f4807c.put(str, jSONObject2);
        } catch (Throwable th) {
            throw th;
        }
        return jSONObject2;
    }

    public static void e() {
        Handler handler = new Handler(Looper.getMainLooper());
        while (true) {
            ConcurrentLinkedQueue concurrentLinkedQueue = f4806b;
            if (concurrentLinkedQueue.isEmpty()) {
                return;
            }
            p pVar = (p) concurrentLinkedQueue.poll();
            if (pVar != null) {
                handler.post(new a2.g(14, pVar));
            }
        }
    }
}
