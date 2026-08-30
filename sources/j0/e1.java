package j0;

import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class e1 extends x2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WindowInsetsController f3265a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Window f3266b;

    public e1(WindowInsetsController windowInsetsController) {
        this.f3265a = windowInsetsController;
    }

    @Override // x2.a
    public final void n() {
        Window window = this.f3266b;
        if (window != null) {
            View decorView = window.getDecorView();
            decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() & (-17));
        }
        this.f3265a.setSystemBarsAppearance(0, 16);
    }

    @Override // x2.a
    public final void o() {
        Window window = this.f3266b;
        if (window != null) {
            View decorView = window.getDecorView();
            decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() & (-8193));
        }
        this.f3265a.setSystemBarsAppearance(0, 8);
    }
}
