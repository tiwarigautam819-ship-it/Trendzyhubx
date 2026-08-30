package com.engagelab.privates.inapp.business.helper;

import android.webkit.JavascriptInterface;
import com.engagelab.privates.common.f0;
import com.engagelab.privates.common.log.MTCommonLog;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class WebInterface {
    private f0 mBaseInAppWrapper;

    public WebInterface(f0 f0Var) {
        this.mBaseInAppWrapper = f0Var;
    }

    @JavascriptInterface
    public void postMessage(String str) {
        try {
            MTCommonLog.d("BaseInAppWrapper", "WebInAppWrapper postMessage=" + str);
            MTCommonLog.d("BaseInAppWrapper", "WebInAppWrapper mBaseInAppWrapper=" + this.mBaseInAppWrapper);
            JSONObject jSONObject = new JSONObject(str);
            this.mBaseInAppWrapper.a(jSONObject.optInt("type"), jSONObject.optString("action"), 1);
        } catch (Throwable th) {
            MTCommonLog.d("BaseInAppWrapper", "postMessage Throwable=" + th);
        }
    }
}
