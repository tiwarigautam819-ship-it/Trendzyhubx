package j0;

import android.os.Build;
import android.view.Window;
import android.view.WindowInsetsController;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final x2.a f3275a;

    public g1(WindowInsetsController windowInsetsController) {
        if (Build.VERSION.SDK_INT >= 35) {
            this.f3275a = new f1(windowInsetsController);
        } else {
            this.f3275a = new e1(windowInsetsController);
        }
    }

    public g1(Window window) {
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 35) {
            f1 f1Var = new f1(window.getInsetsController());
            f1Var.f3266b = window;
            this.f3275a = f1Var;
        } else if (i6 >= 30) {
            e1 e1Var = new e1(window.getInsetsController());
            e1Var.f3266b = window;
            this.f3275a = e1Var;
        } else if (i6 >= 26) {
            this.f3275a = new d1(window);
        } else {
            this.f3275a = new c1(window);
        }
    }
}
