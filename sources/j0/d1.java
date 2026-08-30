package j0;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d1 extends c1 {
    @Override // x2.a
    public final void n() {
        View decorView = this.f3258a.getDecorView();
        decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() & (-17));
    }
}
