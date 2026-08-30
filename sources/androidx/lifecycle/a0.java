package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.getcapacitor.PluginMethod;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a0 {
    public static final void a(Activity activity, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
        d7.g.f(PluginMethod.RETURN_CALLBACK, activityLifecycleCallbacks);
        activity.registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
    }
}
