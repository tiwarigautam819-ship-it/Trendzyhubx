package androidx.lifecycle;

import android.os.Bundle;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g0 implements e1.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f696a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f697b;

    public /* synthetic */ g0(int i6, Object obj) {
        this.f696a = i6;
        this.f697b = obj;
    }

    @Override // e1.d
    public final Bundle a() {
        switch (this.f696a) {
            case 0:
                return h0.a((h0) this.f697b);
            default:
                return b.p.c((androidx.fragment.app.h0) this.f697b);
        }
    }
}
