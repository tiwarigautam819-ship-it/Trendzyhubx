package l7;

import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g extends m0 implements f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final s0 f3852e;

    public g(s0 s0Var) {
        this.f3852e = s0Var;
    }

    @Override // l7.f
    public final boolean e(Throwable th) {
        s0 s0VarN = n();
        if (th instanceof CancellationException) {
            return true;
        }
        return s0VarN.d(th) && s0VarN.l();
    }

    @Override // c7.l
    public final /* bridge */ /* synthetic */ Object g(Object obj) {
        o((Throwable) obj);
        return r6.j.f5000a;
    }

    @Override // l7.o0
    public final void o(Throwable th) {
        this.f3852e.d(n());
    }
}
