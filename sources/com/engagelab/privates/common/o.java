package com.engagelab.privates.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import com.engagelab.privates.common.global.MTGlobal;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.core.global.MTCoreGlobal;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile o f1233a;

    public static o a() {
        if (f1233a == null) {
            synchronized (o.class) {
                try {
                    if (f1233a == null) {
                        f1233a = new o();
                    }
                } finally {
                }
            }
        }
        return f1233a;
    }

    public final void b(Context context, String str) {
        d(context).edit().putString("device_model", str).commit();
    }

    public final String c(Context context) {
        return d(context).getString("device_model", "");
    }

    public final SharedPreferences d(Context context) {
        return context.getSharedPreferences("com.engagelab.privates.core.prefs", 0);
    }

    public final void b(Context context) {
        r.b(context, 0L);
        r.c(context, "");
        r.b(context, "");
        r.d(context, 0);
        r.a(context, 0L);
        MTCoreGlobal.setUserId(0L);
        MTCoreGlobal.setRegistrationId("");
        MTCoreGlobal.setPassword("");
        MTCoreGlobal.setSeedId(0);
        MTCoreGlobal.setServerTime(0L);
        MTGlobal.setDeviceId(context, "");
    }

    public void a(Context context) {
        if (!MTCoreGlobal.getResetOnDeviceChangeEnabled()) {
            MTCommonLog.d("RegFingerHelper", "device migration is disabled, skip check");
            return;
        }
        try {
            String str = Build.MODEL;
            if (TextUtils.isEmpty(str)) {
                MTCommonLog.w("RegFingerHelper", "current device model is empty, skip check");
            } else if (a(context, str)) {
                MTCommonLog.i("RegFingerHelper", "device migration detected, registration info cleared");
            } else {
                MTCommonLog.d("RegFingerHelper", "device model unchanged, no migration needed");
            }
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("checkDeviceMigration failed: "), "RegFingerHelper");
        }
    }

    public final boolean a(Context context, String str) {
        String strC = c(context);
        if (TextUtils.isEmpty(strC)) {
            b(context, str);
            return false;
        }
        if (strC.equals(str)) {
            return false;
        }
        b(context);
        b(context, str);
        return true;
    }
}
