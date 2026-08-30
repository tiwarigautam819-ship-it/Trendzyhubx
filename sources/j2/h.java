package j2;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import org.json.JSONArray;
import org.json.JSONObject;
import q2.g0;
import q2.t;
import q2.w;
import x1.r;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f3364b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f3363a = new h();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static HashSet f3365c = new HashSet();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static HashMap f3366d = new HashMap();

    public static final void b(Bundle bundle, String str) {
        if (v2.a.b(h.class)) {
            return;
        }
        try {
            d7.g.f("eventName", str);
            if (f3364b && bundle != null) {
                if (!f3365c.isEmpty() || f3366d.containsKey(str)) {
                    JSONArray jSONArray = new JSONArray();
                    try {
                        HashSet hashSet = (HashSet) f3366d.get(str);
                        ArrayList arrayList = new ArrayList(bundle.keySet());
                        int size = arrayList.size();
                        int i6 = 0;
                        while (i6 < size) {
                            Object obj = arrayList.get(i6);
                            i6++;
                            String str2 = (String) obj;
                            h hVar = f3363a;
                            d7.g.e("key", str2);
                            if (!v2.a.b(hVar)) {
                                try {
                                    if (f3365c.contains(str2) || (hashSet != null && !hashSet.isEmpty() && hashSet.contains(str2))) {
                                        bundle.remove(str2);
                                        jSONArray.put(str2);
                                    }
                                } catch (Throwable th) {
                                    v2.a.a(th, hVar);
                                }
                            }
                        }
                    } catch (Exception unused) {
                    }
                    if (jSONArray.length() > 0) {
                        bundle.putString("_filteredKey", jSONArray.toString());
                    }
                }
            }
        } catch (Throwable th2) {
            v2.a.a(th2, h.class);
        }
    }

    public final void a() {
        HashSet hashSetF;
        if (v2.a.b(this)) {
            return;
        }
        try {
            t tVarK = w.k(r.b(), false);
            if (tVarK == null) {
                return;
            }
            try {
                f3365c = new HashSet();
                f3366d = new HashMap();
                JSONArray jSONArray = tVarK.f4825q;
                if (jSONArray == null || jSONArray.length() == 0) {
                    return;
                }
                int length = jSONArray.length();
                for (int i6 = 0; i6 < length; i6++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i6);
                    boolean zHas = jSONObject.has("key");
                    boolean zHas2 = jSONObject.has("value");
                    if (zHas && zHas2) {
                        String string = jSONObject.getString("key");
                        JSONArray jSONArray2 = jSONObject.getJSONArray("value");
                        if (jSONArray2 != null && (hashSetF = g0.f(jSONArray2)) != null) {
                            if (string.equals("_MTSDK_Default_")) {
                                f3365c = hashSetF;
                            } else {
                                f3366d.put(string, hashSetF);
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }
}
