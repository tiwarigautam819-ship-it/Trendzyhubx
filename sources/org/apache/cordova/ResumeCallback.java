package org.apache.cordova;

import android.util.Log;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class ResumeCallback extends d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f4486d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final l0 f4487e;

    public ResumeCallback(String str, l0 l0Var) {
        super("resumecallback", null);
        this.f4486d = str;
        this.f4487e = l0Var;
    }

    @Override // org.apache.cordova.d
    public void sendPluginResult(m0 m0Var) {
        synchronized (this) {
            try {
                if (this.f4498c) {
                    m0Var.a();
                    return;
                }
                this.f4498c = true;
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("pluginServiceName", this.f4486d);
                    jSONObject2.put("pluginStatus", m0.f4547g[m0Var.f4548a]);
                    jSONObject.put("action", "resume");
                    jSONObject.put("pendingResult", jSONObject2);
                } catch (JSONException unused) {
                    Log.e("CordovaResumeCallback", "Unable to create resume object for Activity Result");
                }
                m0 m0Var2 = new m0(jSONObject, 2);
                ArrayList arrayList = new ArrayList();
                arrayList.add(m0Var2);
                arrayList.add(m0Var);
                ((CoreAndroid) this.f4487e.c(CoreAndroid.PLUGIN_NAME)).sendResumeEvent(new m0(arrayList));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
