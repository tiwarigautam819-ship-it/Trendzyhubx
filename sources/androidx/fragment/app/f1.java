package androidx.fragment.app;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f1 implements View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f518a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f519b;

    public /* synthetic */ f1(int i6, Object obj) {
        this.f518a = i6;
        this.f519b = obj;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        switch (this.f518a) {
            case 0:
                View view2 = (View) this.f519b;
                view2.removeOnAttachStateChangeListener(this);
                WeakHashMap weakHashMap = j0.k0.f3286a;
                j0.b0.c(view2);
                break;
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        switch (this.f518a) {
            case 0:
                break;
            case 1:
                l.h hVar = (l.h) this.f519b;
                ViewTreeObserver viewTreeObserver = hVar.F;
                if (viewTreeObserver != null) {
                    if (!viewTreeObserver.isAlive()) {
                        hVar.F = view.getViewTreeObserver();
                    }
                    hVar.F.removeGlobalOnLayoutListener(hVar.f3645i);
                }
                view.removeOnAttachStateChangeListener(this);
                break;
            default:
                l.e0 e0Var = (l.e0) this.f519b;
                ViewTreeObserver viewTreeObserver2 = e0Var.f3627w;
                if (viewTreeObserver2 != null) {
                    if (!viewTreeObserver2.isAlive()) {
                        e0Var.f3627w = view.getViewTreeObserver();
                    }
                    e0Var.f3627w.removeGlobalOnLayoutListener(e0Var.f3621i);
                }
                view.removeOnAttachStateChangeListener(this);
                break;
        }
    }

    private final void a(View view) {
    }

    private final void b(View view) {
    }

    private final void c(View view) {
    }
}
