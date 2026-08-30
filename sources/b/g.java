package b;

import android.window.OnBackInvokedDispatcher;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g implements androidx.lifecycle.r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f795a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f796b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f797c;

    public /* synthetic */ g(Object obj, int i6, Object obj2) {
        this.f795a = i6;
        this.f796b = obj;
        this.f797c = obj2;
    }

    @Override // androidx.lifecycle.r
    public final void a(androidx.lifecycle.t tVar, androidx.lifecycle.m mVar) {
        switch (this.f795a) {
            case 0:
                i0 i0Var = (i0) this.f796b;
                p pVar = (p) this.f797c;
                d7.g.f("$dispatcher", i0Var);
                if (mVar == androidx.lifecycle.m.ON_CREATE) {
                    OnBackInvokedDispatcher onBackInvokedDispatcherA = h.f800a.a(pVar);
                    d7.g.f("invoker", onBackInvokedDispatcherA);
                    i0Var.f806e = onBackInvokedDispatcherA;
                    i0Var.d(i0Var.f808g);
                }
                break;
            default:
                j0.l lVar = (j0.l) this.f796b;
                j0.m mVar2 = (j0.m) this.f797c;
                if (mVar != androidx.lifecycle.m.ON_DESTROY) {
                    lVar.getClass();
                } else {
                    lVar.b(mVar2);
                }
                break;
        }
    }
}
