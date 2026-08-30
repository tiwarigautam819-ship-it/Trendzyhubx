package androidx.lifecycle;

import android.app.Activity;
import android.app.FragmentManager;
import android.os.Build;
import androidx.lifecycle.f0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class d0 {
    /* JADX WARN: Multi-variable type inference failed */
    public static void a(Activity activity, m mVar) {
        d7.g.f("event", mVar);
        if (activity instanceof t) {
            o lifecycle = ((t) activity).getLifecycle();
            if (lifecycle instanceof v) {
                ((v) lifecycle).e(mVar);
            }
        }
    }

    public static void b(Activity activity) {
        if (Build.VERSION.SDK_INT >= 29) {
            f0.a.Companion.getClass();
            activity.registerActivityLifecycleCallbacks(new f0.a());
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new f0(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }
}
