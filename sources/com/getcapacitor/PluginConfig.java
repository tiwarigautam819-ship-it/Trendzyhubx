package com.getcapacitor;

import com.getcapacitor.util.JSONUtils;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class PluginConfig {
    private final JSONObject config;

    public PluginConfig(JSONObject jSONObject) {
        this.config = jSONObject;
    }

    public String[] getArray(String str) {
        return getArray(str, null);
    }

    public boolean getBoolean(String str, boolean z5) {
        return JSONUtils.getBoolean(this.config, str, z5);
    }

    public JSONObject getConfigJSON() {
        return this.config;
    }

    public int getInt(String str, int i6) {
        return JSONUtils.getInt(this.config, str, i6);
    }

    public JSONObject getObject(String str) {
        return JSONUtils.getObject(this.config, str);
    }

    public String getString(String str) {
        return getString(str, null);
    }

    public boolean isEmpty() {
        return this.config.length() == 0;
    }

    public String[] getArray(String str, String[] strArr) {
        return JSONUtils.getArray(this.config, str, strArr);
    }

    public String getString(String str, String str2) {
        return JSONUtils.getString(this.config, str, str2);
    }
}
