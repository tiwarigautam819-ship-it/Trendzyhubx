package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f542a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f544c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ l1 f545d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ j f546e;

    public i(ViewGroup viewGroup, View view, boolean z5, l1 l1Var, j jVar) {
        this.f542a = viewGroup;
        this.f543b = view;
        this.f544c = z5;
        this.f545d = l1Var;
        this.f546e = jVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        d7.g.f("anim", animator);
        ViewGroup viewGroup = this.f542a;
        View view = this.f543b;
        viewGroup.endViewTransition(view);
        boolean z5 = this.f544c;
        l1 l1Var = this.f545d;
        if (z5) {
            int i6 = l1Var.f572a;
            d7.g.e("viewToAnimate", view);
            m1.a(i6, view, viewGroup);
        }
        j jVar = this.f546e;
        ((l1) jVar.f557c.f583a).c(jVar);
        if (y0.J(2)) {
            Log.v("FragmentManager", "Animator from operation " + l1Var + " has ended.");
        }
    }
}
