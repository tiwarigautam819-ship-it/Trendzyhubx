package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.engagelab.privates.common.constants.MTCommonConstants;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class g implements Application.ActivityLifecycleCallbacks {
    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
        d7.g.f("outState", bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
    }
}
