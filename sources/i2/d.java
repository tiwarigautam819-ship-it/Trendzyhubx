package i2;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.engagelab.privates.common.constants.MTCommonConstants;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Application.ActivityLifecycleCallbacks {
    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
        try {
            x1.r.c().execute(new c(1));
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
        d7.g.f("outState", bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
        try {
            if (d7.g.a(e.f3095c, Boolean.TRUE) && d7.g.a(activity.getLocalClassName(), "com.android.billingclient.api.ProxyBillingActivity")) {
                x1.r.c().execute(new c(0));
            }
        } catch (Exception unused) {
        }
    }
}
