package com.engagelab.privates.common;

import android.content.Context;
import android.content.SharedPreferences;
import com.engagelab.privates.common.global.MTGlobal;
import com.engagelab.privates.push.constants.MTPushConstants;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class a1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Map<String, SharedPreferences> f1090a = new HashMap();

    public static String a(Context context, int i6) {
        return k(context).getString("notification_layout_" + i6, "");
    }

    public static void b(Context context, int i6) {
        k(context).edit().putInt(MTPushConstants.NotificationBadge.KEY_BADGE, i6).commit();
    }

    public static void c(Context context, String str) {
        k(context).edit().putString("notification_show_time", str).commit();
    }

    public static void d(Context context, String str) {
        k(context).edit().putString("notification_silence_time", str).commit();
    }

    public static int e(Context context) {
        return k(context).getInt(MTPushConstants.NotificationBadge.KEY_BADGE, 0);
    }

    public static int f(Context context) {
        return k(context).getInt(MTPushConstants.NotificationCount.KEY_COUNT, 5);
    }

    public static String g(Context context) {
        return k(context).getString("notification_show_time", "");
    }

    public static String h(Context context) {
        return k(context).getString("notification_silence_time", "");
    }

    public static Set<String> i(Context context) {
        return k(context).getStringSet("override_message_id_set", new LinkedHashSet());
    }

    public static Set<String> j(Context context) {
        return k(context).getStringSet("revoke_message_id_set", new LinkedHashSet());
    }

    public static SharedPreferences k(Context context) {
        String str = "com.engagelab.privates.push.prefs." + MTGlobal.getAppKey(context);
        SharedPreferences sharedPreferences = f1090a.get(str);
        if (sharedPreferences != null) {
            return sharedPreferences;
        }
        SharedPreferences sharedPreferences2 = context.getSharedPreferences(str, 0);
        f1090a.put(str, sharedPreferences2);
        return sharedPreferences2;
    }

    public static void a(Context context, int i6, String str) {
        k(context).edit().putString("notification_layout_" + i6, str).commit();
    }

    public static void b(Context context, Set<String> set) {
        k(context).edit().putStringSet("revoke_message_id_set", set).commit();
    }

    public static void c(Context context, int i6) {
        k(context).edit().putInt(MTPushConstants.NotificationCount.KEY_COUNT, i6).commit();
    }

    public static long d(Context context) {
        return k(context).getLong("last_to_foreground_time", 0L);
    }

    public static Set<String> a(Context context, byte b3) {
        return k(context).getStringSet(a1.a.i(b3, "message_id_set_"), new LinkedHashSet());
    }

    public static String b(Context context, byte b3) {
        return k(context).getString("p_t_k_" + ((int) b3), "");
    }

    public static long c(Context context) {
        return k(context).getLong("last_to_background_time", 0L);
    }

    public static void b(Context context, long j3) {
        k(context).edit().putLong("last_to_foreground_time", j3).commit();
    }

    public static String b(Context context) {
        return k(context).getString("last_lifecycle_session_json", "");
    }

    public static void b(Context context, String str) {
        k(context).edit().putString("last_lifecycle_session_json", str).commit();
    }

    public static void a(Context context, byte b3, Set<String> set) {
        k(context).edit().putStringSet("message_id_set_" + ((int) b3), set).commit();
    }

    public static void a(Context context, Set<String> set) {
        k(context).edit().putStringSet("override_message_id_set", set).commit();
    }

    public static void a(Context context, byte b3, String str) {
        k(context).edit().putString("p_t_k_" + ((int) b3), str).commit();
    }

    public static void a(Context context, long j3) {
        k(context).edit().putLong("last_to_background_time", j3).commit();
    }

    public static String a(Context context) {
        return k(context).getString("last_lifecycle_session", "");
    }

    public static void a(Context context, String str) {
        k(context).edit().putString("last_lifecycle_session", str).commit();
    }
}
