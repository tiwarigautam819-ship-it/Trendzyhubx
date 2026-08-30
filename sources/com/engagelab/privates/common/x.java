package com.engagelab.privates.common;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Map<String, SharedPreferences> f1294a = new HashMap();

    public static void a(Context context, long j3) {
        b(context).edit().putLong("key_in_app_last_show_time", j3).apply();
    }

    public static SharedPreferences b(Context context) {
        String str = "com.engagelab.privates.push.prefs.in_app." + v.a(context);
        SharedPreferences sharedPreferences = f1294a.get(str);
        if (sharedPreferences != null) {
            return sharedPreferences;
        }
        SharedPreferences sharedPreferences2 = context.getSharedPreferences(str, 0);
        f1294a.put(str, sharedPreferences2);
        return sharedPreferences2;
    }

    public static long a(Context context) {
        return b(context).getLong("key_in_app_last_show_time", -1L);
    }
}
