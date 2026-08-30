package b2;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.lang.ref.WeakReference;
import java.util.Timer;
import java.util.concurrent.RejectedExecutionException;
import org.json.JSONException;
import org.json.JSONObject;
import x1.c0;
import x1.e0;
import x1.r;
import x1.z;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f939e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WeakReference f941b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Timer f942c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f943d = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f940a = new Handler(Looper.getMainLooper());

    static {
        String canonicalName = n.class.getCanonicalName();
        if (canonicalName == null) {
            canonicalName = "";
        }
        f939e = canonicalName;
    }

    public n(Activity activity) {
        this.f941b = new WeakReference(activity);
    }

    public static final /* synthetic */ String a() {
        if (v2.a.b(n.class)) {
            return null;
        }
        try {
            return f939e;
        } catch (Throwable th) {
            v2.a.a(th, n.class);
            return null;
        }
    }

    public final void b(z zVar, String str) {
        String str2 = f939e;
        if (v2.a.b(this) || zVar == null) {
            return;
        }
        try {
            c0 c0VarC = zVar.c();
            try {
                JSONObject jSONObject = c0VarC.f5817b;
                if (jSONObject == null) {
                    Log.e(str2, "Error sending UI component tree to Facebook: " + c0VarC.f5818c);
                    return;
                }
                if ("true".equals(jSONObject.optString(FirebaseAnalytics.Param.SUCCESS))) {
                    o3.a aVar = q2.z.f4846c;
                    o3.a.i(e0.f5840d, str2, "Successfully send UI component tree to server");
                    this.f943d = str;
                }
                if (jSONObject.has("is_app_indexing_enabled")) {
                    boolean z5 = jSONObject.getBoolean("is_app_indexing_enabled");
                    if (v2.a.b(f.class)) {
                        return;
                    }
                    try {
                        f.f918g.set(z5);
                    } catch (Throwable th) {
                        v2.a.a(th, f.class);
                    }
                }
            } catch (JSONException e9) {
                Log.e(str2, "Error decoding server response.", e9);
            }
        } catch (Throwable th2) {
            v2.a.a(th2, this);
        }
    }

    public final void c() {
        if (v2.a.b(this)) {
            return;
        }
        try {
            try {
                r.c().execute(new a2.i(this, 4, new m(this)));
            } catch (RejectedExecutionException e9) {
                Log.e(f939e, "Error scheduling indexing job", e9);
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }
}
