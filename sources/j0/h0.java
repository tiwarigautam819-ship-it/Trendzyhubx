package j0;

import android.view.View;
import android.view.WindowInsetsController;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h0 {
    public static CharSequence a(View view) {
        return view.getStateDescription();
    }

    public static g1 b(View view) {
        WindowInsetsController windowInsetsController = view.getWindowInsetsController();
        if (windowInsetsController != null) {
            return new g1(windowInsetsController);
        }
        return null;
    }
}
