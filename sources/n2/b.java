package n2;

import android.util.Log;
import d7.g;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONObject;
import q2.g0;
import q2.t;
import q2.w;
import x1.r;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f4325b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f4324a = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ArrayList f4326c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final CopyOnWriteArraySet f4327d = new CopyOnWriteArraySet();

    public final String a(String str, String str2) {
        if (!v2.a.b(this)) {
            try {
                try {
                    ArrayList arrayList = new ArrayList(f4326c);
                    int size = arrayList.size();
                    int i6 = 0;
                    while (i6 < size) {
                        Object obj = arrayList.get(i6);
                        i6++;
                        a aVar = (a) obj;
                        if (aVar != null && g.a(str, aVar.f4322a)) {
                            for (String str3 : aVar.f4323b.keySet()) {
                                if (g.a(str2, str3)) {
                                    return (String) aVar.f4323b.get(str3);
                                }
                            }
                        }
                    }
                } catch (Exception e9) {
                    Log.w("n2.b", "getMatchedRuleType failed", e9);
                }
            } catch (Throwable th) {
                v2.a.a(th, this);
                return null;
            }
        }
        return null;
    }

    public final void b() {
        String str;
        CopyOnWriteArraySet copyOnWriteArraySet = f4327d;
        ArrayList arrayList = f4326c;
        if (v2.a.b(this)) {
            return;
        }
        try {
            t tVarK = w.k(r.b(), false);
            if (tVarK != null && (str = tVarK.f4820l) != null && str.length() != 0) {
                JSONObject jSONObject = new JSONObject(str);
                arrayList.clear();
                copyOnWriteArraySet.clear();
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                    if (jSONObject2 != null) {
                        JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("restrictive_param");
                        g.e("key", next);
                        HashMap map = new HashMap();
                        a aVar = new a();
                        aVar.f4322a = next;
                        aVar.f4323b = map;
                        if (jSONObjectOptJSONObject != null) {
                            aVar.f4323b = g0.i(jSONObjectOptJSONObject);
                            arrayList.add(aVar);
                        }
                        if (jSONObject2.has("process_event_name")) {
                            copyOnWriteArraySet.add(next);
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
