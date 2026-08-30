package m1;

import android.util.Log;
import android.webkit.WebResourceResponse;
import com.google.android.gms.internal.measurement.y4;
import com.lottery.app.GameActivity;
import java.io.InputStream;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4222a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f4223b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c f4224c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final y4 f4225d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f4226e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile boolean f4227f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ConcurrentHashMap f4228g = new ConcurrentHashMap();

    public e(GameActivity gameActivity, String str, boolean z5) {
        boolean z8 = false;
        str = str == null ? "" : str;
        this.f4222a = str;
        this.f4226e = "gc#" + str + "@" + System.identityHashCode(this);
        if (z5 && !str.isEmpty()) {
            z8 = true;
        }
        this.f4223b = z8;
        if (!z8) {
            this.f4224c = null;
            this.f4225d = null;
            Log.d("GameResourceCache", "disabled vendor=" + str + " isCache=" + z5);
            return;
        }
        c cVar = new c(gameActivity, str);
        this.f4224c = cVar;
        this.f4225d = new y4(19);
        Log.d("GameResourceCache", "enabled vendor=" + str + " dir=" + cVar.f4215a);
    }

    public static WebResourceResponse a(String str, String str2, InputStream inputStream, String str3, long j3) {
        HashMap map = new HashMap();
        map.put("Access-Control-Allow-Origin", "*");
        map.put("X-Game-Cache", str3);
        if (j3 >= 0) {
            map.put("Content-Length", String.valueOf(j3));
        }
        return new WebResourceResponse((str == null || str.isEmpty()) ? null : str, (str2 == null || str2.isEmpty()) ? null : str2, 200, "OK", map, inputStream);
    }
}
