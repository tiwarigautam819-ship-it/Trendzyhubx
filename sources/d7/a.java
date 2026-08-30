package d7;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class a implements Iterator, e7.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2280a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2281b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f2282c;

    public a(Object[] objArr) {
        g.f("array", objArr);
        this.f2282c = objArr;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f2280a) {
            case 0:
                return this.f2281b < ((Object[]) this.f2282c).length;
            case 1:
                Iterator it = (Iterator) this.f2282c;
                while (this.f2281b > 0 && it.hasNext()) {
                    it.next();
                    this.f2281b--;
                }
                return it.hasNext();
            default:
                return this.f2281b < ((s6.c) this.f2282c).a();
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f2280a) {
            case 0:
                try {
                    Object[] objArr = (Object[]) this.f2282c;
                    int i6 = this.f2281b;
                    this.f2281b = i6 + 1;
                    return objArr[i6];
                } catch (ArrayIndexOutOfBoundsException e9) {
                    this.f2281b--;
                    throw new NoSuchElementException(e9.getMessage());
                }
            case 1:
                Iterator it = (Iterator) this.f2282c;
                while (this.f2281b > 0 && it.hasNext()) {
                    it.next();
                    this.f2281b--;
                }
                return it.next();
            default:
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                s6.c cVar = (s6.c) this.f2282c;
                int i9 = this.f2281b;
                this.f2281b = i9 + 1;
                return cVar.get(i9);
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f2280a) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 1:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public a(s6.c cVar) {
        this.f2282c = cVar;
    }

    public a(j7.b bVar) {
        this.f2282c = bVar.f3403a.iterator();
        this.f2281b = bVar.f3404b;
    }
}
