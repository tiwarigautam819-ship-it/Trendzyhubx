package y1;

import android.content.Context;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import x1.z;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final q2.c f6146a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f6147b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ArrayList f6148c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f6149d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6150e;

    public s(q2.c cVar, String str) {
        this.f6146a = cVar;
        this.f6147b = str;
    }

    public final synchronized void a(e eVar) {
        if (v2.a.b(this)) {
            return;
        }
        try {
            d7.g.f("event", eVar);
            if (this.f6148c.size() + this.f6149d.size() >= 1000) {
                this.f6150e++;
            } else {
                this.f6148c.add(eVar);
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }

    public final synchronized void b(boolean z5) {
        if (v2.a.b(this)) {
            return;
        }
        if (!z5) {
            this.f6149d.clear();
            this.f6150e = 0;
            return;
        }
        try {
            this.f6148c.addAll(this.f6149d);
            this.f6149d.clear();
            this.f6150e = 0;
            return;
        } catch (Throwable th) {
            v2.a.a(th, this);
            return;
        }
    }

    public final synchronized int c() {
        if (v2.a.b(this)) {
            return 0;
        }
        try {
            return this.f6148c.size();
        } catch (Throwable th) {
            v2.a.a(th, this);
            return 0;
        }
    }

    public final synchronized List d() {
        if (v2.a.b(this)) {
            return null;
        }
        try {
            ArrayList arrayList = this.f6148c;
            this.f6148c = new ArrayList();
            return arrayList;
        } catch (Throwable th) {
            v2.a.a(th, this);
            return null;
        }
    }

    public final int e(z zVar, Context context, boolean z5, boolean z8) {
        Throwable th;
        Throwable th2;
        if (v2.a.b(this)) {
            return 0;
        }
        try {
            try {
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
        synchronized (this) {
            try {
                int i6 = this.f6150e;
                d2.b.b(this.f6148c);
                this.f6149d.addAll(this.f6148c);
                this.f6148c.clear();
                JSONArray jSONArray = new JSONArray();
                JSONArray jSONArray2 = new JSONArray();
                ArrayList arrayList = this.f6149d;
                int size = arrayList.size();
                int i9 = 0;
                while (i9 < size) {
                    try {
                        Object obj = arrayList.get(i9);
                        i9++;
                        e eVar = (e) obj;
                        if (z5 || !eVar.f6120c) {
                            jSONArray.put(eVar.f6118a);
                            jSONArray2.put(eVar.f6119b);
                        }
                    } catch (Throwable th5) {
                        th2 = th5;
                        throw th2;
                    }
                }
                if (jSONArray.length() != 0) {
                    f(zVar, context, i6, jSONArray, jSONArray2, z8);
                    return jSONArray.length();
                }
                try {
                    return 0;
                } catch (Throwable th6) {
                    th = th6;
                }
            } catch (Throwable th7) {
                th2 = th7;
            }
            th = th;
            v2.a.a(th, this);
            return 0;
        }
    }

    public final void f(z zVar, Context context, int i6, JSONArray jSONArray, JSONArray jSONArray2, boolean z5) {
        JSONObject jSONObject;
        try {
            if (v2.a.b(this)) {
                return;
            }
            try {
                jSONObject = k2.g.a(k2.f.f3529b, this.f6146a, this.f6147b, z5, context);
                if (this.f6150e > 0) {
                    jSONObject.put("num_skipped_events", i6);
                }
            } catch (JSONException unused) {
                jSONObject = new JSONObject();
            }
            zVar.f5947c = jSONObject;
            Bundle bundle = zVar.f5948d;
            String string = jSONArray.toString();
            d7.g.e("events.toString()", string);
            bundle.putString("custom_events", string);
            if (q2.q.b(q2.o.IapLoggingLib5To7)) {
                bundle.putString("operational_parameters", jSONArray2.toString());
            }
            zVar.f5949e = string;
            zVar.f5948d = bundle;
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }
}
