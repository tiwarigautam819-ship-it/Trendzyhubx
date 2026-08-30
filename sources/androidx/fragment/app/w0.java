package androidx.fragment.app;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class w0 implements v0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f631a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ y0 f632b;

    public w0(y0 y0Var, int i6) {
        this.f632b = y0Var;
        this.f631a = i6;
    }

    @Override // androidx.fragment.app.v0
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        y0 y0Var = this.f632b;
        c0 c0Var = y0Var.f664z;
        int i6 = this.f631a;
        if (c0Var == null || i6 >= 0 || !c0Var.d().Q()) {
            return y0Var.R(arrayList, arrayList2, i6, 1);
        }
        return false;
    }
}
