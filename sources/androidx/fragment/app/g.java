package androidx.fragment.app;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import com.google.android.gms.internal.measurement.y4;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g extends k1 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final h f520c;

    public g(h hVar) {
        this.f520c = hVar;
    }

    @Override // androidx.fragment.app.k1
    public final void a(ViewGroup viewGroup) {
        d7.g.f("container", viewGroup);
        h hVar = this.f520c;
        l1 l1Var = (l1) hVar.f583a;
        View view = l1Var.f574c.P;
        view.clearAnimation();
        viewGroup.endViewTransition(view);
        ((l1) hVar.f583a).c(this);
        if (y0.J(2)) {
            Log.v("FragmentManager", "Animation from operation " + l1Var + " has been cancelled.");
        }
    }

    @Override // androidx.fragment.app.k1
    public final void b(ViewGroup viewGroup) {
        d7.g.f("container", viewGroup);
        h hVar = this.f520c;
        l1 l1Var = (l1) hVar.f583a;
        if (hVar.c()) {
            l1Var.c(this);
            return;
        }
        Context context = viewGroup.getContext();
        View view = l1Var.f574c.P;
        d7.g.e("context", context);
        y4 y4VarD = hVar.d(context);
        if (y4VarD == null) {
            throw new IllegalStateException("Required value was null.");
        }
        Animation animation = (Animation) y4VarD.f1990b;
        if (animation == null) {
            throw new IllegalStateException("Required value was null.");
        }
        if (l1Var.f572a != 1) {
            view.startAnimation(animation);
            l1Var.c(this);
            return;
        }
        viewGroup.startViewTransition(view);
        i0 i0Var = new i0(animation, viewGroup, view);
        i0Var.setAnimationListener(new f(l1Var, viewGroup, view, this));
        view.startAnimation(i0Var);
        if (y0.J(2)) {
            Log.v("FragmentManager", "Animation from operation " + l1Var + " has started.");
        }
    }
}
