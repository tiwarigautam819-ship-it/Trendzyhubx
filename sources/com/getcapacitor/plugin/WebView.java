package com.getcapacitor.plugin;

import android.content.SharedPreferences;
import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
@CapacitorPlugin
public class WebView extends Plugin {
    public static final String CAP_SERVER_PATH = "serverBasePath";
    public static final String WEBVIEW_PREFS_NAME = "CapWebViewSettings";

    @PluginMethod
    public void getServerBasePath(PluginCall pluginCall) {
        String serverBasePath = this.bridge.getServerBasePath();
        JSObject jSObject = new JSObject();
        jSObject.put("path", serverBasePath);
        pluginCall.resolve(jSObject);
    }

    @PluginMethod
    public void persistServerBasePath(PluginCall pluginCall) {
        String serverBasePath = this.bridge.getServerBasePath();
        SharedPreferences.Editor editorEdit = getContext().getSharedPreferences(WEBVIEW_PREFS_NAME, 0).edit();
        editorEdit.putString(CAP_SERVER_PATH, serverBasePath);
        editorEdit.apply();
        pluginCall.resolve();
    }

    @PluginMethod
    public void setServerAssetPath(PluginCall pluginCall) {
        this.bridge.setServerAssetPath(pluginCall.getString("path"));
        pluginCall.resolve();
    }

    @PluginMethod
    public void setServerBasePath(PluginCall pluginCall) {
        this.bridge.setServerBasePath(pluginCall.getString("path"));
        pluginCall.resolve();
    }
}
