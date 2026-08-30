package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.os.Build;
import android.os.Bundle;
import com.engagelab.privates.common.constants.MTCommonConstants;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class f0 extends Fragment {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f694b = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public o5.c f695a;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static final class a implements Application.ActivityLifecycleCallbacks {
        public static final e0 Companion = new e0();

        public static final void registerIn(Activity activity) {
            Companion.getClass();
            d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
            activity.registerActivityLifecycleCallbacks(new a());
        }

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
        public void onActivityPostCreated(Activity activity, Bundle bundle) {
            d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
            int i6 = f0.f694b;
            d0.a(activity, m.ON_CREATE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
            int i6 = f0.f694b;
            d0.a(activity, m.ON_RESUME);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
            int i6 = f0.f694b;
            d0.a(activity, m.ON_START);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreDestroyed(Activity activity) {
            d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
            int i6 = f0.f694b;
            d0.a(activity, m.ON_DESTROY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPrePaused(Activity activity) {
            d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
            int i6 = f0.f694b;
            d0.a(activity, m.ON_PAUSE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreStopped(Activity activity) {
            d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
            int i6 = f0.f694b;
            d0.a(activity, m.ON_STOP);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
            d7.g.f("bundle", bundle);
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

    public final void a(m mVar) {
        if (Build.VERSION.SDK_INT < 29) {
            Activity activity = getActivity();
            d7.g.e(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
            d0.a(activity, mVar);
        }
    }

    @Override // android.app.Fragment
    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        a(m.ON_CREATE);
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        a(m.ON_DESTROY);
        this.f695a = null;
    }

    @Override // android.app.Fragment
    public final void onPause() {
        super.onPause();
        a(m.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        o5.c cVar = this.f695a;
        if (cVar != null) {
            ((c0) cVar.f4446b).a();
        }
        a(m.ON_RESUME);
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        o5.c cVar = this.f695a;
        if (cVar != null) {
            c0 c0Var = (c0) cVar.f4446b;
            int i6 = c0Var.f680a + 1;
            c0Var.f680a = i6;
            if (i6 == 1 && c0Var.f683d) {
                c0Var.f685f.e(m.ON_START);
                c0Var.f683d = false;
            }
        }
        a(m.ON_START);
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        a(m.ON_STOP);
    }
}
