package com.getcapacitor;

import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.push.constants.MTPushConstants;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class PluginCall {
    public static final String CALLBACK_ID_DANGLING = "-1";
    private final String callbackId;
    private final JSObject data;
    private final String methodName;
    private final MessageHandler msgHandler;
    private final String pluginId;
    private boolean keepAlive = false;

    @Deprecated
    private boolean isReleased = false;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class PluginCallDataTypeException extends Exception {
        public PluginCallDataTypeException(String str) {
            super(str);
        }
    }

    public PluginCall(MessageHandler messageHandler, String str, String str2, String str3, JSObject jSObject) {
        this.msgHandler = messageHandler;
        this.pluginId = str;
        this.callbackId = str2;
        this.methodName = str3;
        this.data = jSObject;
    }

    public void errorCallback(String str) {
        PluginResult pluginResult = new PluginResult();
        try {
            pluginResult.put(MTPushConstants.Message.KEY_MESSAGE, str);
        } catch (Exception e9) {
            Logger.error(Logger.tags("Plugin"), e9.toString(), null);
        }
        this.msgHandler.sendResponseMessage(this, null, pluginResult);
    }

    public JSArray getArray(String str) {
        return getArray(str, null);
    }

    public Boolean getBoolean(String str) {
        return getBoolean(str, null);
    }

    public String getCallbackId() {
        return this.callbackId;
    }

    public JSObject getData() {
        return this.data;
    }

    public Double getDouble(String str) {
        return getDouble(str, null);
    }

    public Float getFloat(String str) {
        return getFloat(str, null);
    }

    public Integer getInt(String str) {
        return getInt(str, null);
    }

    public Long getLong(String str) {
        return getLong(str, null);
    }

    public String getMethodName() {
        return this.methodName;
    }

    public JSObject getObject(String str) {
        return getObject(str, null);
    }

    public String getPluginId() {
        return this.pluginId;
    }

    public String getString(String str) {
        return getString(str, null);
    }

    @Deprecated
    public boolean hasOption(String str) {
        return this.data.has(str);
    }

    public boolean isKeptAlive() {
        return this.keepAlive;
    }

    @Deprecated
    public boolean isReleased() {
        return this.isReleased;
    }

    @Deprecated
    public boolean isSaved() {
        return isKeptAlive();
    }

    public void reject(String str, String str2, Exception exc, JSObject jSObject) {
        PluginResult pluginResult = new PluginResult();
        if (exc != null) {
            Logger.error(Logger.tags("Plugin"), str, exc);
        }
        try {
            pluginResult.put(MTPushConstants.Message.KEY_MESSAGE, str);
            pluginResult.put("code", str2);
            if (jSObject != null) {
                pluginResult.put(MTCoreConstants.Protocol.KEY_DATA, jSObject);
            }
        } catch (Exception e9) {
            Logger.error(Logger.tags("Plugin"), e9.getMessage(), e9);
        }
        this.msgHandler.sendResponseMessage(this, null, pluginResult);
    }

    public void release(Bridge bridge) {
        this.keepAlive = false;
        bridge.releaseCall(this);
        this.isReleased = true;
    }

    public void resolve(JSObject jSObject) {
        this.msgHandler.sendResponseMessage(this, new PluginResult(jSObject), null);
    }

    @Deprecated
    public void save() {
        setKeepAlive(Boolean.TRUE);
    }

    public void setKeepAlive(Boolean bool) {
        this.keepAlive = bool.booleanValue();
    }

    public void successCallback(PluginResult pluginResult) {
        if (CALLBACK_ID_DANGLING.equals(this.callbackId)) {
            return;
        }
        this.msgHandler.sendResponseMessage(this, pluginResult, null);
    }

    public void unavailable() {
        unavailable("not available");
    }

    public void unimplemented() {
        unimplemented("not implemented");
    }

    public JSArray getArray(String str, JSArray jSArray) {
        Object objOpt = this.data.opt(str);
        if (objOpt != null && (objOpt instanceof JSONArray)) {
            try {
                JSONArray jSONArray = (JSONArray) objOpt;
                ArrayList arrayList = new ArrayList();
                for (int i6 = 0; i6 < jSONArray.length(); i6++) {
                    arrayList.add(jSONArray.get(i6));
                }
                return new JSArray(arrayList.toArray());
            } catch (JSONException unused) {
            }
        }
        return jSArray;
    }

    public Boolean getBoolean(String str, Boolean bool) {
        Object objOpt = this.data.opt(str);
        return (objOpt != null && (objOpt instanceof Boolean)) ? (Boolean) objOpt : bool;
    }

    public Double getDouble(String str, Double d6) {
        Object objOpt = this.data.opt(str);
        if (objOpt != null) {
            if (objOpt instanceof Double) {
                return (Double) objOpt;
            }
            if (objOpt instanceof Float) {
                return Double.valueOf(((Float) objOpt).doubleValue());
            }
            if (objOpt instanceof Integer) {
                return Double.valueOf(((Integer) objOpt).doubleValue());
            }
        }
        return d6;
    }

    public Float getFloat(String str, Float f9) {
        Object objOpt = this.data.opt(str);
        if (objOpt != null) {
            if (objOpt instanceof Float) {
                return (Float) objOpt;
            }
            if (objOpt instanceof Double) {
                return Float.valueOf(((Double) objOpt).floatValue());
            }
            if (objOpt instanceof Integer) {
                return Float.valueOf(((Integer) objOpt).floatValue());
            }
        }
        return f9;
    }

    public Integer getInt(String str, Integer num) {
        Object objOpt = this.data.opt(str);
        return (objOpt != null && (objOpt instanceof Integer)) ? (Integer) objOpt : num;
    }

    public Long getLong(String str, Long l4) {
        Object objOpt = this.data.opt(str);
        return (objOpt != null && (objOpt instanceof Long)) ? (Long) objOpt : l4;
    }

    public JSObject getObject(String str, JSObject jSObject) {
        Object objOpt = this.data.opt(str);
        if (objOpt != null && (objOpt instanceof JSONObject)) {
            try {
                return JSObject.fromJSONObject((JSONObject) objOpt);
            } catch (JSONException unused) {
            }
        }
        return jSObject;
    }

    public String getString(String str, String str2) {
        Object objOpt = this.data.opt(str);
        return (objOpt != null && (objOpt instanceof String)) ? (String) objOpt : str2;
    }

    public void unavailable(String str) {
        reject(str, "UNAVAILABLE", null, null);
    }

    public void unimplemented(String str) {
        reject(str, "UNIMPLEMENTED", null, null);
    }

    public void resolve() {
        this.msgHandler.sendResponseMessage(this, null, null);
    }

    public void reject(String str, Exception exc, JSObject jSObject) {
        reject(str, null, exc, jSObject);
    }

    public void reject(String str, String str2, JSObject jSObject) {
        reject(str, str2, null, jSObject);
    }

    public void reject(String str, String str2, Exception exc) {
        reject(str, str2, exc, null);
    }

    public void reject(String str, JSObject jSObject) {
        reject(str, null, null, jSObject);
    }

    public void reject(String str, Exception exc) {
        reject(str, null, exc, null);
    }

    public void reject(String str, String str2) {
        reject(str, str2, null, null);
    }

    public void reject(String str) {
        reject(str, null, null, null);
    }
}
