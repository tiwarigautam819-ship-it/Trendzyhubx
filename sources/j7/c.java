package j7;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Iterator, e7.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f3406b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f3408d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3405a = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3407c = -1;

    public c(d dVar) {
        this.f3408d = new j((k) dVar.f3410b);
    }

    public void a() {
        boolean z5;
        Object next;
        Iterator it = (Iterator) this.f3408d;
        do {
            z5 = false;
            if (!it.hasNext()) {
                this.f3407c = 0;
                return;
            } else {
                next = it.next();
                if (next == null) {
                    z5 = true;
                }
            }
        } while (z5);
        this.f3406b = next;
        this.f3407c = 1;
    }

    public void b() {
        Object objG;
        d dVar = (d) this.f3408d;
        if (this.f3407c == -2) {
            f7.d dVar2 = f7.e.f2634a;
            objG = Integer.valueOf(f7.e.f2635b.a().nextInt(2147418112) + 65536);
        } else {
            h hVar = (h) dVar.f3410b;
            Object obj = this.f3406b;
            d7.g.c(obj);
            objG = hVar.g(obj);
        }
        this.f3406b = objG;
        this.f3407c = 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f3405a) {
            case 0:
                if (this.f3407c == -1) {
                    a();
                }
                if (this.f3407c == 1) {
                }
                break;
            default:
                if (this.f3407c < 0) {
                    b();
                }
                if (this.f3407c == 1) {
                }
                break;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f3405a) {
            case 0:
                if (this.f3407c == -1) {
                    a();
                }
                if (this.f3407c == 0) {
                    throw new NoSuchElementException();
                }
                Object obj = this.f3406b;
                this.f3406b = null;
                this.f3407c = -1;
                return obj;
            default:
                if (this.f3407c < 0) {
                    b();
                }
                if (this.f3407c == 0) {
                    throw new NoSuchElementException();
                }
                Object obj2 = this.f3406b;
                d7.g.d("null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence", obj2);
                this.f3407c = -1;
                return obj2;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f3405a) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public c(d dVar, byte b3) {
        this.f3408d = dVar;
    }
}
