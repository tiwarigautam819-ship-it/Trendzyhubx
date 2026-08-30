package b;

import android.app.Activity;
import android.window.OnBackInvokedDispatcher;
import com.engagelab.privates.common.constants.MTCommonConstants;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f800a = new h();

    public final OnBackInvokedDispatcher a(Activity activity) {
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
        OnBackInvokedDispatcher onBackInvokedDispatcher = activity.getOnBackInvokedDispatcher();
        d7.g.e("activity.getOnBackInvokedDispatcher()", onBackInvokedDispatcher);
        return onBackInvokedDispatcher;
    }
}
