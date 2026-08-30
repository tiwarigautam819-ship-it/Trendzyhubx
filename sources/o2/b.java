package o2;

import android.content.SharedPreferences;
import android.view.View;
import d7.g;
import java.util.LinkedHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import q2.g0;
import s6.r;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static SharedPreferences f4405c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f4403a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final LinkedHashMap f4404b = new LinkedHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final AtomicBoolean f4406d = new AtomicBoolean(false);

    public static final void a(String str, String str2) {
        if (v2.a.b(b.class)) {
            return;
        }
        try {
            g.f("predictedEvent", str2);
            if (!f4406d.get()) {
                f4403a.c();
            }
            LinkedHashMap linkedHashMap = f4404b;
            linkedHashMap.put(str, str2);
            SharedPreferences sharedPreferences = f4405c;
            if (sharedPreferences != null) {
                sharedPreferences.edit().putString("SUGGESTED_EVENTS_HISTORY", g0.F(r.x(linkedHashMap))).apply();
            } else {
                g.i("shardPreferences");
                throw null;
            }
        } catch (Throwable th) {
            v2.a.a(th, b.class);
        }
    }

    public static final String b(View view, String str) {
        if (v2.a.b(b.class)) {
            return null;
        }
        try {
            g.f("text", str);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("text", str);
                JSONArray jSONArray = new JSONArray();
                while (view != null) {
                    jSONArray.put(view.getClass().getSimpleName());
                    view = c2.e.h(view);
                }
                jSONObject.put("classname", jSONArray);
            } catch (JSONException unused) {
            }
            return g0.M(jSONObject.toString());
        } catch (Throwable th) {
            v2.a.a(th, b.class);
            return null;
        }
    }

    public final void c() {
        String str = "";
        if (v2.a.b(this)) {
            return;
        }
        try {
            AtomicBoolean atomicBoolean = f4406d;
            if (atomicBoolean.get()) {
                return;
            }
            SharedPreferences sharedPreferences = x1.r.a().getSharedPreferences("com.facebook.internal.SUGGESTED_EVENTS_HISTORY", 0);
            g.e("getApplicationContext()\n…RE, Context.MODE_PRIVATE)", sharedPreferences);
            f4405c = sharedPreferences;
            LinkedHashMap linkedHashMap = f4404b;
            String string = sharedPreferences.getString("SUGGESTED_EVENTS_HISTORY", "");
            if (string != null) {
                str = string;
            }
            linkedHashMap.putAll(g0.E(str));
            atomicBoolean.set(true);
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }
}
