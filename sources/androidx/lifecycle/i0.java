package androidx.lifecycle;

import java.io.Closeable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i0 implements r, Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f704a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h0 f705b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f706c;

    public i0(String str, h0 h0Var) {
        this.f704a = str;
        this.f705b = h0Var;
    }

    @Override // androidx.lifecycle.r
    public final void a(t tVar, m mVar) {
        if (mVar == m.ON_DESTROY) {
            this.f706c = false;
            tVar.getLifecycle().b(this);
        }
    }

    public final void c(e1.e eVar, o oVar) {
        d7.g.f("registry", eVar);
        d7.g.f("lifecycle", oVar);
        if (this.f706c) {
            throw new IllegalStateException("Already attached to lifecycleOwner");
        }
        this.f706c = true;
        oVar.a(this);
        eVar.c(this.f704a, this.f705b.f703e);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
