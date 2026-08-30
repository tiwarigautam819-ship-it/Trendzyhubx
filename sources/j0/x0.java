package j0;

import android.view.WindowInsets;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class x0 extends w0 {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public c0.c f3327n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public c0.c f3328o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public c0.c f3329p;

    public x0(b1 b1Var, WindowInsets windowInsets) {
        super(b1Var, windowInsets);
        this.f3327n = null;
        this.f3328o = null;
        this.f3329p = null;
    }

    @Override // j0.z0
    public c0.c g() {
        if (this.f3328o == null) {
            this.f3328o = c0.c.b(this.f3315c.getMandatorySystemGestureInsets());
        }
        return this.f3328o;
    }

    @Override // j0.z0
    public c0.c i() {
        if (this.f3327n == null) {
            this.f3327n = c0.c.b(this.f3315c.getSystemGestureInsets());
        }
        return this.f3327n;
    }

    @Override // j0.z0
    public c0.c k() {
        if (this.f3329p == null) {
            this.f3329p = c0.c.b(this.f3315c.getTappableElementInsets());
        }
        return this.f3329p;
    }

    @Override // j0.u0, j0.z0
    public b1 l(int i6, int i9, int i10, int i11) {
        return b1.g(this.f3315c.inset(i6, i9, i10, i11), null);
    }

    @Override // j0.v0, j0.z0
    public void q(c0.c cVar) {
    }
}
