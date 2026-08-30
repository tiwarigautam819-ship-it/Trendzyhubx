package com.getcapacitor.util;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class JSONUtils {
    public static String[] getArray(JSONObject jSONObject, String str, String[] strArr) {
        try {
            JSONArray jSONArray = getDeepestObject(jSONObject, str).getJSONArray(getDeepestKey(str));
            if (jSONArray != null) {
                int length = jSONArray.length();
                String[] strArr2 = new String[length];
                for (int i6 = 0; i6 < length; i6++) {
                    strArr2[i6] = (String) jSONArray.get(i6);
                }
                return strArr2;
            }
        } catch (JSONException unused) {
        }
        return strArr;
    }

    public static boolean getBoolean(JSONObject jSONObject, String str, boolean z5) {
        try {
            return getDeepestObject(jSONObject, str).getBoolean(getDeepestKey(str));
        } catch (JSONException unused) {
            return z5;
        }
    }

    private static String getDeepestKey(String str) {
        String[] strArrSplit = str.split("\\.");
        if (strArrSplit.length > 0) {
            return strArrSplit[strArrSplit.length - 1];
        }
        return null;
    }

    private static JSONObject getDeepestObject(JSONObject jSONObject, String str) throws JSONException {
        String[] strArrSplit = str.split("\\.");
        for (int i6 = 0; i6 < strArrSplit.length - 1; i6++) {
            jSONObject = jSONObject.getJSONObject(strArrSplit[i6]);
        }
        return jSONObject;
    }

    public static int getInt(JSONObject jSONObject, String str, int i6) {
        try {
            return getDeepestObject(jSONObject, str).getInt(getDeepestKey(str));
        } catch (JSONException unused) {
            return i6;
        }
    }

    public static JSONObject getObject(JSONObject jSONObject, String str) {
        try {
            return getDeepestObject(jSONObject, str).getJSONObject(getDeepestKey(str));
        } catch (JSONException unused) {
            return null;
        }
    }

    public static String getString(JSONObject jSONObject, String str, String str2) {
        String string;
        try {
            string = getDeepestObject(jSONObject, str).getString(getDeepestKey(str));
        } catch (JSONException unused) {
        }
        return string == null ? str2 : string;
    }
}
