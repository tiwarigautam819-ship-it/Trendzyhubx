package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f implements Animation.AnimationListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l1 f513a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f514b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f515c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ g f516d;

    public f(l1 l1Var, ViewGroup viewGroup, View view, g gVar) {
        this.f513a = l1Var;
        this.f514b = viewGroup;
        this.f515c = view;
        this.f516d = gVar;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        d7.g.f("animation", animation);
        ViewGroup viewGroup = this.f514b;
        viewGroup.post(new e(viewGroup, this.f515c, this.f516d, 0));
        if (y0.J(2)) {
            Log.v("FragmentManager", "Animation from operation " + this.f513a + " has ended.");
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
        d7.g.f("animation", animation);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
        d7.g.f("animation", animation);
        if (y0.J(2)) {
            Log.v("FragmentManager", "Animation from operation " + this.f513a + " has reached onAnimationStart.");
        }
    }
}
