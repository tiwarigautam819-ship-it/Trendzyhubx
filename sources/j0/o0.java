package j0;

import android.view.View;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f3298a;

    public o0(View view) {
        this.f3298a = new WeakReference(view);
    }

    public final void a(float f9) {
        View view = (View) this.f3298a.get();
        if (view != null) {
            view.animate().alpha(f9);
        }
    }

    public final void b() {
        View view = (View) this.f3298a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public final void c(long j3) {
        View view = (View) this.f3298a.get();
        if (view != null) {
            view.animate().setDuration(j3);
        }
    }

    public final void d(p0 p0Var) {
        View view = (View) this.f3298a.get();
        if (view != null) {
            if (p0Var != null) {
                view.animate().setListener(new n0(p0Var, view));
            } else {
                view.animate().setListener(null);
            }
        }
    }

    public final void e(float f9) {
        View view = (View) this.f3298a.get();
        if (view != null) {
            view.animate().translationY(f9);
        }
    }
}
