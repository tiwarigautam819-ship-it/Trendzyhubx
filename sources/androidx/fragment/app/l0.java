package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l0 implements View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g1 f570a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m0 f571b;

    public l0(m0 m0Var, g1 g1Var) {
        this.f571b = m0Var;
        this.f570a = g1Var;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        g1 g1Var = this.f570a;
        c0 c0Var = g1Var.f528c;
        g1Var.k();
        o.i((ViewGroup) c0Var.P.getParent(), this.f571b.f584a).h();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
