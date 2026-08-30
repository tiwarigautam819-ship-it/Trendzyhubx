package j0;

import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class t implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f3308a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ViewTreeObserver f3309b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Runnable f3310c;

    public t(View view, Runnable runnable) {
        this.f3308a = view;
        this.f3309b = view.getViewTreeObserver();
        this.f3310c = runnable;
    }

    public static void a(View view, Runnable runnable) {
        if (view == null) {
            throw new NullPointerException("view == null");
        }
        t tVar = new t(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(tVar);
        view.addOnAttachStateChangeListener(tVar);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        boolean zIsAlive = this.f3309b.isAlive();
        View view = this.f3308a;
        if (zIsAlive) {
            this.f3309b.removeOnPreDrawListener(this);
        } else {
            view.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        view.removeOnAttachStateChangeListener(this);
        this.f3310c.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f3309b = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        boolean zIsAlive = this.f3309b.isAlive();
        View view2 = this.f3308a;
        if (zIsAlive) {
            this.f3309b.removeOnPreDrawListener(this);
        } else {
            view2.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        view2.removeOnAttachStateChangeListener(this);
    }
}
