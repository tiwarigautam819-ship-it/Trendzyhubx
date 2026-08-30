package e5;

import android.util.Base64OutputStream;
import com.google.firebase.messaging.b0;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.zip.GZIPOutputStream;
import org.chromium.support_lib_boundary.JsReplyProxyBoundaryInterface;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2395a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2396b;

    public /* synthetic */ c(int i6, Object obj) {
        this.f2395a = i6;
        this.f2396b = obj;
    }

    private final Object a() {
        d dVar = (d) this.f2396b;
        synchronized (dVar) {
            ((b0) dVar.f2397a.get()).l(((o5.b) dVar.f2399c.get()).a(), System.currentTimeMillis());
        }
        return null;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String string;
        switch (this.f2395a) {
            case 0:
                d dVar = (d) this.f2396b;
                synchronized (dVar) {
                    try {
                        b0 b0Var = (b0) dVar.f2397a.get();
                        ArrayList arrayListD = b0Var.d();
                        b0Var.c();
                        JSONArray jSONArray = new JSONArray();
                        for (int i6 = 0; i6 < arrayListD.size(); i6++) {
                            a aVar = (a) arrayListD.get(i6);
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("agent", aVar.f2390a);
                            jSONObject.put("dates", new JSONArray((Collection) aVar.f2391b));
                            jSONArray.put(jSONObject);
                        }
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("heartbeats", jSONArray);
                        jSONObject2.put("version", "2");
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        Base64OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream, 11);
                        try {
                            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(base64OutputStream);
                            try {
                                gZIPOutputStream.write(jSONObject2.toString().getBytes("UTF-8"));
                                gZIPOutputStream.close();
                                base64OutputStream.close();
                                string = byteArrayOutputStream.toString("UTF-8");
                            } finally {
                                try {
                                    break;
                                } catch (Throwable th) {
                                }
                            }
                        } finally {
                            try {
                                break;
                            } catch (Throwable th2) {
                            }
                        }
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
                return string;
            case 1:
                return a();
            default:
                return new k1.f((JsReplyProxyBoundaryInterface) this.f2396b);
        }
    }
}
