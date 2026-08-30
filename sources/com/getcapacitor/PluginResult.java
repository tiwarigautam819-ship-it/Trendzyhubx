package com.getcapacitor;

import com.engagelab.privates.core.constants.MTCoreConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class PluginResult {
    private final JSObject json;

    public PluginResult() {
        this(new JSObject());
    }

    public JSObject getWrappedResult() {
        JSObject jSObject = new JSObject();
        jSObject.put("pluginId", this.json.getString("pluginId"));
        jSObject.put("methodName", this.json.getString("methodName"));
        jSObject.put(FirebaseAnalytics.Param.SUCCESS, (Object) this.json.getBoolean(FirebaseAnalytics.Param.SUCCESS, Boolean.FALSE));
        jSObject.put(MTCoreConstants.Protocol.KEY_DATA, (Object) this.json.getJSObject(MTCoreConstants.Protocol.KEY_DATA));
        jSObject.put("error", (Object) this.json.getJSObject("error"));
        return jSObject;
    }

    public PluginResult jsonPut(String str, Object obj) {
        try {
            this.json.put(str, obj);
            return this;
        } catch (Exception e9) {
            Logger.error(Logger.tags("Plugin"), "", e9);
            return this;
        }
    }

    public PluginResult put(String str, boolean z5) {
        return jsonPut(str, Boolean.valueOf(z5));
    }

    public String toString() {
        return this.json.toString();
    }

    public PluginResult(JSObject jSObject) {
        this.json = jSObject;
    }

    public PluginResult put(String str, double d6) {
        return jsonPut(str, Double.valueOf(d6));
    }

    public PluginResult put(String str, int i6) {
        return jsonPut(str, Integer.valueOf(i6));
    }

    public PluginResult put(String str, long j3) {
        return jsonPut(str, Long.valueOf(j3));
    }

    public PluginResult put(String str, Date date) {
        TimeZone timeZone = TimeZone.getTimeZone("UTC");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm'Z'");
        simpleDateFormat.setTimeZone(timeZone);
        return jsonPut(str, simpleDateFormat.format(date));
    }

    public PluginResult put(String str, Object obj) {
        return jsonPut(str, obj);
    }

    public PluginResult put(String str, PluginResult pluginResult) {
        return jsonPut(str, pluginResult.json);
    }
}
