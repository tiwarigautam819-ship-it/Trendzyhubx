package j0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import androidx.appcompat.widget.ActionBarOverlayLayout;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class n0 extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3296a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3297b;

    public n0(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.f3297b = actionBarOverlayLayout;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        switch (this.f3296a) {
            case 0:
                ((p0) this.f3297b).b();
                break;
            default:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.f3297b;
                actionBarOverlayLayout.E = null;
                actionBarOverlayLayout.f217j = false;
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f3296a) {
            case 0:
                ((p0) this.f3297b).a();
                break;
            default:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.f3297b;
                actionBarOverlayLayout.E = null;
                actionBarOverlayLayout.f217j = false;
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.f3296a) {
            case 0:
                ((p0) this.f3297b).c();
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }

    public n0(p0 p0Var, View view) {
        this.f3297b = p0Var;
    }
}
