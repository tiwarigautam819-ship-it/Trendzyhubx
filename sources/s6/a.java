package s6;

import java.util.ListIterator;
import java.util.NoSuchElementException;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends d7.a implements ListIterator {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ c f5271d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(c cVar, int i6) {
        super(cVar);
        this.f5271d = cVar;
        int iA = cVar.a();
        if (i6 < 0 || i6 > iA) {
            throw new IndexOutOfBoundsException(x.e(i6, iA, "index: ", ", size: "));
        }
        this.f2281b = i6;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f2281b > 0;
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f2281b;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i6 = this.f2281b - 1;
        this.f2281b = i6;
        return this.f5271d.get(i6);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f2281b - 1;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
