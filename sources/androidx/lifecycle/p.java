package androidx.lifecycle;

import android.app.Activity;
import android.os.Bundle;
import com.engagelab.privates.common.constants.MTCommonConstants;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class p extends g {
    @Override // androidx.lifecycle.g, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
        int i6 = f0.f694b;
        d0.b(activity);
    }
}
