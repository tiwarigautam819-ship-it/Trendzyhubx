package com.engagelab.privates.common.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class SystemUtil {
    private static final String TAG = "SystemUtil";

    public static String getCountry(Context context) {
        Object objInvoke;
        try {
            Object systemService = context.getApplicationContext().getSystemService("country_detector");
            if (systemService == null || (objInvoke = systemService.getClass().getDeclaredMethod("detectCountry", null).invoke(systemService, null)) == null) {
                return "";
            }
            String str = (String) objInvoke.getClass().getDeclaredMethod("getCountryIso", null).invoke(objInvoke, null);
            int iIntValue = ((Integer) objInvoke.getClass().getDeclaredMethod("getSource", null).invoke(objInvoke, null)).intValue();
            return (iIntValue == 0 || iIntValue == 1) ? str : "";
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String getSystemProperty(Context context, String str, String str2) {
        try {
            return (String) ReflectUtil.invokeStaticMethod(context.getClassLoader().loadClass("android.os.SystemProperties"), "get", new Object[]{str, str2}, new Class[]{String.class, String.class});
        } catch (Throwable unused) {
            return "";
        }
    }

    public static boolean isNetworkConnecting(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                if (activeNetworkInfo.isConnected()) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static int isSystemApp(Context context) {
        try {
            String str = context.getApplicationInfo().sourceDir;
            if (TextUtils.isEmpty(str)) {
                return 0;
            }
            if (str.startsWith("/system/app/")) {
                return 1;
            }
            str.startsWith("/data/app/");
        } catch (Throwable unused) {
        }
        return 0;
    }
}
