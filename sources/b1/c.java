package b1;

import android.net.Uri;
import c7.p;
import r6.j;
import u6.f;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends w6.e implements p {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f892e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ d f893f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Uri f894g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(d dVar, Uri uri, f fVar) {
        super(fVar);
        this.f893f = dVar;
        this.f894g = uri;
    }

    @Override // w6.e
    public final f c(f fVar) {
        return new c(this.f893f, this.f894g, fVar);
    }

    @Override // c7.p
    public final Object f(Object obj, Object obj2) {
        return ((c) c((f) obj2)).h(j.f5000a);
    }

    @Override // w6.e
    public final Object h(Object obj) throws Throwable {
        int i6 = this.f892e;
        if (i6 == 0) {
            k2.e.l(obj);
            c1.d dVar = this.f893f.f895a;
            this.f892e = 1;
            Object objD = dVar.d(this.f894g, this);
            v6.a aVar = v6.a.f5635a;
            if (objD == aVar) {
                return aVar;
            }
        } else {
            if (i6 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k2.e.l(obj);
        }
        return j.f5000a;
    }
}
