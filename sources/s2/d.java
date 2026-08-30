package s2;

import android.os.Build;
import d7.g;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f5214a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public b f5215b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public JSONArray f5216c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f5217d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f5218e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f5219f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Long f5220g;

    public final boolean a() {
        String str = this.f5219f;
        Long l4 = this.f5220g;
        b bVar = this.f5215b;
        int i6 = bVar == null ? -1 : c.f5213a[bVar.ordinal()];
        return i6 != 1 ? i6 != 2 ? ((i6 != 3 && i6 != 4 && i6 != 5) || str == null || l4 == null) ? false : true : (str == null || this.f5218e == null || l4 == null) ? false : true : (this.f5216c == null || l4 == null) ? false : true;
    }

    public final void b() {
        if (a()) {
            android.support.v4.media.session.a.n(this.f5214a, toString());
        }
    }

    public final String toString() {
        Long l4 = this.f5220g;
        b bVar = this.f5215b;
        int i6 = bVar == null ? -1 : c.f5213a[bVar.ordinal()];
        JSONObject jSONObject = null;
        try {
            if (i6 == 1) {
                JSONObject jSONObject2 = new JSONObject();
                JSONArray jSONArray = this.f5216c;
                if (jSONArray != null) {
                    jSONObject2.put("feature_names", jSONArray);
                }
                if (l4 != null) {
                    jSONObject2.put("timestamp", l4);
                }
                jSONObject = jSONObject2;
            } else if (i6 == 2 || i6 == 3 || i6 == 4 || i6 == 5) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("device_os_version", Build.VERSION.RELEASE);
                jSONObject3.put("device_model", Build.MODEL);
                String str = this.f5217d;
                if (str != null) {
                    jSONObject3.put("app_version", str);
                }
                if (l4 != null) {
                    jSONObject3.put("timestamp", l4);
                }
                String str2 = this.f5218e;
                if (str2 != null) {
                    jSONObject3.put("reason", str2);
                }
                String str3 = this.f5219f;
                if (str3 != null) {
                    jSONObject3.put("callstack", str3);
                }
                if (bVar != null) {
                    jSONObject3.put("type", bVar);
                }
                jSONObject = jSONObject3;
            }
        } catch (JSONException unused) {
        }
        if (jSONObject == null) {
            String string = new JSONObject().toString();
            g.e("JSONObject().toString()", string);
            return string;
        }
        String string2 = jSONObject.toString();
        g.e("params.toString()", string2);
        return string2;
    }
}
