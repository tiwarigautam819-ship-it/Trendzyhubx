package d2;

import d7.g;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
import q2.g0;
import q2.t;
import q2.w;
import x1.r;
import y1.e;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f2255b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f2254a = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ArrayList f2256c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final HashSet f2257d = new HashSet();

    public static final void b(ArrayList arrayList) {
        if (v2.a.b(b.class)) {
            return;
        }
        try {
            g.f("events", arrayList);
            if (f2255b) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    if (f2257d.contains(((e) it.next()).f6122e)) {
                        it.remove();
                    }
                }
            }
        } catch (Throwable th) {
            v2.a.a(th, b.class);
        }
    }

    public final synchronized void a() {
        if (v2.a.b(this)) {
            return;
        }
        try {
            t tVarK = w.k(r.b(), false);
            if (tVarK == null) {
                return;
            }
            String str = tVarK.f4820l;
            if (str != null && str.length() > 0) {
                JSONObject jSONObject = new JSONObject(str);
                f2256c.clear();
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                    if (jSONObject2 != null) {
                        if (jSONObject2.optBoolean("is_deprecated_event")) {
                            HashSet hashSet = f2257d;
                            g.e("key", next);
                            hashSet.add(next);
                        } else {
                            JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("deprecated_param");
                            g.e("key", next);
                            ArrayList arrayList = new ArrayList();
                            a aVar = new a();
                            aVar.f2252a = next;
                            aVar.f2253b = arrayList;
                            if (jSONArrayOptJSONArray != null) {
                                aVar.f2253b = g0.g(jSONArrayOptJSONArray);
                            }
                            f2256c.add(aVar);
                        }
                    }
                }
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }
}
