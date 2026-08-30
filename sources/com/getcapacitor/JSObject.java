package com.getcapacitor;

import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class JSObject extends JSONObject {
    public JSObject() {
    }

    public static JSObject fromJSONObject(JSONObject jSONObject) {
        Iterator<String> itKeys = jSONObject.keys();
        ArrayList arrayList = new ArrayList();
        while (itKeys.hasNext()) {
            arrayList.add(itKeys.next());
        }
        return new JSObject(jSONObject, (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    public Boolean getBool(String str) {
        return getBoolean(str, null);
    }

    public Boolean getBoolean(String str, Boolean bool) {
        try {
            return Boolean.valueOf(super.getBoolean(str));
        } catch (JSONException unused) {
            return bool;
        }
    }

    public Integer getInteger(String str) {
        return getInteger(str, null);
    }

    public JSObject getJSObject(String str) {
        try {
            return getJSObject(str, null);
        } catch (JSONException unused) {
            return null;
        }
    }

    @Override // org.json.JSONObject
    public String getString(String str) {
        return getString(str, null);
    }

    public JSObject putSafe(String str, Object obj) {
        return (JSObject) super.put(str, obj);
    }

    public JSObject(String str) {
        super(str);
    }

    public Integer getInteger(String str, Integer num) {
        try {
            return Integer.valueOf(super.getInt(str));
        } catch (JSONException unused) {
            return num;
        }
    }

    public JSObject getJSObject(String str, JSObject jSObject) {
        try {
            Object obj = get(str);
            if (obj instanceof JSONObject) {
                Iterator<String> itKeys = ((JSONObject) obj).keys();
                ArrayList arrayList = new ArrayList();
                while (itKeys.hasNext()) {
                    arrayList.add(itKeys.next());
                }
                return new JSObject((JSONObject) obj, (String[]) arrayList.toArray(new String[arrayList.size()]));
            }
        } catch (JSONException unused) {
        }
        return jSObject;
    }

    public String getString(String str, String str2) {
        return !super.isNull(str) ? super.getString(str) : str2;
    }

    public JSObject(JSONObject jSONObject, String[] strArr) {
        super(jSONObject, strArr);
    }

    @Override // org.json.JSONObject
    public JSObject put(String str, boolean z5) {
        try {
            super.put(str, z5);
        } catch (JSONException unused) {
        }
        return this;
    }

    @Override // org.json.JSONObject
    public JSObject put(String str, int i6) {
        try {
            super.put(str, i6);
        } catch (JSONException unused) {
        }
        return this;
    }

    @Override // org.json.JSONObject
    public JSObject put(String str, long j3) {
        try {
            super.put(str, j3);
        } catch (JSONException unused) {
        }
        return this;
    }

    @Override // org.json.JSONObject
    public JSObject put(String str, double d6) {
        try {
            super.put(str, d6);
        } catch (JSONException unused) {
        }
        return this;
    }

    @Override // org.json.JSONObject
    public JSObject put(String str, Object obj) {
        try {
            super.put(str, obj);
        } catch (JSONException unused) {
        }
        return this;
    }

    public JSObject put(String str, String str2) {
        try {
            super.put(str, (Object) str2);
        } catch (JSONException unused) {
        }
        return this;
    }
}
