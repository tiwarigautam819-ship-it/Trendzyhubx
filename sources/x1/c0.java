package x1;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.Arrays;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f5815e = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HttpURLConnection f5816a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final JSONObject f5817b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final o f5818c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final JSONObject f5819d;

    public c0(z zVar, HttpURLConnection httpURLConnection, JSONObject jSONObject, JSONArray jSONArray, o oVar) {
        d7.g.f("request", zVar);
        this.f5816a = httpURLConnection;
        this.f5817b = jSONObject;
        this.f5818c = oVar;
        this.f5819d = jSONObject;
    }

    public final String toString() {
        String str;
        try {
            Locale locale = Locale.US;
            HttpURLConnection httpURLConnection = this.f5816a;
            str = String.format(locale, "%d", Arrays.copyOf(new Object[]{Integer.valueOf(httpURLConnection != null ? httpURLConnection.getResponseCode() : 200)}, 1));
        } catch (IOException unused) {
            str = "unknown";
        }
        String str2 = "{Response:  responseCode: " + str + ", graphObject: " + this.f5817b + ", error: " + this.f5818c + "}";
        d7.g.e("StringBuilder()\n        …(\"}\")\n        .toString()", str2);
        return str2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c0(z zVar, HttpURLConnection httpURLConnection, String str, JSONObject jSONObject) {
        this(zVar, httpURLConnection, jSONObject, null, null);
        d7.g.f("request", zVar);
        d7.g.f("rawResponse", str);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c0(z zVar, HttpURLConnection httpURLConnection, o oVar) {
        this(zVar, httpURLConnection, null, null, oVar);
        d7.g.f("request", zVar);
    }
}
