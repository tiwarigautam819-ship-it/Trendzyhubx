package com.getcapacitor;

import android.net.Uri;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import org.apache.cordova.l0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MessageHandler {
    private Bridge bridge;
    private l0 cordovaPluginManager;
    private j1.a javaScriptReplyProxy;
    private WebView webView;

    public MessageHandler(Bridge bridge, WebView webView, l0 l0Var) {
        this.bridge = bridge;
        this.webView = webView;
        this.cordovaPluginManager = l0Var;
        if (!y1.g.r("WEB_MESSAGE_LISTENER") || bridge.getConfig().isUsingLegacyBridge()) {
            webView.addJavascriptInterface(this, "androidBridge");
            return;
        }
        try {
            j1.d.b(webView, bridge.getAllowedOriginRules(), new m(this));
        } catch (Exception unused) {
            webView.addJavascriptInterface(this, "androidBridge");
        }
    }

    private void callCordovaPluginMethod(String str, String str2, String str3, String str4) {
        this.bridge.execute(new p(this, str2, str3, str, str4));
    }

    private void callPluginMethod(String str, String str2, String str3, JSObject jSObject) {
        this.bridge.callPluginMethod(str2, str3, new PluginCall(this, str2, str, str3, jSObject));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$callCordovaPluginMethod$2(String str, String str2, String str3, String str4) {
        this.cordovaPluginManager.a(str, str2, str3, str4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lambda$new$0(WebView webView, j1.b bVar, Uri uri, boolean z5, j1.a aVar) {
        if (!z5) {
            Logger.warn("Plugin execution is allowed in Main Frame only");
            return;
        }
        int i6 = bVar.f3336b;
        if (i6 == 0) {
            postMessage(bVar.f3335a);
            this.javaScriptReplyProxy = aVar;
        } else {
            StringBuilder sb = new StringBuilder("Wrong data accessor type detected. ");
            sb.append(i6 != 0 ? i6 != 1 ? "Unknown" : "ArrayBuffer" : "String");
            sb.append(" expected, but got ");
            sb.append("String");
            throw new IllegalStateException(sb.toString());
        }
    }

    private void legacySendResponseMessage(PluginResult pluginResult) {
        final String str = "window.Capacitor.fromNative(" + pluginResult.toString() + ")";
        final WebView webView = this.webView;
        webView.post(new Runnable() { // from class: com.getcapacitor.o
            @Override // java.lang.Runnable
            public final void run() {
                webView.evaluateJavascript(str, null);
            }
        });
    }

    @JavascriptInterface
    public void postMessage(String str) {
        try {
            JSObject jSObject = new JSObject(str);
            String string = jSObject.getString("type");
            boolean z5 = false;
            boolean z8 = string != null;
            boolean z9 = z8 && string.equals("cordova");
            if (z8 && string.equals("js.error")) {
                z5 = true;
            }
            String string2 = jSObject.getString("callbackId");
            if (z9) {
                String string3 = jSObject.getString("service");
                String string4 = jSObject.getString("action");
                String string5 = jSObject.getString("actionArgs");
                Logger.verbose(Logger.tags("Plugin"), "To native (Cordova plugin): callbackId: " + string2 + ", service: " + string3 + ", action: " + string4 + ", actionArgs: " + string5);
                callCordovaPluginMethod(string2, string3, string4, string5);
                return;
            }
            if (z5) {
                Logger.error("JavaScript Error: " + str);
                return;
            }
            String string6 = jSObject.getString("pluginId");
            String string7 = jSObject.getString("methodName");
            JSObject jSObject2 = jSObject.getJSObject("options", new JSObject());
            Logger.verbose(Logger.tags("Plugin"), "To native (Capacitor plugin): callbackId: " + string2 + ", pluginId: " + string6 + ", methodName: " + string7);
            callPluginMethod(string2, string6, string7, jSObject2);
        } catch (Exception e9) {
            Logger.error("Post message error:", e9);
        }
    }

    public void sendResponseMessage(PluginCall pluginCall, PluginResult pluginResult, PluginResult pluginResult2) {
        j1.a aVar;
        try {
            PluginResult pluginResult3 = new PluginResult();
            pluginResult3.put("save", pluginCall.isKeptAlive());
            pluginResult3.put("callbackId", pluginCall.getCallbackId());
            pluginResult3.put("pluginId", pluginCall.getPluginId());
            pluginResult3.put("methodName", pluginCall.getMethodName());
            if (pluginResult2 != null) {
                pluginResult3.put(FirebaseAnalytics.Param.SUCCESS, false);
                pluginResult3.put("error", pluginResult2);
                Logger.debug("Sending plugin error: " + pluginResult3.toString());
            } else {
                pluginResult3.put(FirebaseAnalytics.Param.SUCCESS, true);
                if (pluginResult != null) {
                    pluginResult3.put(MTCoreConstants.Protocol.KEY_DATA, pluginResult);
                }
            }
            if (pluginCall.getCallbackId().equals(PluginCall.CALLBACK_ID_DANGLING)) {
                this.bridge.getApp().fireRestoredResult(pluginResult3);
            } else if (this.bridge.getConfig().isUsingLegacyBridge() || !y1.g.r("WEB_MESSAGE_LISTENER") || (aVar = this.javaScriptReplyProxy) == null) {
                legacySendResponseMessage(pluginResult3);
            } else {
                String string = pluginResult3.toString();
                k1.f fVar = (k1.f) aVar;
                if (!k1.k.f3506c.b()) {
                    throw new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
                }
                fVar.f3499a.postMessage(string);
            }
        } catch (Exception e9) {
            Logger.error("sendResponseMessage: error: " + e9);
        }
        if (pluginCall.isKeptAlive()) {
            return;
        }
        pluginCall.release(this.bridge);
    }
}
