package b1;

import android.net.Uri;
import android.view.InputEvent;
import c7.p;
import r6.j;
import u6.f;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends w6.e implements p {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f889e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ d f890f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Uri f891g;
    public final /* synthetic */ InputEvent h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(d dVar, Uri uri, InputEvent inputEvent, f fVar) {
        super(fVar);
        this.f890f = dVar;
        this.f891g = uri;
        this.h = inputEvent;
    }

    @Override // w6.e
    public final f c(f fVar) {
        return new b(this.f890f, this.f891g, this.h, fVar);
    }

    @Override // c7.p
    public final Object f(Object obj, Object obj2) {
        return ((b) c((f) obj2)).h(j.f5000a);
    }

    @Override // w6.e
    public final Object h(Object obj) throws Throwable {
        int i6 = this.f889e;
        if (i6 == 0) {
            k2.e.l(obj);
            c1.d dVar = this.f890f.f895a;
            this.f889e = 1;
            Object objC = dVar.c(this.f891g, this.h, this);
            v6.a aVar = v6.a.f5635a;
            if (objC == aVar) {
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
