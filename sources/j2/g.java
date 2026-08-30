package j2;

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
public final class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f3361b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f3360a = new g();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static HashMap f3362c = new HashMap();

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
                f3362c = new HashMap();
                JSONArray jSONArray = tVarK.f4824p;
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
                        if (string != null && (hashSetF = g0.f(jSONArray2)) != null) {
                            f3362c.put(string, hashSetF);
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
