package r4;

import java.util.ListIterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends l implements ListIterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4968a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4969b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e f4970c;

    public b(e eVar, int i6) {
        int size = eVar.size();
        z7.l.d(i6, size);
        this.f4968a = size;
        this.f4969b = i6;
        this.f4970c = eVar;
    }

    public final Object a(int i6) {
        return this.f4970c.get(i6);
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f4969b < this.f4968a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f4969b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i6 = this.f4969b;
        this.f4969b = i6 + 1;
        return a(i6);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f4969b;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i6 = this.f4969b - 1;
        this.f4969b = i6;
        return a(i6);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f4969b - 1;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
