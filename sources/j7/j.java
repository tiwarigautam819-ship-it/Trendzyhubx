package j7;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j implements Iterator, e7.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Iterator f3419a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f3420b;

    public j(k kVar) {
        this.f3420b = kVar;
        this.f3419a = kVar.f3421a.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3419a.hasNext();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [c7.l, d7.h] */
    @Override // java.util.Iterator
    public final Object next() {
        return this.f3420b.f3422b.g(this.f3419a.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
