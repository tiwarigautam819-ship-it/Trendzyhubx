package j0;

import android.view.View;
import android.view.WindowInsets;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class e0 {
    public static b1 a(View view) {
        WindowInsets rootWindowInsets = view.getRootWindowInsets();
        if (rootWindowInsets == null) {
            return null;
        }
        b1 b1VarG = b1.g(rootWindowInsets, null);
        z0 z0Var = b1VarG.f3254a;
        z0Var.p(b1VarG);
        z0Var.d(view.getRootView());
        return b1VarG;
    }

    public static void b(View view, int i6, int i9) {
        view.setScrollIndicators(i6, i9);
    }
}
