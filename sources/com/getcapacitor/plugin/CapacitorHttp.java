package com.getcapacitor.plugin;

import android.webkit.JavascriptInterface;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;
import com.getcapacitor.annotation.Permission;
import com.getcapacitor.plugin.util.CapacitorHttpUrlConnection;
import com.getcapacitor.plugin.util.HttpRequestHandler;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
@CapacitorPlugin(permissions = {@Permission(alias = "HttpWrite", strings = {"android.permission.WRITE_EXTERNAL_STORAGE"}), @Permission(alias = "HttpRead", strings = {"android.permission.READ_EXTERNAL_STORAGE"})})
public class CapacitorHttp extends Plugin {
    private final Map<Runnable, PluginCall> activeRequests = new ConcurrentHashMap();
    private final ExecutorService executor = Executors.newCachedThreadPool();

    private void http(final PluginCall pluginCall, final String str) {
        Runnable runnable = new Runnable() { // from class: com.getcapacitor.plugin.CapacitorHttp.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    try {
                        pluginCall.resolve(HttpRequestHandler.request(pluginCall, str, CapacitorHttp.this.getBridge()));
                    } catch (Exception e9) {
                        pluginCall.reject(e9.getLocalizedMessage(), e9.getClass().getSimpleName(), e9);
                    }
                } finally {
                    CapacitorHttp.this.activeRequests.remove(this);
                }
            }
        };
        if (this.executor.isShutdown()) {
            pluginCall.reject("Failed to execute request - Http Plugin was shutdown");
        } else {
            this.activeRequests.put(runnable, pluginCall);
            this.executor.submit(runnable);
        }
    }

    @PluginMethod
    public void delete(PluginCall pluginCall) {
        http(pluginCall, "DELETE");
    }

    @PluginMethod
    public void get(PluginCall pluginCall) {
        http(pluginCall, "GET");
    }

    @Override // com.getcapacitor.Plugin
    public void handleOnDestroy() {
        super.handleOnDestroy();
        for (Map.Entry<Runnable, PluginCall> entry : this.activeRequests.entrySet()) {
            entry.getKey();
            PluginCall value = entry.getValue();
            if (value.getData().has("activeCapacitorHttpUrlConnection")) {
                try {
                    ((CapacitorHttpUrlConnection) value.getData().get("activeCapacitorHttpUrlConnection")).disconnect();
                    value.getData().remove("activeCapacitorHttpUrlConnection");
                } catch (Exception unused) {
                }
            }
            getBridge().releaseCall(value);
        }
        this.activeRequests.clear();
        this.executor.shutdownNow();
    }

    @JavascriptInterface
    public boolean isEnabled() {
        return getBridge().getConfig().getPluginConfiguration("CapacitorHttp").getBoolean("enabled", false);
    }

    @Override // com.getcapacitor.Plugin
    public void load() {
        this.bridge.getWebView().addJavascriptInterface(this, "CapacitorHttpAndroidInterface");
        super.load();
    }

    @PluginMethod
    public void patch(PluginCall pluginCall) {
        http(pluginCall, "PATCH");
    }

    @PluginMethod
    public void post(PluginCall pluginCall) {
        http(pluginCall, "POST");
    }

    @PluginMethod
    public void put(PluginCall pluginCall) {
        http(pluginCall, "PUT");
    }

    @PluginMethod
    public void request(PluginCall pluginCall) {
        http(pluginCall, null);
    }
}
