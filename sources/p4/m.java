package p4;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m implements o, f, e, c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4645a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f4646b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a f4647c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final q f4648d;

    public /* synthetic */ m(Executor executor, a aVar, q qVar, int i6) {
        this.f4645a = i6;
        this.f4646b = executor;
        this.f4647c = aVar;
        this.f4648d = qVar;
    }

    @Override // p4.c
    public void a() {
        this.f4648d.n();
    }

    @Override // p4.o
    public final void b(i iVar) {
        switch (this.f4645a) {
            case 0:
                this.f4646b.execute(new s4.b(this, iVar, 7, false));
                break;
            default:
                this.f4646b.execute(new s4.b(this, iVar, 8, false));
                break;
        }
    }

    @Override // p4.e
    public void onFailure(Exception exc) {
        this.f4648d.l(exc);
    }

    @Override // p4.f
    public void onSuccess(Object obj) {
        this.f4648d.m(obj);
    }
}
