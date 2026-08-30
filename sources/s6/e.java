package s6;

import java.lang.reflect.Array;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends AbstractList implements List, e7.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Object[] f5277d = new Object[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5278a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object[] f5279b = f5277d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5280c;

    public final void a(int i6, Collection collection) {
        Iterator it = collection.iterator();
        int length = this.f5279b.length;
        while (i6 < length && it.hasNext()) {
            this.f5279b[i6] = it.next();
            i6++;
        }
        int i9 = this.f5278a;
        for (int i10 = 0; i10 < i9 && it.hasNext(); i10++) {
            this.f5279b[i10] = it.next();
        }
        this.f5280c = collection.size() + this.f5280c;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i6, Object obj) {
        int length;
        int i9 = this.f5280c;
        if (i6 < 0 || i6 > i9) {
            throw new IndexOutOfBoundsException(x.e(i6, i9, "index: ", ", size: "));
        }
        if (i6 == i9) {
            addLast(obj);
            return;
        }
        if (i6 == 0) {
            addFirst(obj);
            return;
        }
        b(i9 + 1);
        int iD = d(this.f5278a + i6);
        int i10 = this.f5280c;
        if (i6 < ((i10 + 1) >> 1)) {
            if (iD == 0) {
                Object[] objArr = this.f5279b;
                d7.g.f("<this>", objArr);
                iD = objArr.length;
            }
            int i11 = iD - 1;
            int i12 = this.f5278a;
            if (i12 == 0) {
                Object[] objArr2 = this.f5279b;
                d7.g.f("<this>", objArr2);
                length = objArr2.length - 1;
            } else {
                length = i12 - 1;
            }
            int i13 = this.f5278a;
            if (i11 >= i13) {
                Object[] objArr3 = this.f5279b;
                objArr3[length] = objArr3[i13];
                f.l(i13, i13 + 1, i11 + 1, objArr3, objArr3);
            } else {
                Object[] objArr4 = this.f5279b;
                f.l(i13 - 1, i13, objArr4.length, objArr4, objArr4);
                Object[] objArr5 = this.f5279b;
                objArr5[objArr5.length - 1] = objArr5[0];
                f.l(0, 1, i11 + 1, objArr5, objArr5);
            }
            this.f5279b[i11] = obj;
            this.f5278a = length;
        } else {
            int iD2 = d(this.f5278a + i10);
            if (iD < iD2) {
                Object[] objArr6 = this.f5279b;
                f.l(iD + 1, iD, iD2, objArr6, objArr6);
            } else {
                Object[] objArr7 = this.f5279b;
                f.l(1, 0, iD2, objArr7, objArr7);
                Object[] objArr8 = this.f5279b;
                objArr8[0] = objArr8[objArr8.length - 1];
                f.l(iD + 1, iD, objArr8.length - 1, objArr8, objArr8);
            }
            this.f5279b[iD] = obj;
        }
        this.f5280c++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i6, Collection collection) {
        d7.g.f("elements", collection);
        int i9 = this.f5280c;
        if (i6 < 0 || i6 > i9) {
            throw new IndexOutOfBoundsException(x.e(i6, i9, "index: ", ", size: "));
        }
        if (collection.isEmpty()) {
            return false;
        }
        int i10 = this.f5280c;
        if (i6 == i10) {
            return addAll(collection);
        }
        b(collection.size() + i10);
        int iD = d(this.f5278a + this.f5280c);
        int iD2 = d(this.f5278a + i6);
        int size = collection.size();
        if (i6 >= ((this.f5280c + 1) >> 1)) {
            int i11 = iD2 + size;
            if (iD2 < iD) {
                int i12 = size + iD;
                Object[] objArr = this.f5279b;
                if (i12 <= objArr.length) {
                    f.l(i11, iD2, iD, objArr, objArr);
                } else if (i11 >= objArr.length) {
                    f.l(i11 - objArr.length, iD2, iD, objArr, objArr);
                } else {
                    int length = iD - (i12 - objArr.length);
                    f.l(0, length, iD, objArr, objArr);
                    Object[] objArr2 = this.f5279b;
                    f.l(i11, iD2, length, objArr2, objArr2);
                }
            } else {
                Object[] objArr3 = this.f5279b;
                f.l(size, 0, iD, objArr3, objArr3);
                Object[] objArr4 = this.f5279b;
                if (i11 >= objArr4.length) {
                    f.l(i11 - objArr4.length, iD2, objArr4.length, objArr4, objArr4);
                } else {
                    f.l(0, objArr4.length - size, objArr4.length, objArr4, objArr4);
                    Object[] objArr5 = this.f5279b;
                    f.l(i11, iD2, objArr5.length - size, objArr5, objArr5);
                }
            }
            a(iD2, collection);
            return true;
        }
        int i13 = this.f5278a;
        int length2 = i13 - size;
        if (iD2 < i13) {
            Object[] objArr6 = this.f5279b;
            f.l(length2, i13, objArr6.length, objArr6, objArr6);
            if (size >= iD2) {
                Object[] objArr7 = this.f5279b;
                f.l(objArr7.length - size, 0, iD2, objArr7, objArr7);
            } else {
                Object[] objArr8 = this.f5279b;
                f.l(objArr8.length - size, 0, size, objArr8, objArr8);
                Object[] objArr9 = this.f5279b;
                f.l(0, size, iD2, objArr9, objArr9);
            }
        } else if (length2 >= 0) {
            Object[] objArr10 = this.f5279b;
            f.l(length2, i13, iD2, objArr10, objArr10);
        } else {
            Object[] objArr11 = this.f5279b;
            length2 += objArr11.length;
            int i14 = iD2 - i13;
            int length3 = objArr11.length - length2;
            if (length3 >= i14) {
                f.l(length2, i13, iD2, objArr11, objArr11);
            } else {
                f.l(length2, i13, i13 + length3, objArr11, objArr11);
                Object[] objArr12 = this.f5279b;
                f.l(0, this.f5278a + length3, iD2, objArr12, objArr12);
            }
        }
        this.f5278a = length2;
        int length4 = iD2 - size;
        if (length4 < 0) {
            length4 += this.f5279b.length;
        }
        a(length4, collection);
        return true;
    }

    public final void addFirst(Object obj) {
        b(this.f5280c + 1);
        int length = this.f5278a;
        if (length == 0) {
            Object[] objArr = this.f5279b;
            d7.g.f("<this>", objArr);
            length = objArr.length;
        }
        int i6 = length - 1;
        this.f5278a = i6;
        this.f5279b[i6] = obj;
        this.f5280c++;
    }

    public final void addLast(Object obj) {
        b(this.f5280c + 1);
        this.f5279b[d(this.f5278a + this.f5280c)] = obj;
        this.f5280c++;
    }

    public final void b(int i6) {
        if (i6 < 0) {
            throw new IllegalStateException("Deque is too big.");
        }
        Object[] objArr = this.f5279b;
        if (i6 <= objArr.length) {
            return;
        }
        if (objArr == f5277d) {
            if (i6 < 10) {
                i6 = 10;
            }
            this.f5279b = new Object[i6];
            return;
        }
        int length = objArr.length;
        int i9 = length + (length >> 1);
        if (i9 - i6 < 0) {
            i9 = i6;
        }
        if (i9 - 2147483639 > 0) {
            i9 = i6 > 2147483639 ? Integer.MAX_VALUE : 2147483639;
        }
        Object[] objArr2 = new Object[i9];
        f.l(0, this.f5278a, objArr.length, objArr, objArr2);
        Object[] objArr3 = this.f5279b;
        int length2 = objArr3.length;
        int i10 = this.f5278a;
        f.l(length2 - i10, 0, i10, objArr3, objArr2);
        this.f5278a = 0;
        this.f5279b = objArr2;
    }

    public final int c(int i6) {
        d7.g.f("<this>", this.f5279b);
        if (i6 == r0.length - 1) {
            return 0;
        }
        return i6 + 1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        int iD = d(this.f5278a + this.f5280c);
        int i6 = this.f5278a;
        if (i6 < iD) {
            f.n(this.f5279b, i6, iD);
        } else if (!isEmpty()) {
            Object[] objArr = this.f5279b;
            f.n(objArr, this.f5278a, objArr.length);
            f.n(this.f5279b, 0, iD);
        }
        this.f5278a = 0;
        this.f5280c = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final int d(int i6) {
        Object[] objArr = this.f5279b;
        return i6 >= objArr.length ? i6 - objArr.length : i6;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i6) {
        int i9 = this.f5280c;
        if (i6 < 0 || i6 >= i9) {
            throw new IndexOutOfBoundsException(x.e(i6, i9, "index: ", ", size: "));
        }
        return this.f5279b[d(this.f5278a + i6)];
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int i6;
        int iD = d(this.f5278a + this.f5280c);
        int length = this.f5278a;
        if (length < iD) {
            while (length < iD) {
                if (d7.g.a(obj, this.f5279b[length])) {
                    i6 = this.f5278a;
                } else {
                    length++;
                }
            }
            return -1;
        }
        if (length < iD) {
            return -1;
        }
        int length2 = this.f5279b.length;
        while (true) {
            if (length >= length2) {
                for (int i9 = 0; i9 < iD; i9++) {
                    if (d7.g.a(obj, this.f5279b[i9])) {
                        length = i9 + this.f5279b.length;
                        i6 = this.f5278a;
                    }
                }
                return -1;
            }
            if (d7.g.a(obj, this.f5279b[length])) {
                i6 = this.f5278a;
                break;
            }
            length++;
        }
        return length - i6;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.f5280c == 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        int length;
        int i6;
        int iD = d(this.f5278a + this.f5280c);
        int i9 = this.f5278a;
        if (i9 < iD) {
            length = iD - 1;
            if (i9 <= length) {
                while (!d7.g.a(obj, this.f5279b[length])) {
                    if (length != i9) {
                        length--;
                    }
                }
                i6 = this.f5278a;
                return length - i6;
            }
            return -1;
        }
        if (i9 > iD) {
            int i10 = iD - 1;
            while (true) {
                if (-1 >= i10) {
                    Object[] objArr = this.f5279b;
                    d7.g.f("<this>", objArr);
                    length = objArr.length - 1;
                    int i11 = this.f5278a;
                    if (i11 <= length) {
                        while (!d7.g.a(obj, this.f5279b[length])) {
                            if (length != i11) {
                                length--;
                            }
                        }
                        i6 = this.f5278a;
                    }
                } else {
                    if (d7.g.a(obj, this.f5279b[i10])) {
                        length = i10 + this.f5279b.length;
                        i6 = this.f5278a;
                        break;
                    }
                    i10--;
                }
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i6) {
        int i9 = this.f5280c;
        if (i6 < 0 || i6 >= i9) {
            throw new IndexOutOfBoundsException(x.e(i6, i9, "index: ", ", size: "));
        }
        if (i6 == h.j(this)) {
            return removeLast();
        }
        if (i6 == 0) {
            return removeFirst();
        }
        int iD = d(this.f5278a + i6);
        Object[] objArr = this.f5279b;
        Object obj = objArr[iD];
        if (i6 < (this.f5280c >> 1)) {
            int i10 = this.f5278a;
            if (iD >= i10) {
                f.l(i10 + 1, i10, iD, objArr, objArr);
            } else {
                f.l(1, 0, iD, objArr, objArr);
                Object[] objArr2 = this.f5279b;
                objArr2[0] = objArr2[objArr2.length - 1];
                int i11 = this.f5278a;
                f.l(i11 + 1, i11, objArr2.length - 1, objArr2, objArr2);
            }
            Object[] objArr3 = this.f5279b;
            int i12 = this.f5278a;
            objArr3[i12] = null;
            this.f5278a = c(i12);
        } else {
            int iD2 = d(h.j(this) + this.f5278a);
            if (iD <= iD2) {
                Object[] objArr4 = this.f5279b;
                f.l(iD, iD + 1, iD2 + 1, objArr4, objArr4);
            } else {
                Object[] objArr5 = this.f5279b;
                f.l(iD, iD + 1, objArr5.length, objArr5, objArr5);
                Object[] objArr6 = this.f5279b;
                objArr6[objArr6.length - 1] = objArr6[0];
                f.l(0, 1, iD2 + 1, objArr6, objArr6);
            }
            this.f5279b[iD2] = null;
        }
        this.f5280c--;
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        int iD;
        d7.g.f("elements", collection);
        boolean z5 = false;
        z5 = false;
        z5 = false;
        if (!isEmpty() && this.f5279b.length != 0) {
            int iD2 = d(this.f5278a + this.f5280c);
            int i6 = this.f5278a;
            if (i6 < iD2) {
                iD = i6;
                while (i6 < iD2) {
                    Object obj = this.f5279b[i6];
                    if (collection.contains(obj)) {
                        z5 = true;
                    } else {
                        this.f5279b[iD] = obj;
                        iD++;
                    }
                    i6++;
                }
                f.n(this.f5279b, iD, iD2);
            } else {
                int length = this.f5279b.length;
                boolean z8 = false;
                int i9 = i6;
                while (i6 < length) {
                    Object[] objArr = this.f5279b;
                    Object obj2 = objArr[i6];
                    objArr[i6] = null;
                    if (collection.contains(obj2)) {
                        z8 = true;
                    } else {
                        this.f5279b[i9] = obj2;
                        i9++;
                    }
                    i6++;
                }
                iD = d(i9);
                for (int i10 = 0; i10 < iD2; i10++) {
                    Object[] objArr2 = this.f5279b;
                    Object obj3 = objArr2[i10];
                    objArr2[i10] = null;
                    if (collection.contains(obj3)) {
                        z8 = true;
                    } else {
                        this.f5279b[iD] = obj3;
                        iD = c(iD);
                    }
                }
                z5 = z8;
            }
            if (z5) {
                int length2 = iD - this.f5278a;
                if (length2 < 0) {
                    length2 += this.f5279b.length;
                }
                this.f5280c = length2;
            }
        }
        return z5;
    }

    public final Object removeFirst() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        Object[] objArr = this.f5279b;
        int i6 = this.f5278a;
        Object obj = objArr[i6];
        objArr[i6] = null;
        this.f5278a = c(i6);
        this.f5280c--;
        return obj;
    }

    public final Object removeLast() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        int iD = d(h.j(this) + this.f5278a);
        Object[] objArr = this.f5279b;
        Object obj = objArr[iD];
        objArr[iD] = null;
        this.f5280c--;
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        int iD;
        d7.g.f("elements", collection);
        boolean z5 = false;
        z5 = false;
        z5 = false;
        if (!isEmpty() && this.f5279b.length != 0) {
            int iD2 = d(this.f5278a + this.f5280c);
            int i6 = this.f5278a;
            if (i6 < iD2) {
                iD = i6;
                while (i6 < iD2) {
                    Object obj = this.f5279b[i6];
                    if (collection.contains(obj)) {
                        this.f5279b[iD] = obj;
                        iD++;
                    } else {
                        z5 = true;
                    }
                    i6++;
                }
                f.n(this.f5279b, iD, iD2);
            } else {
                int length = this.f5279b.length;
                boolean z8 = false;
                int i9 = i6;
                while (i6 < length) {
                    Object[] objArr = this.f5279b;
                    Object obj2 = objArr[i6];
                    objArr[i6] = null;
                    if (collection.contains(obj2)) {
                        this.f5279b[i9] = obj2;
                        i9++;
                    } else {
                        z8 = true;
                    }
                    i6++;
                }
                iD = d(i9);
                for (int i10 = 0; i10 < iD2; i10++) {
                    Object[] objArr2 = this.f5279b;
                    Object obj3 = objArr2[i10];
                    objArr2[i10] = null;
                    if (collection.contains(obj3)) {
                        this.f5279b[iD] = obj3;
                        iD = c(iD);
                    } else {
                        z8 = true;
                    }
                }
                z5 = z8;
            }
            if (z5) {
                int length2 = iD - this.f5278a;
                if (length2 < 0) {
                    length2 += this.f5279b.length;
                }
                this.f5280c = length2;
            }
        }
        return z5;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i6, Object obj) {
        int i9 = this.f5280c;
        if (i6 < 0 || i6 >= i9) {
            throw new IndexOutOfBoundsException(x.e(i6, i9, "index: ", ", size: "));
        }
        int iD = d(this.f5278a + i6);
        Object[] objArr = this.f5279b;
        Object obj2 = objArr[iD];
        objArr[iD] = obj;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f5280c;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return toArray(new Object[this.f5280c]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        d7.g.f("array", objArr);
        int length = objArr.length;
        int i6 = this.f5280c;
        if (length < i6) {
            Object objNewInstance = Array.newInstance(objArr.getClass().getComponentType(), i6);
            d7.g.d("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>", objNewInstance);
            objArr = (Object[]) objNewInstance;
        }
        int iD = d(this.f5278a + this.f5280c);
        int i9 = this.f5278a;
        if (i9 < iD) {
            f.m(i9, iD, 2, this.f5279b, objArr);
        } else if (!isEmpty()) {
            Object[] objArr2 = this.f5279b;
            f.l(0, this.f5278a, objArr2.length, objArr2, objArr);
            Object[] objArr3 = this.f5279b;
            f.l(objArr3.length - this.f5278a, 0, iD, objArr3, objArr);
        }
        int i10 = this.f5280c;
        if (i10 < objArr.length) {
            objArr[i10] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf == -1) {
            return false;
        }
        remove(iIndexOf);
        return true;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        addLast(obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        d7.g.f("elements", collection);
        if (collection.isEmpty()) {
            return false;
        }
        b(collection.size() + this.f5280c);
        a(d(this.f5278a + this.f5280c), collection);
        return true;
    }
}
