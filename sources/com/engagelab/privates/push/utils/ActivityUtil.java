package com.engagelab.privates.push.utils;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.engagelab.privates.common.log.MTCommonLog;
import java.lang.ref.WeakReference;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class ActivityUtil {
    private static final String TAG = "AcrivityUtil";
    private static final Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = new a();
    private static WeakReference<Activity> currentActivityRef = null;
    private static boolean isCallbackRegistered = false;

    public static Activity getCurrentActivity() {
        WeakReference<Activity> weakReference = currentActivityRef;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public static void registerActivityLifecycleCallbacks(Context context) {
        if (isCallbackRegistered || context == null) {
            return;
        }
        try {
            ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
            isCallbackRegistered = true;
            MTCommonLog.d(TAG, "Activity lifecycle callbacks registered successfully");
        } catch (Throwable th) {
            x.j(th, new StringBuilder("Failed to register activity lifecycle callbacks: "), TAG);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class a implements Application.ActivityLifecycleCallbacks {
        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (ActivityUtil.currentActivityRef == null || ActivityUtil.currentActivityRef.get() != activity) {
                return;
            }
            WeakReference unused = ActivityUtil.currentActivityRef = null;
            MTCommonLog.d(ActivityUtil.TAG, "Current activity destroyed: ".concat(activity.getClass().getName()));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (ActivityUtil.currentActivityRef == null || ActivityUtil.currentActivityRef.get() != activity) {
                return;
            }
            WeakReference unused = ActivityUtil.currentActivityRef = null;
            MTCommonLog.d(ActivityUtil.TAG, "Current activity cleared: ".concat(activity.getClass().getName()));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            WeakReference unused = ActivityUtil.currentActivityRef = new WeakReference(activity);
            MTCommonLog.d(ActivityUtil.TAG, "Current activity updated: ".concat(activity.getClass().getName()));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }
    }
}
