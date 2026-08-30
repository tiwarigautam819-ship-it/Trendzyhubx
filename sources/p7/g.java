package p7;

import androidx.fragment.app.m1;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import l7.c0;
import l7.w;
import l7.x0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g extends w implements w6.b, u6.f {
    public static final AtomicReferenceFieldUpdater h = AtomicReferenceFieldUpdater.newUpdater(g.class, Object.class, "_reusableCancellableContinuation");
    private volatile Object _reusableCancellableContinuation;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final l7.n f4674d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final w6.e f4675e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f4676f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Object f4677g;

    public g(l7.n nVar, w6.e eVar) {
        super(-1);
        this.f4674d = nVar;
        this.f4675e = eVar;
        this.f4676f = a.f4665b;
        u6.k kVar = eVar.f5763b;
        d7.g.c(kVar);
        Object objC = kVar.c(0, s.f4699c);
        d7.g.c(objC);
        this.f4677g = objC;
    }

    @Override // w6.b
    public final w6.b a() {
        w6.e eVar = this.f4675e;
        if (m1.d(eVar)) {
            return eVar;
        }
        return null;
    }

    @Override // l7.w
    public final void b(Object obj, CancellationException cancellationException) {
        if (obj instanceof l7.j) {
            throw null;
        }
    }

    @Override // u6.f
    public final void e(Object obj) {
        w6.e eVar = this.f4675e;
        u6.k kVar = eVar.f5763b;
        d7.g.c(kVar);
        Throwable thA = r6.f.a(obj);
        Object iVar = thA == null ? obj : new l7.i(thA);
        l7.n nVar = this.f4674d;
        if (nVar.u()) {
            this.f4676f = iVar;
            this.f3900c = 0;
            nVar.t(kVar, this);
            return;
        }
        c0 c0VarA = x0.a();
        if (c0VarA.f3845c >= 4294967296L) {
            this.f4676f = iVar;
            this.f3900c = 0;
            s6.e eVar2 = c0VarA.f3847e;
            if (eVar2 == null) {
                eVar2 = new s6.e();
                c0VarA.f3847e = eVar2;
            }
            eVar2.addLast(this);
            return;
        }
        c0VarA.x(true);
        try {
            u6.k kVar2 = eVar.f5763b;
            d7.g.c(kVar2);
            Object objF = a.f(kVar2, this.f4677g);
            try {
                eVar.e(obj);
                while (c0VarA.y()) {
                }
            } finally {
                a.b(kVar2, objF);
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    @Override // u6.f
    public final u6.k getContext() {
        u6.k kVar = this.f4675e.f5763b;
        d7.g.c(kVar);
        return kVar;
    }

    @Override // l7.w
    public final Object h() {
        Object obj = this.f4676f;
        this.f4676f = a.f4665b;
        return obj;
    }

    public final String toString() {
        return "DispatchedContinuation[" + this.f4674d + ", " + l7.r.h(this.f4675e) + ']';
    }

    @Override // l7.w
    public final u6.f c() {
        return this;
    }
}
