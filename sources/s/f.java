package s;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f implements Collection, Set, e7.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f5187a = t.a.f5294a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object[] f5188b = t.a.f5295b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5189c;

    public f(int i6) {
        if (i6 > 0) {
            h.a(this, i6);
        }
    }

    public final Object a(int i6) {
        int i9 = this.f5189c;
        Object[] objArr = this.f5188b;
        Object obj = objArr[i6];
        if (i9 <= 1) {
            clear();
            return obj;
        }
        int i10 = i9 - 1;
        int[] iArr = this.f5187a;
        if (iArr.length <= 8 || i9 >= iArr.length / 3) {
            if (i6 < i10) {
                int i11 = i6 + 1;
                s6.f.k(i6, i11, i9, iArr, iArr);
                Object[] objArr2 = this.f5188b;
                s6.f.l(i6, i11, i9, objArr2, objArr2);
            }
            this.f5188b[i10] = null;
        } else {
            int i12 = i9 > 8 ? i9 + (i9 >> 1) : 8;
            int[] iArr2 = new int[i12];
            this.f5187a = iArr2;
            this.f5188b = new Object[i12];
            if (i6 > 0) {
                s6.f.k(0, 0, i6, iArr, iArr2);
                s6.f.m(0, i6, 6, objArr, this.f5188b);
            }
            if (i6 < i10) {
                int i13 = i6 + 1;
                s6.f.k(i6, i13, i9, iArr, this.f5187a);
                s6.f.l(i6, i13, i9, objArr, this.f5188b);
            }
        }
        if (i9 != this.f5189c) {
            throw new ConcurrentModificationException();
        }
        this.f5189c = i10;
        return obj;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        int i6;
        int iB;
        int i9 = this.f5189c;
        if (obj == null) {
            iB = h.b(this, null, 0);
            i6 = 0;
        } else {
            int iHashCode = obj.hashCode();
            i6 = iHashCode;
            iB = h.b(this, obj, iHashCode);
        }
        if (iB >= 0) {
            return false;
        }
        int i10 = ~iB;
        int[] iArr = this.f5187a;
        if (i9 >= iArr.length) {
            int i11 = 8;
            if (i9 >= 8) {
                i11 = (i9 >> 1) + i9;
            } else if (i9 < 4) {
                i11 = 4;
            }
            Object[] objArr = this.f5188b;
            int[] iArr2 = new int[i11];
            this.f5187a = iArr2;
            this.f5188b = new Object[i11];
            if (i9 != this.f5189c) {
                throw new ConcurrentModificationException();
            }
            if (iArr2.length != 0) {
                s6.f.k(0, 0, iArr.length, iArr, iArr2);
                s6.f.m(0, objArr.length, 6, objArr, this.f5188b);
            }
        }
        if (i10 < i9) {
            int[] iArr3 = this.f5187a;
            int i12 = i10 + 1;
            s6.f.k(i12, i10, i9, iArr3, iArr3);
            Object[] objArr2 = this.f5188b;
            s6.f.l(i12, i10, i9, objArr2, objArr2);
        }
        int i13 = this.f5189c;
        if (i9 == i13) {
            int[] iArr4 = this.f5187a;
            if (i10 < iArr4.length) {
                iArr4[i10] = i6;
                this.f5188b[i10] = obj;
                this.f5189c = i13 + 1;
                return true;
            }
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        d7.g.f("elements", collection);
        int size = collection.size() + this.f5189c;
        int i6 = this.f5189c;
        int[] iArr = this.f5187a;
        boolean zAdd = false;
        if (iArr.length < size) {
            Object[] objArr = this.f5188b;
            int[] iArr2 = new int[size];
            this.f5187a = iArr2;
            this.f5188b = new Object[size];
            if (i6 > 0) {
                s6.f.k(0, 0, i6, iArr, iArr2);
                s6.f.m(0, this.f5189c, 6, objArr, this.f5188b);
            }
        }
        if (this.f5189c != i6) {
            throw new ConcurrentModificationException();
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    @Override // java.util.Collection, java.util.Set
    public final void clear() {
        if (this.f5189c != 0) {
            this.f5187a = t.a.f5294a;
            this.f5188b = t.a.f5295b;
            this.f5189c = 0;
        }
        if (this.f5189c != 0) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return (obj == null ? h.b(this, null, 0) : h.b(this, obj, obj.hashCode())) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        d7.g.f("elements", collection);
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Set) || this.f5189c != ((Set) obj).size()) {
            return false;
        }
        try {
            int i6 = this.f5189c;
            for (int i9 = 0; i9 < i6; i9++) {
                if (!((Set) obj).contains(this.f5188b[i9])) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        int[] iArr = this.f5187a;
        int i6 = this.f5189c;
        int i9 = 0;
        for (int i10 = 0; i10 < i6; i10++) {
            i9 += iArr[i10];
        }
        return i9;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f5189c <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new a(this);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int iB = obj == null ? h.b(this, null, 0) : h.b(this, obj, obj.hashCode());
        if (iB < 0) {
            return false;
        }
        a(iB);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        d7.g.f("elements", collection);
        Iterator it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        d7.g.f("elements", collection);
        boolean z5 = false;
        for (int i6 = this.f5189c - 1; -1 < i6; i6--) {
            if (!s6.g.p(collection, this.f5188b[i6])) {
                a(i6);
                z5 = true;
            }
        }
        return z5;
    }

    @Override // java.util.Collection, java.util.Set
    public final int size() {
        return this.f5189c;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        Object[] objArr = this.f5188b;
        int i6 = this.f5189c;
        d7.g.f("<this>", objArr);
        d4.a.b(i6, objArr.length);
        Object[] objArrCopyOfRange = Arrays.copyOfRange(objArr, 0, i6);
        d7.g.e("copyOfRange(...)", objArrCopyOfRange);
        return objArrCopyOfRange;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f5189c * 14);
        sb.append('{');
        int i6 = this.f5189c;
        for (int i9 = 0; i9 < i6; i9++) {
            if (i9 > 0) {
                sb.append(", ");
            }
            Object obj = this.f5188b[i9];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        String string = sb.toString();
        d7.g.e("StringBuilder(capacity).…builderAction).toString()", string);
        return string;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] objArr) {
        d7.g.f("array", objArr);
        int i6 = this.f5189c;
        if (objArr.length < i6) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i6);
        } else if (objArr.length > i6) {
            objArr[i6] = null;
        }
        s6.f.l(0, 0, this.f5189c, this.f5188b, objArr);
        return objArr;
    }
}
