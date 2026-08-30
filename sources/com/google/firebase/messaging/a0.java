package com.google.firebase.messaging;

import android.text.TextUtils;
import android.util.Log;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final long f2055d = TimeUnit.DAYS.toMillis(7);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2056a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f2057b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f2058c;

    public a0(String str, String str2, long j3) {
        this.f2056a = str;
        this.f2057b = str2;
        this.f2058c = j3;
    }

    public static String a(String str, String str2, long j3) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("token", str);
            jSONObject.put("appVersion", str2);
            jSONObject.put("timestamp", j3);
            return jSONObject.toString();
        } catch (JSONException e9) {
            Log.w("FirebaseMessaging", "Failed to encode token: " + e9);
            return null;
        }
    }

    public static a0 b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!str.startsWith("{")) {
            return new a0(str, null, 0L);
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            return new a0(jSONObject.getString("token"), jSONObject.getString("appVersion"), jSONObject.getLong("timestamp"));
        } catch (JSONException e9) {
            Log.w("FirebaseMessaging", "Failed to parse token: " + e9);
            return null;
        }
    }
}
