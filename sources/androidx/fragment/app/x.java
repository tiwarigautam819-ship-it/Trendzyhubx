package androidx.fragment.app;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class x extends h8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c0 f633a;

    public x(c0 c0Var) {
        this.f633a = c0Var;
    }

    @Override // h8.b
    public final View n(int i6) {
        c0 c0Var = this.f633a;
        View view = c0Var.P;
        if (view != null) {
            return view.findViewById(i6);
        }
        throw new IllegalStateException("Fragment " + c0Var + " does not have a view");
    }

    @Override // h8.b
    public final boolean o() {
        return this.f633a.P != null;
    }
}
