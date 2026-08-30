package s;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Iterator, e7.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5173a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5174b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f5175c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f5176d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f5177e;

    public a(int i6) {
        this.f5173a = i6;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f5174b < this.f5173a;
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object objE;
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i6 = this.f5174b;
        switch (this.f5176d) {
            case 0:
                objE = ((e) this.f5177e).e(i6);
                break;
            case 1:
                objE = ((e) this.f5177e).h(i6);
                break;
            default:
                objE = ((f) this.f5177e).f5188b[i6];
                break;
        }
        this.f5174b++;
        this.f5175c = true;
        return objE;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f5175c) {
            throw new IllegalStateException("Call next() before removing an element.");
        }
        int i6 = this.f5174b - 1;
        this.f5174b = i6;
        switch (this.f5176d) {
            case 0:
                ((e) this.f5177e).f(i6);
                break;
            case 1:
                ((e) this.f5177e).f(i6);
                break;
            default:
                ((f) this.f5177e).a(i6);
                break;
        }
        this.f5173a--;
        this.f5175c = false;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(f fVar) {
        this(fVar.f5189c);
        this.f5176d = 2;
        this.f5177e = fVar;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(e eVar, int i6) {
        this(eVar.f5198c);
        this.f5176d = i6;
        switch (i6) {
            case 1:
                this.f5177e = eVar;
                this(eVar.f5198c);
                break;
            default:
                this.f5177e = eVar;
                break;
        }
    }
}
