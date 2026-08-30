package androidx.fragment.app;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class u implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f625a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f626b;

    public /* synthetic */ u(int i6, Object obj) {
        this.f625a = i6;
        this.f626b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f625a) {
            case 0:
                c0 c0Var = (c0) this.f626b;
                i1 i1Var = c0Var.Y;
                i1Var.f556e.b(c0Var.f467d);
                c0Var.f467d = null;
                return;
            default:
                Iterator it = ((y0) this.f626b).f652n.iterator();
                if (it.hasNext()) {
                    it.next().getClass();
                    throw new ClassCastException();
                }
                return;
        }
    }
}
