package b2;

import android.app.Activity;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.TimerTask;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import x1.r;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m extends TimerTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ n f938a;

    public m(n nVar) {
        this.f938a = nVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        WeakReference weakReference;
        try {
            boolean zB = v2.a.b(n.class);
            Handler handler = null;
            n nVar = this.f938a;
            if (zB) {
                weakReference = null;
            } else {
                try {
                    weakReference = nVar.f941b;
                } catch (Throwable th) {
                    v2.a.a(th, n.class);
                    weakReference = null;
                }
            }
            Activity activity = (Activity) weakReference.get();
            View viewI = k2.e.i(activity);
            if (activity != null && viewI != null) {
                String simpleName = activity.getClass().getSimpleName();
                f fVar = f.f912a;
                boolean z5 = false;
                if (!v2.a.b(f.class)) {
                    try {
                        z5 = f.f918g.get();
                    } catch (Throwable th2) {
                        v2.a.a(th2, f.class);
                    }
                }
                if (z5) {
                    FutureTask futureTask = new FutureTask(new l(viewI));
                    if (!v2.a.b(n.class)) {
                        try {
                            handler = nVar.f940a;
                        } catch (Throwable th3) {
                            v2.a.a(th3, n.class);
                        }
                    }
                    handler.post(futureTask);
                    String str = "";
                    try {
                        str = (String) futureTask.get(1L, TimeUnit.SECONDS);
                    } catch (Exception e9) {
                        Log.e(n.a(), "Failed to take screenshot.", e9);
                    }
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("screenname", simpleName);
                        jSONObject.put("screenshot", str);
                        JSONArray jSONArray = new JSONArray();
                        jSONArray.put(c2.e.c(viewI));
                        jSONObject.put("view", jSONArray);
                    } catch (JSONException unused) {
                        Log.e(n.a(), "Failed to create JSONObject");
                    }
                    String string = jSONObject.toString();
                    d7.g.e("viewTree.toString()", string);
                    if (v2.a.b(n.class)) {
                        return;
                    }
                    try {
                        if (!v2.a.b(nVar)) {
                            try {
                                r.c().execute(new a2.i(string, 5, nVar));
                            } catch (Throwable th4) {
                                v2.a.a(th4, nVar);
                            }
                        }
                    } catch (Throwable th5) {
                        v2.a.a(th5, n.class);
                    }
                }
            }
        } catch (Exception e10) {
            Log.e(n.a(), "UI Component tree indexing failure!", e10);
        }
    }
}
