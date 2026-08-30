package o;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends e implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c f4387a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f4388b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f4389c;

    public d(f fVar) {
        this.f4389c = fVar;
    }

    @Override // o.e
    public final void a(c cVar) {
        c cVar2 = this.f4387a;
        if (cVar == cVar2) {
            c cVar3 = cVar2.f4386d;
            this.f4387a = cVar3;
            this.f4388b = cVar3 == null;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f4388b) {
            return this.f4389c.f4390a != null;
        }
        c cVar = this.f4387a;
        return (cVar == null || cVar.f4385c == null) ? false : true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f4388b) {
            this.f4388b = false;
            this.f4387a = this.f4389c.f4390a;
        } else {
            c cVar = this.f4387a;
            this.f4387a = cVar != null ? cVar.f4385c : null;
        }
        return this.f4387a;
    }
}
