package p4;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class n implements o, f, e, c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4649a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f4650b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f4651c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f4652d;

    public n(Executor executor, c cVar) {
        this.f4649a = 0;
        this.f4651c = new Object();
        this.f4650b = executor;
        this.f4652d = cVar;
    }

    private final void c(i iVar) {
        synchronized (this.f4651c) {
        }
        this.f4650b.execute(new s4.b(this, iVar, 9, false));
    }

    private final void d(i iVar) {
        if (iVar.g() || ((q) iVar).f4660d) {
            return;
        }
        synchronized (this.f4651c) {
        }
        this.f4650b.execute(new s4.b(this, iVar, 10, false));
    }

    private final void e(i iVar) {
        if (iVar.g()) {
            synchronized (this.f4651c) {
            }
            this.f4650b.execute(new s4.b(this, iVar, 11, false));
        }
    }

    @Override // p4.c
    public void a() {
        ((q) this.f4652d).n();
    }

    @Override // p4.o
    public final void b(i iVar) {
        switch (this.f4649a) {
            case 0:
                if (((q) iVar).f4660d) {
                    synchronized (this.f4651c) {
                        break;
                    }
                    this.f4650b.execute(new androidx.fragment.app.p(11, this));
                    return;
                }
                return;
            case 1:
                c(iVar);
                return;
            case 2:
                d(iVar);
                return;
            case 3:
                e(iVar);
                return;
            default:
                this.f4650b.execute(new s4.b(this, iVar, 12, false));
                return;
        }
    }

    @Override // p4.e
    public void onFailure(Exception exc) {
        ((q) this.f4652d).l(exc);
    }

    @Override // p4.f
    public void onSuccess(Object obj) {
        ((q) this.f4652d).m(obj);
    }

    public n(Executor executor, d dVar) {
        this.f4649a = 1;
        this.f4651c = new Object();
        this.f4650b = executor;
        this.f4652d = dVar;
    }

    public n(Executor executor, e eVar) {
        this.f4649a = 2;
        this.f4651c = new Object();
        this.f4650b = executor;
        this.f4652d = eVar;
    }

    public n(Executor executor, f fVar) {
        this.f4649a = 3;
        this.f4651c = new Object();
        this.f4650b = executor;
        this.f4652d = fVar;
    }

    public n(Executor executor, h hVar, q qVar) {
        this.f4649a = 4;
        this.f4650b = executor;
        this.f4651c = hVar;
        this.f4652d = qVar;
    }
}
