package org.apache.cordova;

import android.content.Context;
import android.content.IntentFilter;
import android.util.Log;
import java.util.HashMap;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class CoreAndroid extends o {
    public static final String PLUGIN_NAME = "CoreAndroid";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public q2.d f4474b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public d f4475c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public m0 f4476d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public m0 f4477e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f4478f = new Object();

    public static Object getBuildConfigValue(Context context, String str) {
        try {
            return Class.forName(context.getClass().getPackage().getName() + ".BuildConfig").getField(str).get(null);
        } catch (ClassNotFoundException e9) {
            e9.printStackTrace();
            return null;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (NoSuchFieldException unused) {
            return null;
        } catch (NullPointerException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public void backHistory() {
        this.cordova.getActivity().runOnUiThread(new b0(this, 3));
    }

    public void clearCache() {
        this.cordova.getActivity().runOnUiThread(new b0(this, 1));
    }

    public void clearHistory() {
        this.cordova.getActivity().runOnUiThread(new b0(this, 2));
    }

    @Override // org.apache.cordova.o
    public boolean execute(String str, JSONArray jSONArray, d dVar) {
        try {
            if (str.equals("clearCache")) {
                clearCache();
            } else if (str.equals("show")) {
                this.cordova.getActivity().runOnUiThread(new b0(this, 0));
            } else if (str.equals("loadUrl")) {
                loadUrl(jSONArray.getString(0), jSONArray.optJSONObject(1));
            } else if (!str.equals("cancelLoadUrl")) {
                if (str.equals("clearHistory")) {
                    clearHistory();
                } else if (str.equals("backHistory")) {
                    backHistory();
                } else if (str.equals("overrideButton")) {
                    overrideButton(jSONArray.getString(0), jSONArray.getBoolean(1));
                } else if (str.equals("overrideBackbutton")) {
                    overrideBackbutton(jSONArray.getBoolean(0));
                } else if (str.equals("exitApp")) {
                    exitApp();
                } else if (str.equals("messageChannel")) {
                    synchronized (this.f4478f) {
                        try {
                            this.f4475c = dVar;
                            m0 m0Var = this.f4477e;
                            if (m0Var != null) {
                                m0Var.f4550c = true;
                                if (dVar != null) {
                                    dVar.sendPluginResult(m0Var);
                                }
                                this.f4477e = null;
                            }
                            m0 m0Var2 = this.f4476d;
                            if (m0Var2 != null) {
                                m0Var2.f4550c = true;
                                d dVar2 = this.f4475c;
                                if (dVar2 != null) {
                                    dVar2.sendPluginResult(m0Var2);
                                }
                                this.f4476d = null;
                            }
                        } finally {
                        }
                    }
                    return true;
                }
            }
            dVar.sendPluginResult(new m0(2, ""));
            return true;
        } catch (JSONException unused) {
            dVar.sendPluginResult(new m0(9));
            return false;
        }
    }

    public void exitApp() {
        this.webView.getPluginManager().k("exit", null);
    }

    public void fireJavascriptEvent(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("action", str);
        } catch (JSONException e9) {
            Log.e("CordovaApp", "Failed to create event message", e9);
        }
        m0 m0Var = new m0(jSONObject, 2);
        d dVar = this.f4475c;
        if (dVar != null) {
            m0Var.f4550c = true;
            if (dVar != null) {
                dVar.sendPluginResult(m0Var);
                return;
            }
            return;
        }
        if ("pause".equals(str)) {
            this.f4477e = m0Var;
        } else if ("resume".equals(str)) {
            this.f4477e = null;
        }
    }

    public boolean isBackbuttonOverridden() {
        return this.webView.isButtonPlumbedToJs(4);
    }

    public void loadUrl(String str, JSONObject jSONObject) throws JSONException {
        boolean z5;
        boolean z8;
        Objects.toString(jSONObject);
        HashMap map = new HashMap();
        int i6 = 0;
        if (jSONObject != null) {
            JSONArray jSONArrayNames = jSONObject.names();
            int i9 = 0;
            z5 = false;
            z8 = false;
            while (i6 < jSONArrayNames.length()) {
                String string = jSONArrayNames.getString(i6);
                if (string.equals("wait")) {
                    i9 = jSONObject.getInt(string);
                } else if (string.equalsIgnoreCase("openexternal")) {
                    z5 = jSONObject.getBoolean(string);
                } else if (string.equalsIgnoreCase("clearhistory")) {
                    z8 = jSONObject.getBoolean(string);
                } else {
                    Object obj = jSONObject.get(string);
                    if (obj != null) {
                        if (obj.getClass().equals(String.class)) {
                            map.put(string, (String) obj);
                        } else if (obj.getClass().equals(Boolean.class)) {
                            map.put(string, (Boolean) obj);
                        } else if (obj.getClass().equals(Integer.class)) {
                            map.put(string, (Integer) obj);
                        }
                    }
                }
                i6++;
            }
            i6 = i9;
        } else {
            z5 = false;
            z8 = false;
        }
        if (i6 > 0) {
            try {
                synchronized (this) {
                    wait(i6);
                }
            } catch (InterruptedException e9) {
                e9.printStackTrace();
            }
        }
        this.webView.showWebPage(str, z5, z8, map);
    }

    @Override // org.apache.cordova.o
    public void onDestroy() {
        this.webView.getContext().unregisterReceiver(this.f4474b);
    }

    public void overrideBackbutton(boolean z5) {
        this.webView.setButtonPlumbedToJs(4, z5);
    }

    public void overrideButton(String str, boolean z5) {
        if (str.equals("volumeup")) {
            this.webView.setButtonPlumbedToJs(24, z5);
        } else if (str.equals("volumedown")) {
            this.webView.setButtonPlumbedToJs(25, z5);
        } else if (str.equals("menubutton")) {
            this.webView.setButtonPlumbedToJs(82, z5);
        }
    }

    @Override // org.apache.cordova.o
    public void pluginInitialize() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PHONE_STATE");
        this.f4474b = new q2.d(4, this);
        this.webView.getContext().registerReceiver(this.f4474b, intentFilter);
    }

    public void sendResumeEvent(m0 m0Var) {
        synchronized (this.f4478f) {
            d dVar = this.f4475c;
            if (dVar != null) {
                m0Var.f4550c = true;
                if (dVar != null) {
                    dVar.sendPluginResult(m0Var);
                }
            } else {
                this.f4476d = m0Var;
            }
        }
    }
}
