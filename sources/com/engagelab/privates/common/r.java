package com.engagelab.privates.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.engagelab.privates.common.global.MTGlobal;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.core.global.MTCoreGlobal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Map<String, SharedPreferences> f1254a = new HashMap();

    public static void a(Context context, JSONArray jSONArray) {
        m(context).edit().putString("tcp_address_l", jSONArray != null ? jSONArray.toString() : null).commit();
    }

    public static void b(Context context, JSONArray jSONArray) {
        m(context).edit().putString("tcp_address_ssl_l", jSONArray != null ? jSONArray.toString() : null).commit();
    }

    public static void c(Context context, Set<String> set) {
        m(context).edit().putStringSet("udp_address", set).commit();
    }

    public static Set<String> d(Context context) {
        return m(context).getStringSet(MTCoreGlobal.getServiceNode() == MTCoreConstants.ServiceNode.REGION_CHINA ? "g_s_ar_cn" : "g_s_ar", new LinkedHashSet());
    }

    public static void e(Context context, int i6) {
        m(context).edit().putInt("tcp_address_ssl_c_v", i6).commit();
    }

    public static int f(Context context) {
        return m(context).getInt("login_code", -1);
    }

    public static String g(Context context) {
        return m(context).getString("p_w_d", "");
    }

    public static byte h(Context context) {
        return (byte) m(context).getInt("platform_state", 0);
    }

    public static int i(Context context) {
        return m(context).getInt("register_code", -1);
    }

    public static String j(Context context) {
        return m(context).getString(MTCoreConstants.Register.KEY_REGISTRATION_ID, "");
    }

    public static int k(Context context) {
        return m(context).getInt(MTCoreConstants.Login.KEY_SEED_ID, 0);
    }

    public static long l(Context context) {
        return m(context).getLong(MTCoreConstants.Login.KEY_SERVER_TIME, 0L);
    }

    public static SharedPreferences m(Context context) {
        String str = "com.engagelab.privates.core.prefs." + MTGlobal.getAppKey(context);
        SharedPreferences sharedPreferences = f1254a.get(str);
        if (sharedPreferences != null) {
            return sharedPreferences;
        }
        SharedPreferences sharedPreferences2 = context.getSharedPreferences(str, 0);
        f1254a.put(str, sharedPreferences2);
        return sharedPreferences2;
    }

    public static List<String> n(Context context) {
        ArrayList arrayList = new ArrayList();
        try {
            String string = m(context).getString("tcp_address_l", null);
            if (!TextUtils.isEmpty(string)) {
                JSONArray jSONArray = new JSONArray(string);
                for (int i6 = 0; i6 < jSONArray.length(); i6++) {
                    arrayList.add(jSONArray.getString(i6));
                }
            }
        } catch (Throwable unused) {
        }
        return arrayList;
    }

    public static List<String> o(Context context) {
        ArrayList arrayList = new ArrayList();
        try {
            String string = m(context).getString("tcp_address_ssl_l", null);
            if (!TextUtils.isEmpty(string)) {
                JSONArray jSONArray = new JSONArray(string);
                for (int i6 = 0; i6 < jSONArray.length(); i6++) {
                    arrayList.add(jSONArray.getString(i6));
                }
            }
        } catch (Throwable unused) {
        }
        return arrayList;
    }

    public static int p(Context context) {
        return m(context).getInt("tcp_address_ssl_c_v", -1);
    }

    public static Set<String> q(Context context) {
        return m(context).getStringSet("udp_address", new LinkedHashSet());
    }

    public static long r(Context context) {
        return m(context).getLong(MTCoreConstants.Register.KEY_USER_ID, 0L);
    }

    public static String s(Context context) {
        return m(context).getString("user_language", "");
    }

    public static void c(Context context, int i6) {
        m(context).edit().putInt("register_code", i6).commit();
    }

    public static Set<String> e(Context context) {
        return m(context).getStringSet("http_address", new LinkedHashSet());
    }

    public static void a(Context context, Set<String> set) {
        m(context).edit().putStringSet(MTCoreGlobal.getServiceNode() == MTCoreConstants.ServiceNode.REGION_CHINA ? "g_s_ar_cn" : "g_s_ar", set).commit();
    }

    public static void b(Context context, Set<String> set) {
        m(context).edit().putStringSet("http_address", set).commit();
    }

    public static void c(Context context, String str) {
        m(context).edit().putString(MTCoreConstants.Register.KEY_REGISTRATION_ID, str).commit();
    }

    public static void b(Context context, long j3) {
        m(context).edit().putLong(MTCoreConstants.Register.KEY_USER_ID, j3).commit();
    }

    public static boolean c(Context context) {
        return m(context).getBoolean("connect_state", true);
    }

    public static void d(Context context, int i6) {
        m(context).edit().putInt(MTCoreConstants.Login.KEY_SEED_ID, i6).commit();
    }

    public static void b(Context context, String str) {
        m(context).edit().putString("p_w_d", str).commit();
    }

    public static void d(Context context, String str) {
        m(context).edit().putString("user_language", str).commit();
    }

    public static void a(Context context, long j3) {
        m(context).edit().putLong(MTCoreConstants.Login.KEY_SERVER_TIME, j3).commit();
    }

    public static void b(Context context, int i6) {
        m(context).edit().putInt("login_code", i6).commit();
    }

    public static void a(Context context, boolean z5) {
        m(context).edit().putBoolean("connect_state", z5).commit();
    }

    public static int b(Context context) {
        return m(context).getInt("connect_ssl_c_v", -1);
    }

    public static void a(Context context, byte b3) {
        m(context).edit().putInt("platform_state", b3).commit();
    }

    public static void a(Context context, int i6) {
        m(context).edit().putInt("connect_ssl_c_v", i6).commit();
    }

    public static String a(Context context) {
        return m(context).getString("connect_ssl_crt", "");
    }

    public static void a(Context context, String str) {
        m(context).edit().putString("connect_ssl_crt", str).commit();
    }
}
