package j0;

import android.view.WindowInsets;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class v0 extends u0 {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public c0.c f3321m;

    public v0(b1 b1Var, WindowInsets windowInsets) {
        super(b1Var, windowInsets);
        this.f3321m = null;
    }

    @Override // j0.z0
    public b1 b() {
        return b1.g(this.f3315c.consumeStableInsets(), null);
    }

    @Override // j0.z0
    public b1 c() {
        return b1.g(this.f3315c.consumeSystemWindowInsets(), null);
    }

    @Override // j0.z0
    public final c0.c h() {
        if (this.f3321m == null) {
            WindowInsets windowInsets = this.f3315c;
            this.f3321m = c0.c.a(windowInsets.getStableInsetLeft(), windowInsets.getStableInsetTop(), windowInsets.getStableInsetRight(), windowInsets.getStableInsetBottom());
        }
        return this.f3321m;
    }

    @Override // j0.z0
    public boolean m() {
        return this.f3315c.isConsumed();
    }

    @Override // j0.z0
    public void q(c0.c cVar) {
        this.f3321m = cVar;
    }
}
