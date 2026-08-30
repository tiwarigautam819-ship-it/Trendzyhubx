package androidx.fragment.app;

import android.app.Dialog;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class s extends h8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x f607a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ t f608b;

    public s(t tVar, x xVar) {
        this.f608b = tVar;
        this.f607a = xVar;
    }

    @Override // h8.b
    public final View n(int i6) {
        x xVar = this.f607a;
        if (xVar.o()) {
            return xVar.n(i6);
        }
        Dialog dialog = this.f608b.f619o0;
        if (dialog != null) {
            return dialog.findViewById(i6);
        }
        return null;
    }

    @Override // h8.b
    public final boolean o() {
        return this.f607a.o() || this.f608b.f623s0;
    }
}
