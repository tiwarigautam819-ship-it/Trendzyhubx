package h7;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Iterator, e7.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3020a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3021b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3022c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3023d;

    public b(int i6, int i9, int i10) {
        this.f3020a = i10;
        this.f3021b = i9;
        boolean z5 = false;
        if (i10 <= 0 ? i6 >= i9 : i6 <= i9) {
            z5 = true;
        }
        this.f3022c = z5;
        this.f3023d = z5 ? i6 : i9;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3022c;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return Integer.valueOf(nextInt());
    }

    public final int nextInt() {
        int i6 = this.f3023d;
        if (i6 != this.f3021b) {
            this.f3023d = this.f3020a + i6;
            return i6;
        }
        if (!this.f3022c) {
            throw new NoSuchElementException();
        }
        this.f3022c = false;
        return i6;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
