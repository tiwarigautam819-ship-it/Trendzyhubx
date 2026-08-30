package m1;

import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f4211a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f4212b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f4213c;

    public static b a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            b bVar = new b();
            jSONObject.optString("url", "");
            bVar.f4211a = jSONObject.optString("mime", "");
            bVar.f4212b = jSONObject.optString("enc", "");
            bVar.f4213c = jSONObject.optLong("savedAt", 0L);
            return bVar;
        } catch (Exception unused) {
            return null;
        }
    }
}
