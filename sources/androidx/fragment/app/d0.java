package androidx.fragment.app;

import android.os.Bundle;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d0 implements e1.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f491a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f492b;

    public /* synthetic */ d0(int i6, Object obj) {
        this.f491a = i6;
        this.f492b = obj;
    }

    @Override // e1.d
    public final Bundle a() {
        switch (this.f491a) {
            case 0:
                h0 h0Var = (h0) this.f492b;
                h0Var.markFragmentsCreated();
                h0Var.mFragmentLifecycleRegistry.e(androidx.lifecycle.m.ON_STOP);
                return new Bundle();
            default:
                return ((y0) this.f492b).V();
        }
    }
}
