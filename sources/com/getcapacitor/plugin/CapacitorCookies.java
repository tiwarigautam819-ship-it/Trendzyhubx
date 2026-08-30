package com.getcapacitor.plugin;

import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;
import java.io.UnsupportedEncodingException;
import java.net.CookieHandler;
import java.net.CookiePolicy;
import java.net.HttpCookie;
import java.net.URLDecoder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
@CapacitorPlugin
public class CapacitorCookies extends Plugin {
    CapacitorCookieManager cookieManager;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getCookies$0(PluginCall pluginCall, String str) {
        String[] strArrSplit = str.substring(1, str.length() - 1).split(";");
        JSObject jSObject = new JSObject();
        for (String str2 : strArrSplit) {
            if (str2.length() > 0) {
                String[] strArrSplit2 = str2.split("=", 2);
                if (strArrSplit2.length == 2) {
                    String strTrim = strArrSplit2[0].trim();
                    String strTrim2 = strArrSplit2[1].trim();
                    try {
                        String strTrim3 = strArrSplit2[0].trim();
                        Charset charset = StandardCharsets.UTF_8;
                        strTrim = URLDecoder.decode(strTrim3, charset.name());
                        strTrim2 = URLDecoder.decode(strArrSplit2[1].trim(), charset.name());
                    } catch (UnsupportedEncodingException unused) {
                    }
                    jSObject.put(strTrim, strTrim2);
                }
            }
        }
        pluginCall.resolve(jSObject);
    }

    @PluginMethod
    public void clearAllCookies(PluginCall pluginCall) {
        this.cookieManager.removeAllCookies();
        pluginCall.resolve();
    }

    @PluginMethod
    public void clearCookies(PluginCall pluginCall) {
        String string = pluginCall.getString("url");
        for (HttpCookie httpCookie : this.cookieManager.getCookies(string)) {
            this.cookieManager.setCookie(string, httpCookie.getName() + "=; Expires=Wed, 31 Dec 2000 23:59:59 GMT");
        }
        pluginCall.resolve();
    }

    @PluginMethod
    public void deleteCookie(PluginCall pluginCall) {
        String string = pluginCall.getString("key");
        if (string == null) {
            pluginCall.reject("Must provide key");
        }
        String string2 = pluginCall.getString("url");
        this.cookieManager.setCookie(string2, string + "=; Expires=Wed, 31 Dec 2000 23:59:59 GMT");
        pluginCall.resolve();
    }

    @PluginMethod
    public void getCookies(final PluginCall pluginCall) {
        this.bridge.eval("document.cookie", new ValueCallback() { // from class: com.getcapacitor.plugin.a
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                CapacitorCookies.lambda$getCookies$0(pluginCall, (String) obj);
            }
        });
    }

    @Override // com.getcapacitor.Plugin
    public void handleOnDestroy() {
        super.handleOnDestroy();
        this.cookieManager.removeSessionCookies();
    }

    @JavascriptInterface
    public boolean isEnabled() {
        return getBridge().getConfig().getPluginConfiguration("CapacitorCookies").getBoolean("enabled", false);
    }

    @Override // com.getcapacitor.Plugin
    public void load() {
        this.bridge.getWebView().addJavascriptInterface(this, "CapacitorCookiesAndroidInterface");
        CapacitorCookieManager capacitorCookieManager = new CapacitorCookieManager(null, CookiePolicy.ACCEPT_ALL, this.bridge);
        this.cookieManager = capacitorCookieManager;
        capacitorCookieManager.removeSessionCookies();
        CookieHandler.setDefault(this.cookieManager);
        super.load();
    }

    @JavascriptInterface
    public void setCookie(String str, String str2) {
        this.cookieManager.setCookie(str, str2);
    }

    @PluginMethod
    public void setCookie(PluginCall pluginCall) {
        String string = pluginCall.getString("key");
        if (string == null) {
            pluginCall.reject("Must provide key");
        }
        String string2 = pluginCall.getString("value");
        if (string2 == null) {
            pluginCall.reject("Must provide value");
        }
        this.cookieManager.setCookie(pluginCall.getString("url"), string, string2, pluginCall.getString("expires", ""), pluginCall.getString("path", "/"));
        pluginCall.resolve();
    }
}
