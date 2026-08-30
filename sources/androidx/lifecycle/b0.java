package androidx.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import com.engagelab.privates.common.constants.MTCommonConstants;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b0 extends g {
    final /* synthetic */ c0 this$0;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static final class a extends g {
        final /* synthetic */ c0 this$0;

        public a(c0 c0Var) {
            this.this$0 = c0Var;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
            this.this$0.a();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
            c0 c0Var = this.this$0;
            int i6 = c0Var.f680a + 1;
            c0Var.f680a = i6;
            if (i6 == 1 && c0Var.f683d) {
                c0Var.f685f.e(m.ON_START);
                c0Var.f683d = false;
            }
        }
    }

    public b0(c0 c0Var) {
        this.this$0 = c0Var;
    }

    @Override // androidx.lifecycle.g, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
        if (Build.VERSION.SDK_INT < 29) {
            int i6 = f0.f694b;
            Fragment fragmentFindFragmentByTag = activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag");
            d7.g.d("null cannot be cast to non-null type androidx.lifecycle.ReportFragment", fragmentFindFragmentByTag);
            ((f0) fragmentFindFragmentByTag).f695a = this.this$0.h;
        }
    }

    @Override // androidx.lifecycle.g, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
        c0 c0Var = this.this$0;
        int i6 = c0Var.f681b - 1;
        c0Var.f681b = i6;
        if (i6 == 0) {
            Handler handler = c0Var.f684e;
            d7.g.c(handler);
            handler.postDelayed(c0Var.f686g, 700L);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreCreated(Activity activity, Bundle bundle) {
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
        a0.a(activity, new a(this.this$0));
    }

    @Override // androidx.lifecycle.g, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
        c0 c0Var = this.this$0;
        int i6 = c0Var.f680a - 1;
        c0Var.f680a = i6;
        if (i6 == 0 && c0Var.f682c) {
            c0Var.f685f.e(m.ON_STOP);
            c0Var.f683d = true;
        }
    }
}
