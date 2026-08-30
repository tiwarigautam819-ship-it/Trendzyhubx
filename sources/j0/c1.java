package j0;

import android.view.View;
import android.view.Window;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class c1 extends x2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Window f3258a;

    public c1(Window window) {
        this.f3258a = window;
    }

    @Override // x2.a
    public final void o() {
        View decorView = this.f3258a.getDecorView();
        decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() & (-8193));
    }
}
