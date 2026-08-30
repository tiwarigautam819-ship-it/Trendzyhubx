package w2;

import d7.g;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f5718a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f5719b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Long f5720c;

    public a(String str) {
        Long lValueOf = Long.valueOf(System.currentTimeMillis() / ((long) 1000));
        this.f5720c = lValueOf;
        this.f5719b = str;
        StringBuffer stringBuffer = new StringBuffer("error_log_");
        stringBuffer.append(lValueOf.longValue());
        stringBuffer.append(".json");
        String string = stringBuffer.toString();
        g.e("StringBuffer()\n         …)\n            .toString()", string);
        this.f5718a = string;
    }

    public final String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            Long l4 = this.f5720c;
            if (l4 != null) {
                jSONObject.put("timestamp", l4);
            }
            jSONObject.put("error_message", this.f5719b);
        } catch (JSONException unused) {
            jSONObject = null;
        }
        if (jSONObject == null) {
            return super.toString();
        }
        String string = jSONObject.toString();
        g.e("params.toString()", string);
        return string;
    }
}
