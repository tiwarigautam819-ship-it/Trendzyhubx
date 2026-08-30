package j0;

import android.view.View;
import android.view.WindowInsets;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class y0 extends x0 {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final b1 f3331q = b1.g(WindowInsets.CONSUMED, null);

    public y0(b1 b1Var, WindowInsets windowInsets) {
        super(b1Var, windowInsets);
    }

    @Override // j0.u0, j0.z0
    public c0.c f(int i6) {
        return c0.c.b(this.f3315c.getInsets(a1.a(i6)));
    }

    @Override // j0.u0, j0.z0
    public final void d(View view) {
    }
}
