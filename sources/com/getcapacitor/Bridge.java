package com.getcapacitor;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.webkit.ServiceWorkerClient;
import android.webkit.ServiceWorkerController;
import android.webkit.ValueCallback;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.fragment.app.c0;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.getcapacitor.ServerPath;
import com.getcapacitor.android.R;
import com.getcapacitor.annotation.CapacitorPlugin;
import com.getcapacitor.annotation.Permission;
import com.getcapacitor.cordova.MockCordovaInterfaceImpl;
import com.getcapacitor.cordova.MockCordovaWebViewImpl;
import com.getcapacitor.plugin.CapacitorCookies;
import com.getcapacitor.plugin.CapacitorHttp;
import com.getcapacitor.util.HostMask;
import com.getcapacitor.util.InternalUtils;
import com.getcapacitor.util.PermissionHelper;
import com.getcapacitor.util.WebColor;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.cordova.l0;
import org.apache.cordova.t;
import org.json.JSONException;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class Bridge {
    private static final String BUNDLE_LAST_PLUGIN_CALL_METHOD_NAME_KEY = "capacitorLastActivityPluginMethod";
    private static final String BUNDLE_LAST_PLUGIN_ID_KEY = "capacitorLastActivityPluginId";
    private static final String BUNDLE_PLUGIN_CALL_BUNDLE_KEY = "capacitorLastPluginCallBundle";
    private static final String BUNDLE_PLUGIN_CALL_OPTIONS_SAVED_KEY = "capacitorLastPluginCallOptions";
    public static final String CAPACITOR_CONTENT_START = "/_capacitor_content_";
    public static final String CAPACITOR_FILE_START = "/_capacitor_file_";

    @Deprecated
    public static final String CAPACITOR_HTTPS_INTERCEPTOR_START = "/_capacitor_https_interceptor_";
    public static final String CAPACITOR_HTTPS_SCHEME = "https";
    public static final String CAPACITOR_HTTP_INTERCEPTOR_START = "/_capacitor_http_interceptor_";
    public static final String CAPACITOR_HTTP_INTERCEPTOR_URL_PARAM = "u";
    public static final String CAPACITOR_HTTP_SCHEME = "http";
    public static final int DEFAULT_ANDROID_WEBVIEW_VERSION = 60;
    public static final int DEFAULT_HUAWEI_WEBVIEW_VERSION = 10;
    public static final String DEFAULT_WEB_ASSET_DIR = "public";
    private static final String LAST_BINARY_VERSION_CODE = "lastBinaryVersionCode";
    private static final String LAST_BINARY_VERSION_NAME = "lastBinaryVersionName";
    private static final String MINIMUM_ANDROID_WEBVIEW_ERROR = "System WebView is not supported";
    public static final int MINIMUM_ANDROID_WEBVIEW_VERSION = 55;
    public static final int MINIMUM_HUAWEI_WEBVIEW_VERSION = 10;
    private static final String PERMISSION_PREFS_NAME = "PluginPermStates";
    private Set<String> allowedOriginRules;
    private App app;
    private HostMask appAllowNavigationMask;
    private String appUrl;
    private String appUrlConfig;
    private ArrayList<String> authorities;
    private Boolean canInjectJS;
    private CapConfig config;
    private final g.m context;
    public final MockCordovaInterfaceImpl cordovaInterface;
    private t cordovaWebView;
    private final c0 fragment;
    private final HandlerThread handlerThread;
    private final List<Class<? extends Plugin>> initialPlugins;
    private Uri intentUri;
    private WebViewLocalServer localServer;
    private String localUrl;
    private ArrayList<String> miscJSFileInjections;
    private final MessageHandler msgHandler;
    private PluginCall pluginCallForLastActivity;
    private final List<Plugin> pluginInstances;
    private Map<String, PluginHandle> plugins;
    private org.apache.cordova.q preferences;
    private RouteProcessor routeProcessor;
    private Map<String, PluginCall> savedCalls;
    private Map<String, LinkedList<String>> savedPermissionCallIds;
    private ServerPath serverPath;
    private Handler taskHandler;
    private final WebView webView;
    private BridgeWebViewClient webViewClient;
    private List<WebViewListener> webViewListeners;

    public /* synthetic */ Bridge(g.m mVar, ServerPath serverPath, c0 c0Var, WebView webView, List list, List list2, MockCordovaInterfaceImpl mockCordovaInterfaceImpl, l0 l0Var, org.apache.cordova.q qVar, CapConfig capConfig, int i6) {
        this(mVar, serverPath, c0Var, webView, list, list2, mockCordovaInterfaceImpl, l0Var, qVar, capConfig);
    }

    private int extractWebViewMajorVersion(PackageManager packageManager, String str) {
        try {
            return Integer.parseInt(InternalUtils.getPackageInfo(packageManager, str).versionName.split("\\.")[0]);
        } catch (Exception e9) {
            Logger.warn(String.format("Unable to get package info for '%s' with err '%s'", str, e9));
            return 0;
        }
    }

    private JSInjector getJSInjector() {
        try {
            String globalJS = JSExport.getGlobalJS(this.context, this.config.isLoggingEnabled(), isDevMode());
            String bridgeJS = JSExport.getBridgeJS(this.context);
            String pluginJS = JSExport.getPluginJS(this.plugins.values());
            String cordovaJS = JSExport.getCordovaJS(this.context);
            String cordovaPluginJS = JSExport.getCordovaPluginJS(this.context);
            String cordovaPluginsFileJS = JSExport.getCordovaPluginsFileJS(this.context);
            String str = "window.WEBVIEW_SERVER_URL = '" + this.localUrl + "';";
            String miscFileJS = JSExport.getMiscFileJS(this.miscJSFileInjections, this.context);
            this.miscJSFileInjections = new ArrayList<>();
            this.canInjectJS = Boolean.FALSE;
            return new JSInjector(globalJS, bridgeJS, pluginJS, cordovaJS, cordovaPluginJS, cordovaPluginsFileJS, str, miscFileJS);
        } catch (Exception e9) {
            Logger.error("Unable to export Capacitor JS. App will not function!", e9);
            return null;
        }
    }

    private String getLegacyPluginName(Class<? extends Plugin> cls) {
        NativePlugin nativePlugin = (NativePlugin) cls.getAnnotation(NativePlugin.class);
        if (nativePlugin != null) {
            return nativePlugin.name();
        }
        Logger.error("Plugin doesn't have the @CapacitorPlugin annotation. Please add it");
        return null;
    }

    private void initWebView() {
        WebSettings settings = this.webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setGeolocationEnabled(true);
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (this.config.isMixedContentAllowed()) {
            settings.setMixedContentMode(0);
        }
        String appendedUserAgentString = this.config.getAppendedUserAgentString();
        if (appendedUserAgentString != null) {
            settings.setUserAgentString(settings.getUserAgentString() + " " + appendedUserAgentString);
        }
        String overriddenUserAgentString = this.config.getOverriddenUserAgentString();
        if (overriddenUserAgentString != null) {
            settings.setUserAgentString(overriddenUserAgentString);
        }
        String backgroundColor = this.config.getBackgroundColor();
        if (backgroundColor != null) {
            try {
                this.webView.setBackgroundColor(WebColor.parseColor(backgroundColor));
            } catch (IllegalArgumentException unused) {
                Logger.debug("WebView background color not applied");
            }
        }
        settings.setDisplayZoomControls(false);
        settings.setBuiltInZoomControls(this.config.isZoomableWebView());
        if (this.config.isInitialFocus()) {
            this.webView.requestFocusFromTouch();
        }
        WebView.setWebContentsDebuggingEnabled(this.config.isWebContentsDebuggingEnabled());
        this.appUrlConfig = getServerUrl();
        String host = getHost();
        this.authorities.add(host);
        String scheme = getScheme();
        String str = scheme + "://" + host;
        this.localUrl = str;
        if (this.appUrlConfig != null) {
            try {
                this.authorities.add(new URL(this.appUrlConfig).getAuthority());
                String str2 = this.appUrlConfig;
                this.localUrl = str2;
                this.appUrl = str2;
            } catch (Exception e9) {
                Logger.error("Provided server url is invalid: " + e9.getMessage());
                return;
            }
        } else {
            this.appUrl = str;
            if (!scheme.equals(CAPACITOR_HTTP_SCHEME) && !scheme.equals(CAPACITOR_HTTPS_SCHEME)) {
                this.appUrl = x.h(new StringBuilder(), this.appUrl, "/");
            }
        }
        String startPath = this.config.getStartPath();
        if (startPath == null || startPath.trim().isEmpty()) {
            return;
        }
        this.appUrl = x.h(new StringBuilder(), this.appUrl, startPath);
    }

    private boolean isNewBinary() {
        String string;
        String str;
        PackageInfo packageInfo;
        SharedPreferences sharedPreferences = getContext().getSharedPreferences(com.getcapacitor.plugin.WebView.WEBVIEW_PREFS_NAME, 0);
        String string2 = sharedPreferences.getString(LAST_BINARY_VERSION_CODE, null);
        String string3 = sharedPreferences.getString(LAST_BINARY_VERSION_NAME, null);
        try {
            packageInfo = InternalUtils.getPackageInfo(getContext().getPackageManager(), getContext().getPackageName());
            string = Integer.toString((int) (Build.VERSION.SDK_INT >= 28 ? a0.a.b(packageInfo) : packageInfo.versionCode));
        } catch (Exception e9) {
            e = e9;
            string = "";
        }
        try {
            str = packageInfo.versionName;
        } catch (Exception e10) {
            e = e10;
            Logger.error("Unable to get package info", e);
            str = "";
        }
        if (string.equals(string2) && str.equals(string3)) {
            return false;
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString(LAST_BINARY_VERSION_CODE, string);
        editorEdit.putString(LAST_BINARY_VERSION_NAME, str);
        editorEdit.putString(com.getcapacitor.plugin.WebView.CAP_SERVER_PATH, "");
        editorEdit.apply();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$callPluginMethod$0(PluginHandle pluginHandle, String str, PluginCall pluginCall) {
        try {
            pluginHandle.invoke(str, pluginCall);
            if (pluginCall.isKeptAlive()) {
                saveCall(pluginCall);
            }
        } catch (InvalidPluginMethodException e9) {
            e = e9;
            Logger.error("Unable to execute plugin method", e);
        } catch (PluginLoadException e10) {
            e = e10;
            Logger.error("Unable to execute plugin method", e);
        } catch (Exception e11) {
            Logger.error("Serious error executing plugin", e11);
            throw new RuntimeException(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$eval$1(String str, ValueCallback valueCallback) {
        this.webView.evaluateJavascript(str, valueCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$reload$6() {
        this.webView.loadUrl(this.appUrl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setServerAssetPath$5() {
        this.webView.loadUrl(this.appUrl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setServerBasePath$4() {
        this.webView.loadUrl(this.appUrl);
    }

    private void loadWebView() {
        JSInjector jSInjector;
        String string;
        boolean zIsHTML5Mode = this.config.isHTML5Mode();
        JSInjector jSInjector2 = getJSInjector();
        if (y1.g.r("DOCUMENT_START_SCRIPT")) {
            try {
                j1.d.a(this.webView, jSInjector2.getScriptString(), Collections.singleton(Uri.parse(this.appUrl).buildUpon().path(null).fragment(null).clearQuery().build().toString()));
                jSInjector = null;
            } catch (IllegalArgumentException unused) {
                Logger.warn("Invalid url, using fallback");
                jSInjector = jSInjector2;
            }
        } else {
            jSInjector = jSInjector2;
        }
        WebViewLocalServer webViewLocalServer = new WebViewLocalServer(this.context, this, jSInjector, this.authorities, zIsHTML5Mode);
        this.localServer = webViewLocalServer;
        webViewLocalServer.hostAssets(DEFAULT_WEB_ASSET_DIR);
        Logger.debug("Loading app at " + this.appUrl);
        this.webView.setWebChromeClient(new BridgeWebChromeClient(this));
        this.webView.setWebViewClient(this.webViewClient);
        if (Build.VERSION.SDK_INT >= 24 && this.config.isResolveServiceWorkerRequests()) {
            ServiceWorkerController.getInstance().setServiceWorkerClient(new ServiceWorkerClient() { // from class: com.getcapacitor.Bridge.1
                public WebResourceResponse shouldInterceptRequest(WebResourceRequest webResourceRequest) {
                    return Bridge.this.getLocalServer().shouldInterceptRequest(webResourceRequest);
                }
            });
        }
        if (!isDeployDisabled() && !isNewBinary() && (string = getContext().getSharedPreferences(com.getcapacitor.plugin.WebView.WEBVIEW_PREFS_NAME, 0).getString(com.getcapacitor.plugin.WebView.CAP_SERVER_PATH, null)) != null && !string.isEmpty() && new File(string).exists()) {
            setServerBasePath(string);
        }
        if (!isMinimumWebViewInstalled()) {
            String errorUrl = getErrorUrl();
            if (errorUrl != null) {
                this.webView.loadUrl(errorUrl);
                return;
            }
            Logger.error(MINIMUM_ANDROID_WEBVIEW_ERROR);
        }
        ServerPath serverPath = this.serverPath;
        if (serverPath == null) {
            this.webView.loadUrl(this.appUrl);
        } else if (serverPath.getType() == ServerPath.PathType.ASSET_PATH) {
            setServerAssetPath(this.serverPath.getPath());
        } else {
            setServerBasePath(this.serverPath.getPath());
        }
    }

    private void logInvalidPluginException(Class<? extends Plugin> cls) {
        Logger.error("NativePlugin " + cls.getName() + " is invalid. Ensure the @CapacitorPlugin annotation exists on the plugin class and the class extends Plugin");
    }

    private void logPluginLoadException(Class<? extends Plugin> cls, Exception exc) {
        Logger.error("NativePlugin " + cls.getName() + " failed to load", exc);
    }

    private String pluginId(Class<? extends Plugin> cls) {
        String strPluginName = pluginName(cls);
        String simpleName = cls.getSimpleName();
        if (strPluginName == null) {
            return null;
        }
        if (strPluginName.equals("")) {
            strPluginName = simpleName;
        }
        Logger.debug("Registering plugin instance: ".concat(strPluginName));
        return strPluginName;
    }

    private String pluginName(Class<? extends Plugin> cls) {
        CapacitorPlugin capacitorPlugin = (CapacitorPlugin) cls.getAnnotation(CapacitorPlugin.class);
        return capacitorPlugin == null ? getLegacyPluginName(cls) : capacitorPlugin.name();
    }

    private void registerAllPlugins() {
        registerPlugin(CapacitorCookies.class);
        registerPlugin(com.getcapacitor.plugin.WebView.class);
        registerPlugin(CapacitorHttp.class);
        Iterator<Class<? extends Plugin>> it = this.initialPlugins.iterator();
        while (it.hasNext()) {
            registerPlugin(it.next());
        }
        Iterator<Plugin> it2 = this.pluginInstances.iterator();
        while (it2.hasNext()) {
            registerPluginInstance(it2.next());
        }
    }

    private void setAllowedOriginRules() {
        String[] allowNavigation = this.config.getAllowNavigation();
        String host = getHost();
        this.allowedOriginRules.add(getScheme() + "://" + host);
        if (getServerUrl() != null) {
            this.allowedOriginRules.add(getServerUrl());
        }
        if (allowNavigation != null) {
            for (String str : allowNavigation) {
                if (str.startsWith(CAPACITOR_HTTP_SCHEME)) {
                    this.allowedOriginRules.add(str);
                } else {
                    this.allowedOriginRules.add("https://".concat(str));
                }
            }
            this.authorities.addAll(Arrays.asList(allowNavigation));
        }
        this.appAllowNavigationMask = HostMask.Parser.parse(allowNavigation);
    }

    public void addWebViewListener(WebViewListener webViewListener) {
        this.webViewListeners.add(webViewListener);
    }

    public void callPluginMethod(String str, String str2, PluginCall pluginCall) {
        PluginCall pluginCall2;
        Exception exc;
        try {
            PluginHandle plugin = getPlugin(str);
            try {
                if (plugin == null) {
                    Logger.error("unable to find plugin : " + str);
                    pluginCall.errorCallback("unable to find plugin : " + str);
                    return;
                }
                if (Logger.shouldLog()) {
                    Logger.verbose("callback: " + pluginCall.getCallbackId() + ", pluginId: " + plugin.getId() + ", methodName: " + str2 + ", methodData: " + pluginCall.getData().toString());
                }
                pluginCall2 = pluginCall;
                try {
                    this.taskHandler.post(new b(this, plugin, str2, pluginCall2, 0));
                    return;
                } catch (Exception e9) {
                    e = e9;
                }
            } catch (Exception e10) {
                exc = e10;
                pluginCall2 = pluginCall;
            }
        } catch (Exception e11) {
            e = e11;
            pluginCall2 = pluginCall;
        }
        exc = e;
        Logger.error(Logger.tags("callPluginMethod"), "error : " + exc, null);
        pluginCall2.errorCallback(exc.toString());
    }

    public void eval(final String str, final ValueCallback<String> valueCallback) {
        new Handler(this.context.getMainLooper()).post(new Runnable() { // from class: com.getcapacitor.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f1326a.lambda$eval$1(str, valueCallback);
            }
        });
    }

    public void execute(Runnable runnable) {
        this.taskHandler.post(runnable);
    }

    public void executeOnMainThread(Runnable runnable) {
        new Handler(this.context.getMainLooper()).post(runnable);
    }

    public g.m getActivity() {
        return this.context;
    }

    public Set<String> getAllowedOriginRules() {
        return this.allowedOriginRules;
    }

    public App getApp() {
        return this.app;
    }

    public HostMask getAppAllowNavigationMask() {
        return this.appAllowNavigationMask;
    }

    public String getAppUrl() {
        return this.appUrl;
    }

    public CapConfig getConfig() {
        return this.config;
    }

    public Context getContext() {
        return this.context;
    }

    public String getErrorUrl() {
        String errorPath = this.config.getErrorPath();
        if (errorPath == null || errorPath.trim().isEmpty()) {
            return null;
        }
        String host = getHost();
        return (getScheme() + "://" + host) + "/" + errorPath;
    }

    public c0 getFragment() {
        return this.fragment;
    }

    public String getHost() {
        return this.config.getHostname();
    }

    public Uri getIntentUri() {
        return this.intentUri;
    }

    public WebViewLocalServer getLocalServer() {
        return this.localServer;
    }

    public String getLocalUrl() {
        return this.localUrl;
    }

    public PluginCall getPermissionCall(String str) {
        LinkedList<String> linkedList = this.savedPermissionCallIds.get(str);
        return getSavedCall(linkedList != null ? linkedList.poll() : null);
    }

    public Map<String, PermissionState> getPermissionStates(Plugin plugin) {
        PermissionState permissionStateByState;
        HashMap map = new HashMap();
        for (Permission permission : plugin.getPluginHandle().getPluginAnnotation().permissions()) {
            if (permission.strings().length == 0 || (permission.strings().length == 1 && permission.strings()[0].isEmpty())) {
                String strAlias = permission.alias();
                if (!strAlias.isEmpty() && ((PermissionState) map.get(strAlias)) == null) {
                    map.put(strAlias, PermissionState.GRANTED);
                }
            } else {
                for (String str : permission.strings()) {
                    String strAlias2 = permission.alias().isEmpty() ? str : permission.alias();
                    if (z.c.a(getContext(), str) == 0) {
                        permissionStateByState = PermissionState.GRANTED;
                    } else {
                        PermissionState permissionState = PermissionState.PROMPT;
                        String string = getContext().getSharedPreferences(PERMISSION_PREFS_NAME, 0).getString(str, null);
                        permissionStateByState = string != null ? PermissionState.byState(string) : permissionState;
                    }
                    PermissionState permissionState2 = (PermissionState) map.get(strAlias2);
                    if (permissionState2 == null || permissionState2 == PermissionState.GRANTED) {
                        map.put(strAlias2, permissionStateByState);
                    }
                }
            }
        }
        return map;
    }

    public PluginHandle getPlugin(String str) {
        return this.plugins.get(str);
    }

    public PluginCall getPluginCallForLastActivity() {
        PluginCall pluginCall = this.pluginCallForLastActivity;
        this.pluginCallForLastActivity = null;
        return pluginCall;
    }

    @Deprecated
    public PluginHandle getPluginWithRequestCode(int i6) {
        for (PluginHandle pluginHandle : this.plugins.values()) {
            CapacitorPlugin pluginAnnotation = pluginHandle.getPluginAnnotation();
            int i9 = 0;
            if (pluginAnnotation == null) {
                NativePlugin legacyPluginAnnotation = pluginHandle.getLegacyPluginAnnotation();
                if (legacyPluginAnnotation != null) {
                    if (legacyPluginAnnotation.permissionRequestCode() != i6) {
                        int[] iArrRequestCodes = legacyPluginAnnotation.requestCodes();
                        int length = iArrRequestCodes.length;
                        while (i9 < length) {
                            if (iArrRequestCodes[i9] != i6) {
                                i9++;
                            }
                        }
                    }
                    return pluginHandle;
                }
                continue;
            } else {
                int[] iArrRequestCodes2 = pluginAnnotation.requestCodes();
                int length2 = iArrRequestCodes2.length;
                while (i9 < length2) {
                    if (iArrRequestCodes2[i9] == i6) {
                        return pluginHandle;
                    }
                    i9++;
                }
            }
        }
        return null;
    }

    public RouteProcessor getRouteProcessor() {
        return this.routeProcessor;
    }

    public PluginCall getSavedCall(String str) {
        if (str == null) {
            return null;
        }
        return this.savedCalls.get(str);
    }

    public String getScheme() {
        return this.config.getAndroidScheme();
    }

    public String getServerBasePath() {
        return this.localServer.getBasePath();
    }

    public ServerPath getServerPath() {
        return this.serverPath;
    }

    public String getServerUrl() {
        return this.config.getServerUrl();
    }

    public WebView getWebView() {
        return this.webView;
    }

    public BridgeWebViewClient getWebViewClient() {
        return this.webViewClient;
    }

    public List<WebViewListener> getWebViewListeners() {
        return this.webViewListeners;
    }

    public void handleAppUrlLoadError(Exception exc) {
        if (exc instanceof SocketTimeoutException) {
            Logger.error("Unable to load app. Ensure the server is running at " + this.appUrl + ", or modify the appUrl setting in capacitor.config.json (make sure to npx cap copy after to commit changes).", exc);
        }
    }

    public void injectScriptBeforeLoad(String str) {
        if (this.canInjectJS.booleanValue()) {
            this.miscJSFileInjections.add(str);
        }
    }

    public boolean isDeployDisabled() {
        return this.preferences.a("DisableDeploy", false);
    }

    public boolean isDevMode() {
        return (getActivity().getApplicationInfo().flags & 2) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00c8 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean isMinimumWebViewInstalled() {
        /*
            Method dump skipped, instruction units count: 202
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.getcapacitor.Bridge.isMinimumWebViewInstalled():boolean");
    }

    public boolean launchIntent(Uri uri) {
        Boolean boolShouldOverrideLoad;
        Iterator<Map.Entry<String, PluginHandle>> it = this.plugins.entrySet().iterator();
        while (it.hasNext()) {
            Plugin pluginHandle = it.next().getValue().getInstance();
            if (pluginHandle != null && (boolShouldOverrideLoad = pluginHandle.shouldOverrideLoad(uri)) != null) {
                return boolShouldOverrideLoad.booleanValue();
            }
        }
        if (!uri.getScheme().equals(MTCoreConstants.Protocol.KEY_DATA) && !uri.getScheme().equals("blob")) {
            Uri uri2 = Uri.parse(this.appUrl);
            if ((!uri2.getHost().equals(uri.getHost()) || !uri.getScheme().equals(uri2.getScheme())) && !this.appAllowNavigationMask.matches(uri.getHost())) {
                try {
                    getContext().startActivity(new Intent("android.intent.action.VIEW", uri));
                    return true;
                } catch (ActivityNotFoundException unused) {
                    return true;
                }
            }
        }
        return false;
    }

    public void logToJs(String str, String str2) {
        eval("window.Capacitor.logJs(\"" + str + "\", \"" + str2 + "\")", null);
    }

    public boolean onActivityResult(int i6, int i9, Intent intent) {
        PluginHandle pluginWithRequestCode = getPluginWithRequestCode(i6);
        if (pluginWithRequestCode == null || pluginWithRequestCode.getInstance() == null) {
            Logger.debug("Unable to find a Capacitor plugin to handle requestCode, trying Cordova plugins " + i6);
            return this.cordovaInterface.onActivityResult(i6, i9, intent);
        }
        if (pluginWithRequestCode.getInstance().getSavedCall() == null && this.pluginCallForLastActivity != null) {
            pluginWithRequestCode.getInstance().saveCall(this.pluginCallForLastActivity);
        }
        pluginWithRequestCode.getInstance().handleOnActivityResult(i6, i9, intent);
        this.pluginCallForLastActivity = null;
        return true;
    }

    public void onConfigurationChanged(Configuration configuration) {
        Iterator<PluginHandle> it = this.plugins.values().iterator();
        while (it.hasNext()) {
            it.next().getInstance().handleOnConfigurationChanged(configuration);
        }
    }

    public void onDestroy() {
        Iterator<PluginHandle> it = this.plugins.values().iterator();
        while (it.hasNext()) {
            it.next().getInstance().handleOnDestroy();
        }
        this.handlerThread.quitSafely();
        t tVar = this.cordovaWebView;
        if (tVar != null) {
            tVar.handleDestroy();
        }
    }

    public void onDetachedFromWindow() {
        this.webView.removeAllViews();
        this.webView.destroy();
    }

    public void onNewIntent(Intent intent) {
        Iterator<PluginHandle> it = this.plugins.values().iterator();
        while (it.hasNext()) {
            it.next().getInstance().handleOnNewIntent(intent);
        }
        t tVar = this.cordovaWebView;
        if (tVar != null) {
            tVar.onNewIntent(intent);
        }
    }

    public void onPause() {
        Iterator<PluginHandle> it = this.plugins.values().iterator();
        while (it.hasNext()) {
            it.next().getInstance().handleOnPause();
        }
        if (this.cordovaWebView != null) {
            this.cordovaWebView.handlePause(shouldKeepRunning() || this.cordovaInterface.getActivityResultCallback() != null);
        }
    }

    public boolean onRequestPermissionsResult(int i6, String[] strArr, int[] iArr) {
        PluginHandle pluginWithRequestCode = getPluginWithRequestCode(i6);
        if (pluginWithRequestCode != null) {
            if (pluginWithRequestCode.getPluginAnnotation() != null) {
                return false;
            }
            pluginWithRequestCode.getInstance().handleRequestPermissionsResult(i6, strArr, iArr);
            return true;
        }
        Logger.debug("Unable to find a Capacitor plugin to handle permission requestCode, trying Cordova plugins " + i6);
        try {
            return this.cordovaInterface.handlePermissionResult(i6, strArr, iArr);
        } catch (JSONException e9) {
            Logger.debug("Error on Cordova plugin permissions request " + e9.getMessage());
            return false;
        }
    }

    public void onRestart() {
        Iterator<PluginHandle> it = this.plugins.values().iterator();
        while (it.hasNext()) {
            it.next().getInstance().handleOnRestart();
        }
    }

    public void onResume() {
        Iterator<PluginHandle> it = this.plugins.values().iterator();
        while (it.hasNext()) {
            it.next().getInstance().handleOnResume();
        }
        t tVar = this.cordovaWebView;
        if (tVar != null) {
            tVar.handleResume(shouldKeepRunning());
        }
    }

    public void onStart() {
        Iterator<PluginHandle> it = this.plugins.values().iterator();
        while (it.hasNext()) {
            it.next().getInstance().handleOnStart();
        }
        t tVar = this.cordovaWebView;
        if (tVar != null) {
            tVar.handleStart();
        }
    }

    public void onStop() {
        Iterator<PluginHandle> it = this.plugins.values().iterator();
        while (it.hasNext()) {
            it.next().getInstance().handleOnStop();
        }
        t tVar = this.cordovaWebView;
        if (tVar != null) {
            tVar.handleStop();
        }
    }

    public <I, O> d.c registerForActivityResult(e.a aVar, d.b bVar) {
        c0 c0Var = this.fragment;
        return c0Var != null ? c0Var.D(aVar, bVar) : this.context.registerForActivityResult(aVar, bVar);
    }

    public void registerPlugin(Class<? extends Plugin> cls) {
        String strPluginId = pluginId(cls);
        if (strPluginId == null) {
            return;
        }
        try {
            this.plugins.put(strPluginId, new PluginHandle(this, cls));
        } catch (InvalidPluginException unused) {
            logInvalidPluginException(cls);
        } catch (PluginLoadException e9) {
            logPluginLoadException(cls, e9);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void registerPluginInstance(Plugin plugin) {
        Class<?> cls = plugin.getClass();
        String strPluginId = pluginId(cls);
        if (strPluginId == null) {
            return;
        }
        try {
            this.plugins.put(strPluginId, new PluginHandle(this, plugin));
        } catch (InvalidPluginException unused) {
            logInvalidPluginException(cls);
        }
    }

    public void registerPluginInstances(Plugin[] pluginArr) {
        for (Plugin plugin : pluginArr) {
            registerPluginInstance(plugin);
        }
    }

    public void registerPlugins(Class<? extends Plugin>[] clsArr) {
        for (Class<? extends Plugin> cls : clsArr) {
            registerPlugin(cls);
        }
    }

    public void releaseCall(PluginCall pluginCall) {
        releaseCall(pluginCall.getCallbackId());
    }

    public void reload() {
        this.webView.post(new e(this, 1));
    }

    public void removeWebViewListener(WebViewListener webViewListener) {
        this.webViewListeners.remove(webViewListener);
    }

    public void reset() {
        this.savedCalls = new HashMap();
        Iterator<PluginHandle> it = this.plugins.values().iterator();
        while (it.hasNext()) {
            it.next().getInstance().removeAllListeners();
        }
    }

    public void restoreInstanceState(Bundle bundle) {
        String string = bundle.getString(BUNDLE_LAST_PLUGIN_ID_KEY);
        String string2 = bundle.getString(BUNDLE_LAST_PLUGIN_CALL_METHOD_NAME_KEY);
        String string3 = bundle.getString(BUNDLE_PLUGIN_CALL_OPTIONS_SAVED_KEY);
        if (string != null) {
            if (string3 != null) {
                try {
                    this.pluginCallForLastActivity = new PluginCall(this.msgHandler, string, PluginCall.CALLBACK_ID_DANGLING, string2, new JSObject(string3));
                } catch (JSONException e9) {
                    Logger.error("Unable to restore plugin call, unable to parse persisted JSON object", e9);
                }
            }
            Bundle bundle2 = bundle.getBundle(BUNDLE_PLUGIN_CALL_BUNDLE_KEY);
            PluginHandle plugin = getPlugin(string);
            if (bundle2 == null || plugin == null) {
                Logger.error("Unable to restore last plugin call");
            } else {
                plugin.getInstance().restoreState(bundle2);
            }
        }
    }

    public void saveCall(PluginCall pluginCall) {
        this.savedCalls.put(pluginCall.getCallbackId(), pluginCall);
    }

    public void saveInstanceState(Bundle bundle) {
        PluginHandle plugin;
        Logger.debug("Saving instance state!");
        PluginCall pluginCall = this.pluginCallForLastActivity;
        if (pluginCall == null || (plugin = getPlugin(pluginCall.getPluginId())) == null) {
            return;
        }
        Bundle bundleSaveInstanceState = plugin.getInstance().saveInstanceState();
        if (bundleSaveInstanceState != null) {
            bundle.putString(BUNDLE_LAST_PLUGIN_ID_KEY, pluginCall.getPluginId());
            bundle.putString(BUNDLE_LAST_PLUGIN_CALL_METHOD_NAME_KEY, pluginCall.getMethodName());
            bundle.putString(BUNDLE_PLUGIN_CALL_OPTIONS_SAVED_KEY, pluginCall.getData().toString());
            bundle.putBundle(BUNDLE_PLUGIN_CALL_BUNDLE_KEY, bundleSaveInstanceState);
            return;
        }
        Logger.error("Couldn't save last " + pluginCall.getPluginId() + "'s Plugin " + pluginCall.getMethodName() + " call");
    }

    public void savePermissionCall(PluginCall pluginCall) {
        if (pluginCall != null) {
            if (!this.savedPermissionCallIds.containsKey(pluginCall.getPluginId())) {
                this.savedPermissionCallIds.put(pluginCall.getPluginId(), new LinkedList<>());
            }
            this.savedPermissionCallIds.get(pluginCall.getPluginId()).add(pluginCall.getCallbackId());
            saveCall(pluginCall);
        }
    }

    public void setCordovaWebView(t tVar) {
        this.cordovaWebView = tVar;
    }

    public void setPluginCallForLastActivity(PluginCall pluginCall) {
        this.pluginCallForLastActivity = pluginCall;
    }

    public void setRouteProcessor(RouteProcessor routeProcessor) {
        this.routeProcessor = routeProcessor;
    }

    public void setServerAssetPath(String str) {
        this.localServer.hostAssets(str);
        this.webView.post(new e(this, 2));
    }

    public void setServerBasePath(String str) {
        this.localServer.hostFiles(str);
        this.webView.post(new e(this, 0));
    }

    public void setWebViewClient(BridgeWebViewClient bridgeWebViewClient) {
        this.webViewClient = bridgeWebViewClient;
        this.webView.setWebViewClient(bridgeWebViewClient);
    }

    public void setWebViewListeners(List<WebViewListener> list) {
        this.webViewListeners = list;
    }

    public boolean shouldKeepRunning() {
        return this.preferences.a("KeepRunning", true);
    }

    @Deprecated
    public void startActivityForPluginWithResult(PluginCall pluginCall, Intent intent, int i6) {
        Logger.debug("Starting activity for result");
        this.pluginCallForLastActivity = pluginCall;
        getActivity().startActivityForResult(intent, i6);
    }

    public void triggerDocumentJSEvent(String str) {
        triggerJSEvent(str, "document");
    }

    public void triggerJSEvent(String str, String str2) {
        eval("window.Capacitor.triggerEvent(\"" + str + "\", \"" + str2 + "\")", new d(0));
    }

    public void triggerWindowJSEvent(String str) {
        triggerJSEvent(str, "window");
    }

    public boolean validatePermissions(Plugin plugin, PluginCall pluginCall, Map<String, Boolean> map) {
        boolean zShouldShowRequestPermissionRationale;
        SharedPreferences sharedPreferences = getContext().getSharedPreferences(PERMISSION_PREFS_NAME, 0);
        for (Map.Entry<String, Boolean> entry : map.entrySet()) {
            String key = entry.getKey();
            if (!entry.getValue().booleanValue()) {
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                g.m activity = getActivity();
                int i6 = Build.VERSION.SDK_INT;
                if (i6 < 33 && TextUtils.equals("android.permission.POST_NOTIFICATIONS", key)) {
                    zShouldShowRequestPermissionRationale = false;
                } else if (i6 < 32 && i6 == 31) {
                    try {
                        zShouldShowRequestPermissionRationale = ((Boolean) PackageManager.class.getMethod("shouldShowRequestPermissionRationale", String.class).invoke(activity.getApplication().getPackageManager(), key)).booleanValue();
                    } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                        zShouldShowRequestPermissionRationale = activity.shouldShowRequestPermissionRationale(key);
                    }
                } else {
                    zShouldShowRequestPermissionRationale = activity.shouldShowRequestPermissionRationale(key);
                }
                if (zShouldShowRequestPermissionRationale) {
                    editorEdit.putString(key, PermissionState.PROMPT_WITH_RATIONALE.toString());
                } else {
                    editorEdit.putString(key, PermissionState.DENIED.toString());
                }
                editorEdit.apply();
            } else if (sharedPreferences.getString(key, null) != null) {
                SharedPreferences.Editor editorEdit2 = sharedPreferences.edit();
                editorEdit2.remove(key);
                editorEdit2.apply();
            }
        }
        String[] strArr = (String[]) map.keySet().toArray(new String[0]);
        if (PermissionHelper.hasDefinedPermissions(getContext(), strArr)) {
            return true;
        }
        StringBuilder sb = new StringBuilder("Missing the following permissions in AndroidManifest.xml:\n");
        for (String str : PermissionHelper.getUndefinedPermissions(getContext(), strArr)) {
            sb.append(str + "\n");
        }
        pluginCall.reject(sb.toString());
        return false;
    }

    @Deprecated
    public Bridge(g.m mVar, WebView webView, List<Class<? extends Plugin>> list, MockCordovaInterfaceImpl mockCordovaInterfaceImpl, l0 l0Var, org.apache.cordova.q qVar, CapConfig capConfig) {
        this(mVar, null, null, webView, list, new ArrayList(), mockCordovaInterfaceImpl, l0Var, qVar, capConfig);
    }

    public void logToJs(String str) {
        logToJs(str, "log");
    }

    public void releaseCall(String str) {
        this.savedCalls.remove(str);
    }

    public void triggerDocumentJSEvent(String str, String str2) {
        triggerJSEvent(str, "document", str2);
    }

    public void triggerJSEvent(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder("window.Capacitor.triggerEvent(\"");
        sb.append(str);
        sb.append("\", \"");
        sb.append(str2);
        sb.append("\", ");
        eval(x.h(sb, str3, ")"), new d(1));
    }

    public void triggerWindowJSEvent(String str, String str2) {
        triggerJSEvent(str, "window", str2);
    }

    private Bridge(g.m mVar, ServerPath serverPath, c0 c0Var, WebView webView, List<Class<? extends Plugin>> list, List<Plugin> list2, MockCordovaInterfaceImpl mockCordovaInterfaceImpl, l0 l0Var, org.apache.cordova.q qVar, CapConfig capConfig) {
        this.allowedOriginRules = new HashSet();
        this.authorities = new ArrayList<>();
        this.miscJSFileInjections = new ArrayList<>();
        this.canInjectJS = Boolean.TRUE;
        HandlerThread handlerThread = new HandlerThread("CapacitorPlugins");
        this.handlerThread = handlerThread;
        this.taskHandler = null;
        this.plugins = new HashMap();
        this.savedCalls = new HashMap();
        this.savedPermissionCallIds = new HashMap();
        this.webViewListeners = new ArrayList();
        this.app = new App();
        this.serverPath = serverPath;
        this.context = mVar;
        this.fragment = c0Var;
        this.webView = webView;
        this.webViewClient = new BridgeWebViewClient(this);
        this.initialPlugins = list;
        this.pluginInstances = list2;
        this.cordovaInterface = mockCordovaInterfaceImpl;
        this.preferences = qVar;
        handlerThread.start();
        this.taskHandler = new Handler(handlerThread.getLooper());
        capConfig = capConfig == null ? CapConfig.loadDefault(getActivity()) : capConfig;
        this.config = capConfig;
        Logger.init(capConfig);
        initWebView();
        setAllowedOriginRules();
        this.msgHandler = new MessageHandler(this, webView, l0Var);
        this.intentUri = mVar.getIntent().getData();
        registerAllPlugins();
        loadWebView();
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class Builder {
        private g.m activity;
        private c0 fragment;
        private RouteProcessor routeProcessor;
        private ServerPath serverPath;
        private Bundle instanceState = null;
        private CapConfig config = null;
        private List<Class<? extends Plugin>> plugins = new ArrayList();
        private List<Plugin> pluginInstances = new ArrayList();
        private final List<WebViewListener> webViewListeners = new ArrayList();

        public Builder(g.m mVar) {
            this.activity = mVar;
        }

        public Builder addPlugin(Class<? extends Plugin> cls) {
            this.plugins.add(cls);
            return this;
        }

        public Builder addPluginInstance(Plugin plugin) {
            this.pluginInstances.add(plugin);
            return this;
        }

        public Builder addPluginInstances(List<Plugin> list) {
            this.pluginInstances.addAll(list);
            return this;
        }

        public Builder addPlugins(List<Class<? extends Plugin>> list) {
            Iterator<Class<? extends Plugin>> it = list.iterator();
            while (it.hasNext()) {
                addPlugin(it.next());
            }
            return this;
        }

        public Builder addWebViewListener(WebViewListener webViewListener) {
            this.webViewListeners.add(webViewListener);
            return this;
        }

        public Builder addWebViewListeners(List<WebViewListener> list) {
            Iterator<WebViewListener> it = list.iterator();
            while (it.hasNext()) {
                addWebViewListener(it.next());
            }
            return this;
        }

        public Bridge create() {
            org.apache.cordova.f fVar = new org.apache.cordova.f();
            fVar.c(this.activity.getApplicationContext());
            this.activity.getIntent().getExtras();
            org.apache.cordova.q qVar = fVar.f4513a;
            qVar.getClass();
            MockCordovaInterfaceImpl mockCordovaInterfaceImpl = new MockCordovaInterfaceImpl(this.activity);
            Bundle bundle = this.instanceState;
            if (bundle != null) {
                mockCordovaInterfaceImpl.restoreInstanceState(bundle);
            }
            c0 c0Var = this.fragment;
            WebView webView = (WebView) (c0Var != null ? c0Var.P.findViewById(R.id.webview) : this.activity.findViewById(R.id.webview));
            MockCordovaWebViewImpl mockCordovaWebViewImpl = new MockCordovaWebViewImpl(this.activity.getApplicationContext());
            mockCordovaWebViewImpl.init(mockCordovaInterfaceImpl, fVar.f4514b, qVar, webView);
            l0 pluginManager = mockCordovaWebViewImpl.getPluginManager();
            mockCordovaInterfaceImpl.onCordovaInit(pluginManager);
            Bridge bridge = new Bridge(this.activity, this.serverPath, this.fragment, webView, this.plugins, this.pluginInstances, mockCordovaInterfaceImpl, pluginManager, qVar, this.config, 0);
            if (webView instanceof CapacitorWebView) {
                CapacitorWebView capacitorWebView = (CapacitorWebView) webView;
                capacitorWebView.setBridge(bridge);
                capacitorWebView.edgeToEdgeHandler(bridge);
            }
            bridge.setCordovaWebView(mockCordovaWebViewImpl);
            bridge.setWebViewListeners(this.webViewListeners);
            bridge.setRouteProcessor(this.routeProcessor);
            Bundle bundle2 = this.instanceState;
            if (bundle2 != null) {
                bridge.restoreInstanceState(bundle2);
            }
            return bridge;
        }

        public Builder setConfig(CapConfig capConfig) {
            this.config = capConfig;
            return this;
        }

        public Builder setInstanceState(Bundle bundle) {
            this.instanceState = bundle;
            return this;
        }

        public Builder setPlugins(List<Class<? extends Plugin>> list) {
            this.plugins = list;
            return this;
        }

        public Builder setRouteProcessor(RouteProcessor routeProcessor) {
            this.routeProcessor = routeProcessor;
            return this;
        }

        public Builder setServerPath(ServerPath serverPath) {
            this.serverPath = serverPath;
            return this;
        }

        public Builder(c0 c0Var) {
            this.activity = (g.m) c0Var.c();
            this.fragment = c0Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$triggerJSEvent$2(String str) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$triggerJSEvent$3(String str) {
    }
}
