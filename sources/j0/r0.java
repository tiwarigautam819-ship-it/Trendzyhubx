package j0;

import android.view.WindowInsets;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class r0 extends t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WindowInsets.Builder f3307a;

    public r0() {
        this.f3307a = a4.a.d();
    }

    @Override // j0.t0
    public b1 b() {
        a();
        b1 b1VarG = b1.g(this.f3307a.build(), null);
        b1VarG.f3254a.o(null);
        return b1VarG;
    }

    @Override // j0.t0
    public void c(c0.c cVar) {
        this.f3307a.setStableInsets(cVar.c());
    }

    @Override // j0.t0
    public void d(c0.c cVar) {
        this.f3307a.setSystemWindowInsets(cVar.c());
    }

    public r0(b1 b1Var) {
        WindowInsets.Builder builderD;
        super(b1Var);
        WindowInsets windowInsetsF = b1Var.f();
        if (windowInsetsF != null) {
            builderD = a4.a.e(windowInsetsF);
        } else {
            builderD = a4.a.d();
        }
        this.f3307a = builderD;
    }
}
