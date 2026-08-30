package q2;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final w f4840a = new w();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final List f4841b = s6.h.k("supports_implicit_sdk_logging", "gdpv4_nux_content", "gdpv4_nux_enabled", "android_dialog_configs", "android_sdk_error_categories", "app_events_session_timeout", "app_events_feature_bitmask", "auto_event_mapping_android", "seamless_login", "smart_login_bookmark_icon_url", "smart_login_menu_icon_url", "restrictive_data_filter_params", "aam_rules", "suggested_events_setting", "protected_mode_rules", "auto_log_app_events_default", "auto_log_app_events_enabled", "app_events_config.os_version(" + Build.VERSION.RELEASE + ')');

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ConcurrentHashMap f4842c = new ConcurrentHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final AtomicReference f4843d = new AtomicReference(v.f4835a);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ConcurrentLinkedQueue f4844e = new ConcurrentLinkedQueue();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f4845f;

    public static JSONObject a() {
        Bundle bundle = new Bundle();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(f4841b);
        bundle.putString("fields", TextUtils.join(",", arrayList));
        String str = x1.z.f5942j;
        x1.z zVarU = x1.w.u(null, "app", null);
        zVarU.f5952i = true;
        zVarU.f5948d = bundle;
        JSONObject jSONObject = zVarU.c().f5819d;
        return jSONObject == null ? new JSONObject() : jSONObject;
    }

    public static final t b(String str) {
        return (t) f4842c.get(str);
    }

    public static final HashMap c() {
        JSONObject jSONObject;
        String string = x1.r.a().getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0).getString(String.format("com.facebook.internal.APP_SETTINGS.%s", Arrays.copyOf(new Object[]{x1.r.b()}, 1)), null);
        if (!g0.B(string)) {
            if (string == null) {
                throw new IllegalStateException("Required value was null.");
            }
            try {
                jSONObject = new JSONObject(string);
            } catch (JSONException unused) {
                x1.r rVar = x1.r.f5918a;
                jSONObject = null;
            }
            if (jSONObject != null) {
                return h(jSONObject);
            }
        }
        return null;
    }

    public static final void d() {
        Context contextA = x1.r.a();
        String strB = x1.r.b();
        boolean zB = g0.B(strB);
        v vVar = v.f4838d;
        w wVar = f4840a;
        AtomicReference atomicReference = f4843d;
        if (zB) {
            atomicReference.set(vVar);
            wVar.j();
            return;
        }
        if (f4842c.containsKey(strB)) {
            atomicReference.set(v.f4837c);
            wVar.j();
            return;
        }
        while (true) {
            v vVar2 = v.f4835a;
            v vVar3 = v.f4836b;
            if (atomicReference.compareAndSet(vVar2, vVar3)) {
                break;
            }
            if (atomicReference.get() != vVar2) {
                while (!atomicReference.compareAndSet(vVar, vVar3)) {
                    if (atomicReference.get() != vVar) {
                        wVar.j();
                        return;
                    }
                }
            }
        }
        x1.r.c().execute(new r(contextA, String.format("com.facebook.internal.APP_SETTINGS.%s", Arrays.copyOf(new Object[]{strB}, 1)), strB));
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x0150  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static q2.t e(java.lang.String r45, org.json.JSONObject r46) {
        /*
            Method dump skipped, instruction units count: 709
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: q2.w.e(java.lang.String, org.json.JSONObject):q2.t");
    }

    public static ArrayList f(String str, JSONObject jSONObject) {
        JSONArray jSONArray;
        if (jSONObject != null) {
            try {
                jSONArray = jSONObject.getJSONArray("iap_manual_and_auto_log_dedup_keys");
            } catch (Exception unused) {
            }
        } else {
            jSONArray = null;
        }
        if (jSONArray != null) {
            int length = jSONArray.length();
            for (int i6 = 0; i6 < length; i6++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i6);
                if (d7.g.a(jSONObject2.getString("key"), "prod_keys")) {
                    JSONArray jSONArray2 = jSONObject2.getJSONArray("value");
                    int length2 = jSONArray2.length();
                    for (int i9 = 0; i9 < length2; i9++) {
                        JSONObject jSONObject3 = jSONArray2.getJSONObject(i9);
                        if (d7.g.a(jSONObject3.getString("key"), str)) {
                            JSONArray jSONArray3 = jSONObject3.getJSONArray("value");
                            ArrayList arrayList = new ArrayList();
                            int length3 = jSONArray3.length();
                            for (int i10 = 0; i10 < length3; i10++) {
                                arrayList.add(jSONArray3.getJSONObject(i10).getString("value"));
                            }
                            ArrayList arrayList2 = new ArrayList();
                            arrayList2.addAll(arrayList);
                            return arrayList2;
                        }
                    }
                }
            }
        }
        return null;
    }

    public static ArrayList g(JSONObject jSONObject, boolean z5) {
        JSONArray jSONArray;
        if (jSONObject != null) {
            try {
                jSONArray = jSONObject.getJSONArray("iap_manual_and_auto_log_dedup_keys");
            } catch (Exception unused) {
            }
        } else {
            jSONArray = null;
        }
        if (jSONArray == null) {
            return null;
        }
        int length = jSONArray.length();
        ArrayList arrayList = null;
        for (int i6 = 0; i6 < length; i6++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i6);
            String string = jSONObject2.getString("key");
            if ((!d7.g.a(string, "prod_keys") || !z5) && (!d7.g.a(string, "test_keys") || z5)) {
                JSONArray jSONArray2 = jSONObject2.getJSONArray("value");
                int length2 = jSONArray2.length();
                for (int i9 = 0; i9 < length2; i9++) {
                    JSONObject jSONObject3 = jSONArray2.getJSONObject(i9);
                    String string2 = jSONObject3.getString("key");
                    if (!d7.g.a(string2, "_valueToSum") && !d7.g.a(string2, "fb_currency")) {
                        JSONArray jSONArray3 = jSONObject3.getJSONArray("value");
                        ArrayList arrayList2 = new ArrayList();
                        int length3 = jSONArray3.length();
                        for (int i10 = 0; i10 < length3; i10++) {
                            try {
                                arrayList2.add(jSONArray3.getJSONObject(i10).getString("value"));
                            } catch (Exception unused2) {
                                return null;
                            }
                        }
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(new r6.d(string2, arrayList2));
                    }
                }
            }
        }
        return arrayList;
    }

    public static HashMap h(JSONObject jSONObject) {
        HashMap map = new HashMap();
        if (!jSONObject.isNull("auto_log_app_events_default")) {
            try {
                map.put("auto_log_app_events_default", Boolean.valueOf(jSONObject.getBoolean("auto_log_app_events_default")));
            } catch (JSONException unused) {
                x1.r rVar = x1.r.f5918a;
            }
        }
        if (!jSONObject.isNull("auto_log_app_events_enabled")) {
            try {
                map.put("auto_log_app_events_enabled", Boolean.valueOf(jSONObject.getBoolean("auto_log_app_events_enabled")));
            } catch (JSONException unused2) {
                x1.r rVar2 = x1.r.f5918a;
            }
        }
        if (map.isEmpty()) {
            return null;
        }
        return map;
    }

    public static JSONArray i(String str, JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optJSONArray(str);
        }
        return null;
    }

    public static final t k(String str, boolean z5) {
        d7.g.f("applicationId", str);
        if (!z5) {
            ConcurrentHashMap concurrentHashMap = f4842c;
            if (concurrentHashMap.containsKey(str)) {
                return (t) concurrentHashMap.get(str);
            }
        }
        t tVarE = e(str, a());
        if (str.equals(x1.r.b())) {
            f4843d.set(v.f4837c);
            f4840a.j();
        }
        return tVarE;
    }

    public final synchronized void j() {
        v vVar = (v) f4843d.get();
        if (v.f4835a != vVar && v.f4836b != vVar) {
            t tVar = (t) f4842c.get(x1.r.b());
            Handler handler = new Handler(Looper.getMainLooper());
            if (v.f4838d == vVar) {
                while (true) {
                    ConcurrentLinkedQueue concurrentLinkedQueue = f4844e;
                    if (concurrentLinkedQueue.isEmpty()) {
                        return;
                    } else {
                        handler.post(new u((y1.l) concurrentLinkedQueue.poll()));
                    }
                }
            } else {
                while (true) {
                    ConcurrentLinkedQueue concurrentLinkedQueue2 = f4844e;
                    if (concurrentLinkedQueue2.isEmpty()) {
                        return;
                    } else {
                        handler.post(new u((y1.l) concurrentLinkedQueue2.poll(), tVar));
                    }
                }
            }
        }
    }
}
