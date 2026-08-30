package com.getcapacitor;

import android.content.Context;
import android.content.res.AssetManager;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.getcapacitor.util.JSONUtils;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class CapConfig {
    private static final String LOG_BEHAVIOR_DEBUG = "debug";
    private static final String LOG_BEHAVIOR_NONE = "none";
    private static final String LOG_BEHAVIOR_PRODUCTION = "production";
    private String adjustMarginsForEdgeToEdge;
    private boolean allowMixedContent;
    private String[] allowNavigation;
    private String androidScheme;
    private String appendedUserAgentString;
    private String backgroundColor;
    private boolean captureInput;
    private JSONObject configJSON;
    private String errorPath;
    private String hostname;
    private boolean html5mode;
    private boolean initialFocus;
    private boolean loggingEnabled;
    private int minHuaweiWebViewVersion;
    private int minWebViewVersion;
    private String overriddenUserAgentString;
    private Map<String, PluginConfig> pluginsConfiguration;
    private boolean resolveServiceWorkerRequests;
    private String serverUrl;
    private String startPath;
    private boolean useLegacyBridge;
    private boolean webContentsDebuggingEnabled;
    private boolean zoomableWebView;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class Builder {
        private String[] allowNavigation;
        private String appendedUserAgentString;
        private String backgroundColor;
        private Context context;
        private String errorPath;
        private String overriddenUserAgentString;
        private String serverUrl;
        private boolean html5mode = true;
        private String hostname = "localhost";
        private String androidScheme = Bridge.CAPACITOR_HTTPS_SCHEME;
        private boolean allowMixedContent = false;
        private boolean captureInput = false;
        private Boolean webContentsDebuggingEnabled = null;
        private boolean loggingEnabled = true;
        private boolean initialFocus = false;
        private boolean useLegacyBridge = false;
        private int minWebViewVersion = 60;
        private int minHuaweiWebViewVersion = 10;
        private boolean zoomableWebView = false;
        private boolean resolveServiceWorkerRequests = true;
        private String adjustMarginsForEdgeToEdge = "disable";
        private String startPath = null;
        private Map<String, PluginConfig> pluginsConfiguration = new HashMap();

        public Builder(Context context) {
            this.context = context;
        }

        public CapConfig create() {
            int i6 = 0;
            if (this.webContentsDebuggingEnabled == null) {
                this.webContentsDebuggingEnabled = Boolean.valueOf((this.context.getApplicationInfo().flags & 2) != 0);
            }
            return new CapConfig(this, i6);
        }

        public Builder setAllowMixedContent(boolean z5) {
            this.allowMixedContent = z5;
            return this;
        }

        public Builder setAllowNavigation(String[] strArr) {
            this.allowNavigation = strArr;
            return this;
        }

        public Builder setAndroidScheme(String str) {
            this.androidScheme = str;
            return this;
        }

        public Builder setAppendedUserAgentString(String str) {
            this.appendedUserAgentString = str;
            return this;
        }

        public Builder setBackgroundColor(String str) {
            this.backgroundColor = str;
            return this;
        }

        public Builder setCaptureInput(boolean z5) {
            this.captureInput = z5;
            return this;
        }

        public Builder setErrorPath(String str) {
            this.errorPath = str;
            return this;
        }

        public Builder setHTML5mode(boolean z5) {
            this.html5mode = z5;
            return this;
        }

        public Builder setHostname(String str) {
            this.hostname = str;
            return this;
        }

        public Builder setInitialFocus(boolean z5) {
            this.initialFocus = z5;
            return this;
        }

        public Builder setLoggingEnabled(boolean z5) {
            this.loggingEnabled = z5;
            return this;
        }

        public Builder setOverriddenUserAgentString(String str) {
            this.overriddenUserAgentString = str;
            return this;
        }

        public Builder setPluginsConfiguration(JSONObject jSONObject) {
            this.pluginsConfiguration = CapConfig.deserializePluginsConfig(jSONObject);
            return this;
        }

        public Builder setResolveServiceWorkerRequests(boolean z5) {
            this.resolveServiceWorkerRequests = z5;
            return this;
        }

        public Builder setServerUrl(String str) {
            this.serverUrl = str;
            return this;
        }

        public Builder setStartPath(String str) {
            this.startPath = str;
            return this;
        }

        public Builder setUseLegacyBridge(boolean z5) {
            this.useLegacyBridge = z5;
            return this;
        }

        public Builder setWebContentsDebuggingEnabled(boolean z5) {
            this.webContentsDebuggingEnabled = Boolean.valueOf(z5);
            return this;
        }

        public Builder setZoomableWebView(boolean z5) {
            this.zoomableWebView = z5;
            return this;
        }
    }

    public /* synthetic */ CapConfig(Builder builder, int i6) {
        this(builder);
    }

    private void deserializeConfig(Context context) {
        boolean z5 = (context == null || (context.getApplicationInfo().flags & 2) == 0) ? false : true;
        this.html5mode = JSONUtils.getBoolean(this.configJSON, "server.html5mode", this.html5mode);
        this.serverUrl = JSONUtils.getString(this.configJSON, "server.url", null);
        this.hostname = JSONUtils.getString(this.configJSON, "server.hostname", this.hostname);
        this.errorPath = JSONUtils.getString(this.configJSON, "server.errorPath", null);
        this.startPath = JSONUtils.getString(this.configJSON, "server.appStartPath", null);
        String string = JSONUtils.getString(this.configJSON, "server.androidScheme", this.androidScheme);
        if (validateScheme(string)) {
            this.androidScheme = string;
        }
        this.allowNavigation = JSONUtils.getArray(this.configJSON, "server.allowNavigation", null);
        JSONObject jSONObject = this.configJSON;
        this.overriddenUserAgentString = JSONUtils.getString(jSONObject, "android.overrideUserAgent", JSONUtils.getString(jSONObject, "overrideUserAgent", null));
        JSONObject jSONObject2 = this.configJSON;
        this.appendedUserAgentString = JSONUtils.getString(jSONObject2, "android.appendUserAgent", JSONUtils.getString(jSONObject2, "appendUserAgent", null));
        JSONObject jSONObject3 = this.configJSON;
        this.backgroundColor = JSONUtils.getString(jSONObject3, "android.backgroundColor", JSONUtils.getString(jSONObject3, "backgroundColor", null));
        JSONObject jSONObject4 = this.configJSON;
        this.allowMixedContent = JSONUtils.getBoolean(jSONObject4, "android.allowMixedContent", JSONUtils.getBoolean(jSONObject4, "allowMixedContent", this.allowMixedContent));
        this.minWebViewVersion = JSONUtils.getInt(this.configJSON, "android.minWebViewVersion", 60);
        this.minHuaweiWebViewVersion = JSONUtils.getInt(this.configJSON, "android.minHuaweiWebViewVersion", 10);
        this.captureInput = JSONUtils.getBoolean(this.configJSON, "android.captureInput", this.captureInput);
        this.useLegacyBridge = JSONUtils.getBoolean(this.configJSON, "android.useLegacyBridge", this.useLegacyBridge);
        this.webContentsDebuggingEnabled = JSONUtils.getBoolean(this.configJSON, "android.webContentsDebuggingEnabled", z5);
        JSONObject jSONObject5 = this.configJSON;
        this.zoomableWebView = JSONUtils.getBoolean(jSONObject5, "android.zoomEnabled", JSONUtils.getBoolean(jSONObject5, "zoomEnabled", false));
        this.resolveServiceWorkerRequests = JSONUtils.getBoolean(this.configJSON, "android.resolveServiceWorkerRequests", true);
        this.adjustMarginsForEdgeToEdge = JSONUtils.getString(this.configJSON, "android.adjustMarginsForEdgeToEdge", "disable");
        JSONObject jSONObject6 = this.configJSON;
        String lowerCase = JSONUtils.getString(jSONObject6, "android.loggingBehavior", JSONUtils.getString(jSONObject6, "loggingBehavior", LOG_BEHAVIOR_DEBUG)).toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        if (lowerCase.equals("none")) {
            this.loggingEnabled = false;
        } else if (lowerCase.equals(LOG_BEHAVIOR_PRODUCTION)) {
            this.loggingEnabled = true;
        } else {
            this.loggingEnabled = z5;
        }
        JSONObject jSONObject7 = this.configJSON;
        this.initialFocus = JSONUtils.getBoolean(jSONObject7, "android.initialFocus", JSONUtils.getBoolean(jSONObject7, "initialFocus", this.initialFocus));
        this.pluginsConfiguration = deserializePluginsConfig(JSONUtils.getObject(this.configJSON, "plugins"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<String, PluginConfig> deserializePluginsConfig(JSONObject jSONObject) {
        HashMap map = new HashMap();
        if (jSONObject != null) {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                try {
                    map.put(next, new PluginConfig(jSONObject.getJSONObject(next)));
                } catch (JSONException e9) {
                    e9.printStackTrace();
                }
            }
        }
        return map;
    }

    private void loadConfigFromAssets(AssetManager assetManager, String str) {
        if (str == null) {
            str = "";
        } else if (str.charAt(str.length() - 1) != '/') {
            str = str.concat("/");
        }
        try {
            this.configJSON = new JSONObject(FileUtils.readFileFromAssets(assetManager, str + "capacitor.config.json"));
        } catch (IOException e9) {
            Logger.error("Unable to load capacitor.config.json. Run npx cap copy first", e9);
        } catch (JSONException e10) {
            Logger.error("Unable to parse capacitor.config.json. Make sure it's valid json", e10);
        }
    }

    private void loadConfigFromFile(String str) {
        if (str == null) {
            str = "";
        } else if (str.charAt(str.length() - 1) != '/') {
            str = str.concat("/");
        }
        try {
            this.configJSON = new JSONObject(FileUtils.readFileFromDisk(new File(str + "capacitor.config.json")));
        } catch (IOException e9) {
            Logger.error("Unable to load capacitor.config.json.", e9);
        } catch (JSONException e10) {
            Logger.error("Unable to parse capacitor.config.json. Make sure it's valid json", e10);
        }
    }

    public static CapConfig loadDefault(Context context) {
        CapConfig capConfig = new CapConfig();
        if (context == null) {
            Logger.error("Capacitor Config could not be created from file. Context must not be null.");
            return capConfig;
        }
        capConfig.loadConfigFromAssets(context.getAssets(), null);
        capConfig.deserializeConfig(context);
        return capConfig;
    }

    public static CapConfig loadFromAssets(Context context, String str) {
        CapConfig capConfig = new CapConfig();
        if (context == null) {
            Logger.error("Capacitor Config could not be created from file. Context must not be null.");
            return capConfig;
        }
        capConfig.loadConfigFromAssets(context.getAssets(), str);
        capConfig.deserializeConfig(context);
        return capConfig;
    }

    public static CapConfig loadFromFile(Context context, String str) {
        CapConfig capConfig = new CapConfig();
        if (context == null) {
            Logger.error("Capacitor Config could not be created from file. Context must not be null.");
            return capConfig;
        }
        capConfig.loadConfigFromFile(str);
        capConfig.deserializeConfig(context);
        return capConfig;
    }

    private boolean validateScheme(String str) {
        if (Arrays.asList("file", "ftp", "ftps", "ws", "wss", "about", "blob", MTCoreConstants.Protocol.KEY_DATA).contains(str)) {
            Logger.warn(str + " is not an allowed scheme.  Defaulting to https.");
            return false;
        }
        if (str.equals(Bridge.CAPACITOR_HTTP_SCHEME) || str.equals(Bridge.CAPACITOR_HTTPS_SCHEME)) {
            return true;
        }
        Logger.warn("Using a non-standard scheme: " + str + " for Android. This is known to cause issues as of Android Webview 117.");
        return true;
    }

    public String adjustMarginsForEdgeToEdge() {
        return this.adjustMarginsForEdgeToEdge;
    }

    public String[] getAllowNavigation() {
        return this.allowNavigation;
    }

    public String getAndroidScheme() {
        return this.androidScheme;
    }

    public String getAppendedUserAgentString() {
        return this.appendedUserAgentString;
    }

    @Deprecated
    public String[] getArray(String str) {
        return JSONUtils.getArray(this.configJSON, str, null);
    }

    public String getBackgroundColor() {
        return this.backgroundColor;
    }

    @Deprecated
    public boolean getBoolean(String str, boolean z5) {
        return JSONUtils.getBoolean(this.configJSON, str, z5);
    }

    public String getErrorPath() {
        return this.errorPath;
    }

    public String getHostname() {
        return this.hostname;
    }

    @Deprecated
    public int getInt(String str, int i6) {
        return JSONUtils.getInt(this.configJSON, str, i6);
    }

    public int getMinHuaweiWebViewVersion() {
        int i6 = this.minHuaweiWebViewVersion;
        if (i6 >= 10) {
            return i6;
        }
        Logger.warn("Specified minimum Huawei webview version is too low, defaulting to 10");
        return 10;
    }

    public int getMinWebViewVersion() {
        int i6 = this.minWebViewVersion;
        if (i6 >= 55) {
            return i6;
        }
        Logger.warn("Specified minimum webview version is too low, defaulting to 55");
        return 55;
    }

    @Deprecated
    public JSONObject getObject(String str) {
        try {
            return this.configJSON.getJSONObject(str);
        } catch (Exception unused) {
            return null;
        }
    }

    public String getOverriddenUserAgentString() {
        return this.overriddenUserAgentString;
    }

    public PluginConfig getPluginConfiguration(String str) {
        PluginConfig pluginConfig = this.pluginsConfiguration.get(str);
        return pluginConfig == null ? new PluginConfig(new JSONObject()) : pluginConfig;
    }

    public String getServerUrl() {
        return this.serverUrl;
    }

    public String getStartPath() {
        return this.startPath;
    }

    @Deprecated
    public String getString(String str) {
        return JSONUtils.getString(this.configJSON, str, null);
    }

    public boolean isHTML5Mode() {
        return this.html5mode;
    }

    public boolean isInitialFocus() {
        return this.initialFocus;
    }

    public boolean isInputCaptured() {
        return this.captureInput;
    }

    public boolean isLoggingEnabled() {
        return this.loggingEnabled;
    }

    public boolean isMixedContentAllowed() {
        return this.allowMixedContent;
    }

    public boolean isResolveServiceWorkerRequests() {
        return this.resolveServiceWorkerRequests;
    }

    public boolean isUsingLegacyBridge() {
        return this.useLegacyBridge;
    }

    public boolean isWebContentsDebuggingEnabled() {
        return this.webContentsDebuggingEnabled;
    }

    public boolean isZoomableWebView() {
        return this.zoomableWebView;
    }

    private CapConfig() {
        this.html5mode = true;
        this.hostname = "localhost";
        this.androidScheme = Bridge.CAPACITOR_HTTPS_SCHEME;
        this.allowMixedContent = false;
        this.captureInput = false;
        this.webContentsDebuggingEnabled = false;
        this.loggingEnabled = true;
        this.initialFocus = true;
        this.useLegacyBridge = false;
        this.minWebViewVersion = 60;
        this.minHuaweiWebViewVersion = 10;
        this.zoomableWebView = false;
        this.resolveServiceWorkerRequests = true;
        this.adjustMarginsForEdgeToEdge = "disable";
        this.pluginsConfiguration = null;
        this.configJSON = new JSONObject();
    }

    @Deprecated
    public String[] getArray(String str, String[] strArr) {
        return JSONUtils.getArray(this.configJSON, str, strArr);
    }

    @Deprecated
    public String getString(String str, String str2) {
        return JSONUtils.getString(this.configJSON, str, str2);
    }

    @Deprecated
    public CapConfig(AssetManager assetManager, JSONObject jSONObject) {
        this.html5mode = true;
        this.hostname = "localhost";
        this.androidScheme = Bridge.CAPACITOR_HTTPS_SCHEME;
        this.allowMixedContent = false;
        this.captureInput = false;
        this.webContentsDebuggingEnabled = false;
        this.loggingEnabled = true;
        this.initialFocus = true;
        this.useLegacyBridge = false;
        this.minWebViewVersion = 60;
        this.minHuaweiWebViewVersion = 10;
        this.zoomableWebView = false;
        this.resolveServiceWorkerRequests = true;
        this.adjustMarginsForEdgeToEdge = "disable";
        this.pluginsConfiguration = null;
        this.configJSON = new JSONObject();
        if (jSONObject != null) {
            this.configJSON = jSONObject;
        } else {
            loadConfigFromAssets(assetManager, null);
        }
        deserializeConfig(null);
    }

    private CapConfig(Builder builder) {
        this.html5mode = true;
        this.hostname = "localhost";
        this.androidScheme = Bridge.CAPACITOR_HTTPS_SCHEME;
        this.allowMixedContent = false;
        this.captureInput = false;
        this.webContentsDebuggingEnabled = false;
        this.loggingEnabled = true;
        this.initialFocus = true;
        this.useLegacyBridge = false;
        this.minWebViewVersion = 60;
        this.minHuaweiWebViewVersion = 10;
        this.zoomableWebView = false;
        this.resolveServiceWorkerRequests = true;
        this.adjustMarginsForEdgeToEdge = "disable";
        this.pluginsConfiguration = null;
        this.configJSON = new JSONObject();
        this.html5mode = builder.html5mode;
        this.serverUrl = builder.serverUrl;
        this.hostname = builder.hostname;
        if (validateScheme(builder.androidScheme)) {
            this.androidScheme = builder.androidScheme;
        }
        this.allowNavigation = builder.allowNavigation;
        this.overriddenUserAgentString = builder.overriddenUserAgentString;
        this.appendedUserAgentString = builder.appendedUserAgentString;
        this.backgroundColor = builder.backgroundColor;
        this.allowMixedContent = builder.allowMixedContent;
        this.captureInput = builder.captureInput;
        this.webContentsDebuggingEnabled = builder.webContentsDebuggingEnabled.booleanValue();
        this.loggingEnabled = builder.loggingEnabled;
        this.initialFocus = builder.initialFocus;
        this.useLegacyBridge = builder.useLegacyBridge;
        this.minWebViewVersion = builder.minWebViewVersion;
        this.minHuaweiWebViewVersion = builder.minHuaweiWebViewVersion;
        this.errorPath = builder.errorPath;
        this.zoomableWebView = builder.zoomableWebView;
        this.resolveServiceWorkerRequests = builder.resolveServiceWorkerRequests;
        this.adjustMarginsForEdgeToEdge = builder.adjustMarginsForEdgeToEdge;
        this.startPath = builder.startPath;
        this.pluginsConfiguration = builder.pluginsConfiguration;
    }
}
