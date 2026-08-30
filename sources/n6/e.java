package n6;

import a2.i;
import android.util.Log;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Pattern;
import org.json.JSONObject;
import r7.p;
import r7.q;
import r7.r;
import y1.j;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p f4369a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final r f4370b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ExecutorService f4371c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile String f4372d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile String f4373e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static volatile String f4374f;

    static {
        Pattern pattern = p.f5088e;
        f4369a = j.i("application/json; charset=utf-8");
        f4370b = new r(new q());
        f4371c = Executors.newSingleThreadExecutor();
    }

    public static void a(String str, String str2, String str3) {
        f4372d = str;
        f4373e = str2;
        f4374f = str3;
        Log.d("GA4Reporter", "init: measurementId=" + str + ", clientId=" + str3 + ", apiSecret=" + str2);
    }

    public static void b(String str, JSONObject jSONObject) {
        if (f4372d == null || f4373e == null || f4374f == null) {
            Log.w("GA4Reporter", "logEvent ignored, GA4Reporter not initialized");
        } else {
            f4371c.execute(new i(str, 15, jSONObject));
        }
    }
}
