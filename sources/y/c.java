package y;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f6045a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Activity f6046b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6047c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f6048d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f6049e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f6050f = false;

    public c(Activity activity) {
        this.f6046b = activity;
        this.f6047c = activity.hashCode();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        if (this.f6046b == activity) {
            this.f6046b = null;
            this.f6049e = true;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        if (!this.f6049e || this.f6050f || this.f6048d) {
            return;
        }
        Object obj = this.f6045a;
        try {
            Object obj2 = d.f6053c.get(activity);
            if (obj2 == obj && activity.hashCode() == this.f6047c) {
                d.f6057g.postAtFrontOfQueue(new s4.b(d.f6052b.get(activity), 22, obj2));
                this.f6050f = true;
                this.f6045a = null;
            }
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while fetching field values", th);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        if (this.f6046b == activity) {
            this.f6048d = true;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
