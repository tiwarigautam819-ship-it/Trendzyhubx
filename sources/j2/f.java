package j2;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import q2.t;
import q2.w;
import x1.r;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f3357b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static HashSet f3359d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f3356a = new f();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final r6.g f3358c = new r6.g(e.f3355b);

    public static final void b(Bundle bundle) {
        if (v2.a.b(f.class)) {
            return;
        }
        try {
            if (f3357b && bundle != null && !bundle.isEmpty() && f3359d != null) {
                ArrayList arrayList = new ArrayList();
                Set<String> setKeySet = bundle.keySet();
                d7.g.e("parameters.keySet()", setKeySet);
                for (String str : setKeySet) {
                    HashSet hashSet = f3359d;
                    d7.g.c(hashSet);
                    if (!hashSet.contains(str)) {
                        d7.g.e("param", str);
                        arrayList.add(str);
                    }
                }
                int size = arrayList.size();
                int i6 = 0;
                while (i6 < size) {
                    Object obj = arrayList.get(i6);
                    i6++;
                    bundle.remove((String) obj);
                }
                bundle.putString("pm", "1");
            }
        } catch (Throwable th) {
            v2.a.a(th, f.class);
        }
    }

    public final void a() {
        HashSet hashSet;
        if (v2.a.b(this)) {
            return;
        }
        try {
            t tVarK = w.k(r.b(), false);
            if (tVarK == null) {
                return;
            }
            JSONArray jSONArray = tVarK.f4821m;
            HashSet hashSet2 = null;
            if (v2.a.b(this) || jSONArray == null) {
                hashSet = null;
            } else {
                try {
                    if (jSONArray.length() != 0) {
                        hashSet = new HashSet();
                        int length = jSONArray.length();
                        for (int i6 = 0; i6 < length; i6++) {
                            String string = jSONArray.getString(i6);
                            d7.g.e("jsonArray.getString(i)", string);
                            hashSet.add(string);
                        }
                    }
                } catch (Throwable th) {
                    v2.a.a(th, this);
                }
                hashSet = null;
            }
            if (hashSet == null) {
                if (!v2.a.b(this)) {
                    try {
                        hashSet2 = (HashSet) f3358c.getValue();
                    } catch (Throwable th2) {
                        v2.a.a(th2, this);
                    }
                }
                hashSet = hashSet2;
            }
            f3359d = hashSet;
        } catch (Throwable th3) {
            v2.a.a(th3, this);
        }
    }

    public final boolean c(Bundle bundle) {
        if (v2.a.b(this) || bundle == null) {
            return false;
        }
        try {
            if (bundle.containsKey("pm")) {
                if (d7.g.a(bundle.get("pm"), "1")) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            v2.a.a(th, this);
            return false;
        }
    }
}
