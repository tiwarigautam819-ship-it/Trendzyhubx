package b1;

import c7.p;
import r6.j;
import u6.f;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends w6.e implements p {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f887e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ d f888f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(d dVar, f fVar) {
        super(fVar);
        this.f888f = dVar;
    }

    @Override // w6.e
    public final f c(f fVar) {
        return new a(this.f888f, fVar);
    }

    @Override // c7.p
    public final Object f(Object obj, Object obj2) {
        return ((a) c((f) obj2)).h(j.f5000a);
    }

    @Override // w6.e
    public final Object h(Object obj) throws Throwable {
        int i6 = this.f887e;
        if (i6 != 0) {
            if (i6 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k2.e.l(obj);
            return obj;
        }
        k2.e.l(obj);
        c1.d dVar = this.f888f.f895a;
        this.f887e = 1;
        Object objB = dVar.b(this);
        v6.a aVar = v6.a.f5635a;
        return objB == aVar ? aVar : objB;
    }
}
