package o;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends e implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c f4380a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public c f4381b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4382c;

    public b(c cVar, c cVar2, int i6) {
        this.f4382c = i6;
        this.f4380a = cVar2;
        this.f4381b = cVar;
    }

    @Override // o.e
    public final void a(c cVar) {
        c cVar2;
        c cVarB = null;
        if (this.f4380a == cVar && cVar == this.f4381b) {
            this.f4381b = null;
            this.f4380a = null;
        }
        c cVar3 = this.f4380a;
        if (cVar3 == cVar) {
            switch (this.f4382c) {
                case 0:
                    cVar2 = cVar3.f4386d;
                    break;
                default:
                    cVar2 = cVar3.f4385c;
                    break;
            }
            this.f4380a = cVar2;
        }
        c cVar4 = this.f4381b;
        if (cVar4 == cVar) {
            c cVar5 = this.f4380a;
            if (cVar4 != cVar5 && cVar5 != null) {
                cVarB = b(cVar4);
            }
            this.f4381b = cVarB;
        }
    }

    public final c b(c cVar) {
        switch (this.f4382c) {
            case 0:
                return cVar.f4385c;
            default:
                return cVar.f4386d;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f4381b != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        c cVar = this.f4381b;
        c cVar2 = this.f4380a;
        this.f4381b = (cVar == cVar2 || cVar2 == null) ? null : b(cVar);
        return cVar;
    }
}
