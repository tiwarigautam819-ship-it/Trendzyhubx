package g;

import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class t implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2811a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f0 f2812b;

    public /* synthetic */ t(f0 f0Var, int i6) {
        this.f2811a = i6;
        this.f2812b = f0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ViewGroup viewGroup;
        switch (this.f2811a) {
            case 0:
                f0 f0Var = this.f2812b;
                if ((f0Var.f2689h0 & 1) != 0) {
                    f0Var.w(0);
                }
                if ((f0Var.f2689h0 & 4096) != 0) {
                    f0Var.w(108);
                }
                f0Var.f2688g0 = false;
                f0Var.f2689h0 = 0;
                break;
            default:
                f0 f0Var2 = this.f2812b;
                f0Var2.E.showAtLocation(f0Var2.D, 55, 0, 0);
                j0.o0 o0Var = f0Var2.G;
                if (o0Var != null) {
                    o0Var.b();
                }
                if (f0Var2.H && (viewGroup = f0Var2.I) != null && viewGroup.isLaidOut()) {
                    f0Var2.D.setAlpha(0.0f);
                    j0.o0 o0VarA = j0.k0.a(f0Var2.D);
                    o0VarA.a(1.0f);
                    f0Var2.G = o0VarA;
                    o0VarA.d(new w(0, this));
                } else {
                    f0Var2.D.setAlpha(1.0f);
                    f0Var2.D.setVisibility(0);
                }
                break;
        }
    }
}
