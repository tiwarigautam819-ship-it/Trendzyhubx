package androidx.fragment.app;

import android.os.Handler;
import android.view.View;
import android.view.Window;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g0 extends h8.b implements androidx.lifecycle.t0, b.j0, e1.g, d1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h0 f521a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h0 f522b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f523c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final z0 f524d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ h0 f525e;

    public g0(h0 h0Var) {
        this.f525e = h0Var;
        Handler handler = new Handler();
        this.f521a = h0Var;
        this.f522b = h0Var;
        this.f523c = handler;
        this.f524d = new z0();
    }

    @Override // androidx.fragment.app.d1
    public final void a(c0 c0Var) {
        this.f525e.onAttachFragment(c0Var);
    }

    @Override // androidx.lifecycle.t
    public final androidx.lifecycle.o getLifecycle() {
        return this.f525e.mFragmentLifecycleRegistry;
    }

    @Override // e1.g
    public final e1.e getSavedStateRegistry() {
        return this.f525e.getSavedStateRegistry();
    }

    @Override // androidx.lifecycle.t0
    public final androidx.lifecycle.s0 getViewModelStore() {
        return this.f525e.getViewModelStore();
    }

    @Override // h8.b
    public final View n(int i6) {
        return this.f525e.findViewById(i6);
    }

    @Override // h8.b
    public final boolean o() {
        Window window = this.f525e.getWindow();
        return (window == null || window.peekDecorView() == null) ? false : true;
    }
}
