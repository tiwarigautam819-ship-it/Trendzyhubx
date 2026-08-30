package o2;

import android.app.Activity;
import d7.g;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
import q2.t;
import q2.w;
import x1.r;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f4409a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final AtomicBoolean f4410b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final LinkedHashSet f4411c = new LinkedHashSet();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final LinkedHashSet f4412d = new LinkedHashSet();

    public static final synchronized void a() {
        if (v2.a.b(d.class)) {
            return;
        }
        try {
            r.c().execute(new i2.c(8));
        } catch (Throwable th) {
            v2.a.a(th, d.class);
        }
    }

    public static final void d(Activity activity) {
        if (v2.a.b(d.class)) {
            return;
        }
        try {
            if (f4410b.get()) {
                boolean z5 = false;
                if (!v2.a.b(a.class)) {
                    try {
                        z5 = a.f4402f;
                    } catch (Throwable th) {
                        v2.a.a(th, a.class);
                    }
                }
                if (z5) {
                    if (f4411c.isEmpty()) {
                        if (!f4412d.isEmpty()) {
                        }
                    }
                    HashMap map = e.f4413d;
                    l2.e.w(activity);
                    return;
                }
            }
            HashMap map2 = e.f4413d;
            l2.e.x(activity);
        } catch (Exception unused) {
        } catch (Throwable th2) {
            v2.a.a(th2, d.class);
        }
    }

    public final void b() {
        String str;
        if (v2.a.b(this)) {
            return;
        }
        try {
            t tVarK = w.k(r.b(), false);
            if (tVarK != null && (str = tVarK.f4819k) != null) {
                c(str);
                if (f4411c.isEmpty() && f4412d.isEmpty()) {
                    return;
                }
                File fileD = l2.d.d();
                if (fileD == null) {
                    return;
                }
                a.f(fileD);
                WeakReference weakReference = k2.d.f3526l;
                Activity activity = weakReference != null ? (Activity) weakReference.get() : null;
                if (activity != null) {
                    d(activity);
                }
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }

    public final void c(String str) {
        if (v2.a.b(this)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("production_events")) {
                JSONArray jSONArray = jSONObject.getJSONArray("production_events");
                int length = jSONArray.length();
                for (int i6 = 0; i6 < length; i6++) {
                    LinkedHashSet linkedHashSet = f4411c;
                    String string = jSONArray.getString(i6);
                    g.e("jsonArray.getString(i)", string);
                    linkedHashSet.add(string);
                }
            }
            if (jSONObject.has("eligible_for_prediction_events")) {
                JSONArray jSONArray2 = jSONObject.getJSONArray("eligible_for_prediction_events");
                int length2 = jSONArray2.length();
                for (int i9 = 0; i9 < length2; i9++) {
                    LinkedHashSet linkedHashSet2 = f4412d;
                    String string2 = jSONArray2.getString(i9);
                    g.e("jsonArray.getString(i)", string2);
                    linkedHashSet2.add(string2);
                }
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }
}
