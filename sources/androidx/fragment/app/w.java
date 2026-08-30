package androidx.fragment.app;

import android.os.Bundle;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class w extends b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c0 f630a;

    public w(c0 c0Var) {
        this.f630a = c0Var;
    }

    @Override // androidx.fragment.app.b0
    public final void a() {
        c0 c0Var = this.f630a;
        c0Var.f462a0.a();
        androidx.lifecycle.j0.d(c0Var);
        Bundle bundle = c0Var.f463b;
        c0Var.f462a0.b(bundle != null ? bundle.getBundle("registryState") : null);
    }
}
