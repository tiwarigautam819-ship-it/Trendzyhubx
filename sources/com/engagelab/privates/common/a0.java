package com.engagelab.privates.common;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.WindowManager;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.utils.Utils;
import com.engagelab.privates.push.utils.ActivityUtil;
import java.lang.reflect.Field;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1087a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f1088b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WindowManager f1089c;

    public boolean a(Context context, String str, f0 f0Var) {
        try {
            this.f1088b = str;
            d0 d0VarE = f0Var.e();
            View viewD = f0Var.d();
            if (viewD == null) {
                MTCommonLog.w("InAppWinManager", "  inapp show failed, wbView is null");
                return false;
            }
            WindowManager windowManagerForActivity = Utils.getWindowManagerForActivity(str);
            this.f1089c = windowManagerForActivity;
            if (windowManagerForActivity == null) {
                Activity activityA = a(context);
                MTCommonLog.w("InAppWinManager", "mWindowManager is null, getCurrentActivity activity=" + activityA);
                if (activityA != null && TextUtils.equals(activityA.getClass().getName(), str)) {
                    this.f1089c = activityA.getWindowManager();
                }
            }
            if (this.f1089c == null) {
                MTCommonLog.w("InAppWinManager", "  inapp show failed, wm is null");
                return false;
            }
            WindowManager.LayoutParams layoutParamsA = a(context, d0VarE);
            if (layoutParamsA == null) {
                MTCommonLog.w("InAppWinManager", "  inapp show failed, layout param is null");
                return false;
            }
            this.f1089c.addView(viewD, layoutParamsA);
            f0Var.i();
            this.f1087a = true;
            u.h(context);
            return true;
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("  inapp show failed, "), "InAppWinManager");
            return false;
        }
    }

    public boolean b(f0 f0Var) {
        return (f0Var == null || f0Var.d() == null) ? false : true;
    }

    public static int b(Context context) {
        int dimensionPixelSize;
        if (context != null) {
            try {
                dimensionPixelSize = context.getResources().getDimensionPixelSize(context.getResources().getIdentifier("status_bar_height", "dimen", "android"));
            } catch (Throwable th) {
                q2.x.j(th, new StringBuilder("get status bar height error, "), "InAppWinManager");
                dimensionPixelSize = 48;
            }
        } else {
            dimensionPixelSize = 48;
        }
        MTCommonLog.d("InAppWinManager", "status bar height: " + dimensionPixelSize);
        return dimensionPixelSize;
    }

    public static Activity a(Context context) {
        Activity currentActivity;
        try {
            currentActivity = ActivityUtil.getCurrentActivity();
        } catch (Throwable unused) {
        }
        if (currentActivity != null) {
            MTCommonLog.d("InAppWinManager", "inApp getCurrentActivity from ActivityUtil:" + currentActivity);
            return currentActivity;
        }
        if (context != null) {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object objInvoke = cls.getMethod("currentActivityThread", null).invoke(null, null);
            Field declaredField = cls.getDeclaredField("mActivities");
            declaredField.setAccessible(true);
            Map map = (Map) declaredField.get(objInvoke);
            if (map == null) {
                return null;
            }
            for (Object obj : map.values()) {
                Class<?> cls2 = obj.getClass();
                Field declaredField2 = cls2.getDeclaredField("paused");
                declaredField2.setAccessible(true);
                if (!declaredField2.getBoolean(obj)) {
                    Field declaredField3 = cls2.getDeclaredField(MTCommonConstants.Lifecycle.KEY_ACTIVITY);
                    declaredField3.setAccessible(true);
                    Activity activity = (Activity) declaredField3.get(obj);
                    if (activity != null && activity.getPackageName().equals(context.getPackageName())) {
                        return activity;
                    }
                    return null;
                }
            }
        }
        return null;
    }

    public boolean a(String str) {
        MTCommonLog.d("InAppWinManager", "[checkShouldDestroy], showActivityName: " + this.f1088b + ", curActivityName: " + str);
        return TextUtils.equals(str, this.f1088b);
    }

    public boolean a(f0 f0Var) {
        if (f0Var != null && f0Var.d() != null) {
            boolean zIsShown = f0Var.d().isShown();
            MTCommonLog.d("InAppWinManager", "webview is displayed, status: " + zIsShown + ", isDisplayed: " + this.f1087a);
            if (zIsShown && this.f1087a) {
                return true;
            }
        }
        return false;
    }

    public void a(Context context, f0 f0Var) {
        if (f0Var == null || context == null) {
            return;
        }
        try {
            View viewD = f0Var.d();
            if (viewD != null) {
                if (this.f1089c != null && a(f0Var)) {
                    this.f1089c.removeViewImmediate(viewD);
                    this.f1087a = false;
                    MTCommonLog.d("InAppWinManager", "[destroy] - window manager removeViewImmediate view succeed.");
                }
                f0Var.h();
            }
            this.f1088b = "";
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("  inapp destroy failed, "), "InAppWinManager");
        }
    }

    public final WindowManager.LayoutParams a(Context context, d0 d0Var) {
        if (d0Var == null || context == null) {
            return null;
        }
        try {
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(d0Var.g(), d0Var.f(), MTCommonConstants.MainWhat.ON_NETWORK_CONNECTED, d0Var.e() | 131112, -3);
            layoutParams.x = 0;
            layoutParams.y = b(context);
            layoutParams.dimAmount = 1.0f;
            layoutParams.gravity = d0Var.d();
            layoutParams.windowAnimations = 0;
            return layoutParams;
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("[getLayoutParams] error."), "InAppWinManager");
            return null;
        }
    }
}
