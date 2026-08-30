package g;

import android.app.Activity;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class z {
    public static OnBackInvokedDispatcher a(Activity activity) {
        return activity.getOnBackInvokedDispatcher();
    }

    public static OnBackInvokedCallback b(Object obj, f0 f0Var) {
        Objects.requireNonNull(f0Var);
        b.b0 b0Var = new b.b0(1, f0Var);
        b.q.g(obj).registerOnBackInvokedCallback(1000000, b0Var);
        return b0Var;
    }

    public static void c(Object obj, Object obj2) {
        b.q.g(obj).unregisterOnBackInvokedCallback(b.q.d(obj2));
    }
}
