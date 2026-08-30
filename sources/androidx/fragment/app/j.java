package androidx.fragment.app;

import android.animation.AnimatorSet;
import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.internal.measurement.y4;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j extends k1 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final h f557c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public AnimatorSet f558d;

    public j(h hVar) {
        this.f557c = hVar;
    }

    @Override // androidx.fragment.app.k1
    public final void a(ViewGroup viewGroup) {
        d7.g.f("container", viewGroup);
        AnimatorSet animatorSet = this.f558d;
        h hVar = this.f557c;
        if (animatorSet == null) {
            ((l1) hVar.f583a).c(this);
            return;
        }
        l1 l1Var = (l1) hVar.f583a;
        if (!l1Var.f578g) {
            animatorSet.end();
        } else if (Build.VERSION.SDK_INT >= 26) {
            l.f569a.a(animatorSet);
        }
        if (y0.J(2)) {
            StringBuilder sb = new StringBuilder("Animator from operation ");
            sb.append(l1Var);
            sb.append(" has been canceled");
            sb.append(l1Var.f578g ? " with seeking." : ".");
            sb.append(' ');
            Log.v("FragmentManager", sb.toString());
        }
    }

    @Override // androidx.fragment.app.k1
    public final void b(ViewGroup viewGroup) {
        d7.g.f("container", viewGroup);
        l1 l1Var = (l1) this.f557c.f583a;
        AnimatorSet animatorSet = this.f558d;
        if (animatorSet == null) {
            l1Var.c(this);
            return;
        }
        animatorSet.start();
        if (y0.J(2)) {
            Log.v("FragmentManager", "Animator from operation " + l1Var + " has started.");
        }
    }

    @Override // androidx.fragment.app.k1
    public final void c(b.b bVar, ViewGroup viewGroup) {
        d7.g.f("backEvent", bVar);
        d7.g.f("container", viewGroup);
        l1 l1Var = (l1) this.f557c.f583a;
        AnimatorSet animatorSet = this.f558d;
        if (animatorSet == null) {
            l1Var.c(this);
            return;
        }
        if (Build.VERSION.SDK_INT < 34 || !l1Var.f574c.f476m) {
            return;
        }
        if (y0.J(2)) {
            Log.v("FragmentManager", "Adding BackProgressCallbacks for Animators to operation " + l1Var);
        }
        long jA = k.f565a.a(animatorSet);
        long j3 = (long) (bVar.f776c * jA);
        if (j3 == 0) {
            j3 = 1;
        }
        if (j3 == jA) {
            j3 = jA - 1;
        }
        if (y0.J(2)) {
            Log.v("FragmentManager", "Setting currentPlayTime to " + j3 + " for Animator " + animatorSet + " on operation " + l1Var);
        }
        l.f569a.b(animatorSet, j3);
    }

    @Override // androidx.fragment.app.k1
    public final void d(ViewGroup viewGroup) {
        j jVar;
        d7.g.f("container", viewGroup);
        h hVar = this.f557c;
        if (hVar.c()) {
            return;
        }
        Context context = viewGroup.getContext();
        d7.g.e("context", context);
        y4 y4VarD = hVar.d(context);
        this.f558d = y4VarD != null ? (AnimatorSet) y4VarD.f1991c : null;
        l1 l1Var = (l1) hVar.f583a;
        c0 c0Var = l1Var.f574c;
        boolean z5 = l1Var.f572a == 3;
        View view = c0Var.P;
        viewGroup.startViewTransition(view);
        AnimatorSet animatorSet = this.f558d;
        if (animatorSet != null) {
            jVar = this;
            animatorSet.addListener(new i(viewGroup, view, z5, l1Var, jVar));
        } else {
            jVar = this;
        }
        AnimatorSet animatorSet2 = jVar.f558d;
        if (animatorSet2 != null) {
            animatorSet2.setTarget(view);
        }
    }
}
