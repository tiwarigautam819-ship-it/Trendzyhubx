package b;

import android.view.View;
import android.view.inputmethod.InputMethodManager;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class x implements androidx.lifecycle.r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final r6.g f832b = new r6.g(u.f827b);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.fragment.app.h0 f833a;

    public x(androidx.fragment.app.h0 h0Var) {
        this.f833a = h0Var;
    }

    @Override // androidx.lifecycle.r
    public final void a(androidx.lifecycle.t tVar, androidx.lifecycle.m mVar) {
        if (mVar != androidx.lifecycle.m.ON_DESTROY) {
            return;
        }
        Object systemService = this.f833a.getSystemService("input_method");
        d7.g.d("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager", systemService);
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        t tVar2 = (t) f832b.getValue();
        Object objB = tVar2.b(inputMethodManager);
        if (objB == null) {
            return;
        }
        synchronized (objB) {
            View viewC = tVar2.c(inputMethodManager);
            if (viewC == null) {
                return;
            }
            if (viewC.isAttachedToWindow()) {
                return;
            }
            boolean zA = tVar2.a(inputMethodManager);
            if (zA) {
                inputMethodManager.isActive();
            }
        }
    }
}
