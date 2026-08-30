package s;

import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f5196a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object[] f5197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5198c;

    public j(int i6) {
        this.f5196a = i6 == 0 ? t.a.f5294a : new int[i6];
        this.f5197b = i6 == 0 ? t.a.f5295b : new Object[i6 << 1];
    }

    public final int a(Object obj) {
        int i6 = this.f5198c * 2;
        Object[] objArr = this.f5197b;
        if (obj == null) {
            for (int i9 = 1; i9 < i6; i9 += 2) {
                if (objArr[i9] == null) {
                    return i9 >> 1;
                }
            }
            return -1;
        }
        for (int i10 = 1; i10 < i6; i10 += 2) {
            if (obj.equals(objArr[i10])) {
                return i10 >> 1;
            }
        }
        return -1;
    }

    public final int b(int i6, Object obj) {
        int i9 = this.f5198c;
        if (i9 == 0) {
            return -1;
        }
        int iA = t.a.a(i9, i6, this.f5196a);
        if (iA < 0 || d7.g.a(obj, this.f5197b[iA << 1])) {
            return iA;
        }
        int i10 = iA + 1;
        while (i10 < i9 && this.f5196a[i10] == i6) {
            if (d7.g.a(obj, this.f5197b[i10 << 1])) {
                return i10;
            }
            i10++;
        }
        for (int i11 = iA - 1; i11 >= 0 && this.f5196a[i11] == i6; i11--) {
            if (d7.g.a(obj, this.f5197b[i11 << 1])) {
                return i11;
            }
        }
        return ~i10;
    }

    public final int c(Object obj) {
        return obj == null ? d() : b(obj.hashCode(), obj);
    }

    public final void clear() {
        if (this.f5198c > 0) {
            this.f5196a = t.a.f5294a;
            this.f5197b = t.a.f5295b;
            this.f5198c = 0;
        }
        if (this.f5198c > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return c(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return a(obj) >= 0;
    }

    public final int d() {
        int i6 = this.f5198c;
        if (i6 == 0) {
            return -1;
        }
        int iA = t.a.a(i6, 0, this.f5196a);
        if (iA < 0 || this.f5197b[iA << 1] == null) {
            return iA;
        }
        int i9 = iA + 1;
        while (i9 < i6 && this.f5196a[i9] == 0) {
            if (this.f5197b[i9 << 1] == null) {
                return i9;
            }
            i9++;
        }
        for (int i10 = iA - 1; i10 >= 0 && this.f5196a[i10] == 0; i10--) {
            if (this.f5197b[i10 << 1] == null) {
                return i10;
            }
        }
        return ~i9;
    }

    public final Object e(int i6) {
        if (i6 < 0 || i6 >= this.f5198c) {
            throw new IllegalArgumentException(a1.a.i(i6, "Expected index to be within 0..size()-1, but was ").toString());
        }
        return this.f5197b[i6 << 1];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        try {
            if (obj instanceof j) {
                int i6 = this.f5198c;
                if (i6 != ((j) obj).f5198c) {
                    return false;
                }
                j jVar = (j) obj;
                for (int i9 = 0; i9 < i6; i9++) {
                    Object objE = e(i9);
                    Object objH = h(i9);
                    Object obj2 = jVar.get(objE);
                    if (objH == null) {
                        if (obj2 != null || !jVar.containsKey(objE)) {
                            return false;
                        }
                    } else if (!objH.equals(obj2)) {
                        return false;
                    }
                }
                return true;
            }
            if (!(obj instanceof Map) || this.f5198c != ((Map) obj).size()) {
                return false;
            }
            int i10 = this.f5198c;
            for (int i11 = 0; i11 < i10; i11++) {
                Object objE2 = e(i11);
                Object objH2 = h(i11);
                Object obj3 = ((Map) obj).get(objE2);
                if (objH2 == null) {
                    if (obj3 != null || !((Map) obj).containsKey(objE2)) {
                        return false;
                    }
                } else if (!objH2.equals(obj3)) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    public final Object f(int i6) {
        int i9;
        if (i6 < 0 || i6 >= (i9 = this.f5198c)) {
            throw new IllegalArgumentException(a1.a.i(i6, "Expected index to be within 0..size()-1, but was ").toString());
        }
        Object[] objArr = this.f5197b;
        int i10 = i6 << 1;
        Object obj = objArr[i10 + 1];
        if (i9 <= 1) {
            clear();
            return obj;
        }
        int i11 = i9 - 1;
        int[] iArr = this.f5196a;
        if (iArr.length <= 8 || i9 >= iArr.length / 3) {
            if (i6 < i11) {
                int i12 = i6 + 1;
                s6.f.k(i6, i12, i9, iArr, iArr);
                Object[] objArr2 = this.f5197b;
                s6.f.l(i10, i12 << 1, i9 << 1, objArr2, objArr2);
            }
            Object[] objArr3 = this.f5197b;
            int i13 = i11 << 1;
            objArr3[i13] = null;
            objArr3[i13 + 1] = null;
        } else {
            int i14 = i9 > 8 ? i9 + (i9 >> 1) : 8;
            int[] iArrCopyOf = Arrays.copyOf(iArr, i14);
            d7.g.e("copyOf(this, newSize)", iArrCopyOf);
            this.f5196a = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f5197b, i14 << 1);
            d7.g.e("copyOf(this, newSize)", objArrCopyOf);
            this.f5197b = objArrCopyOf;
            if (i9 != this.f5198c) {
                throw new ConcurrentModificationException();
            }
            if (i6 > 0) {
                s6.f.k(0, 0, i6, iArr, this.f5196a);
                s6.f.l(0, 0, i10, objArr, this.f5197b);
            }
            if (i6 < i11) {
                int i15 = i6 + 1;
                s6.f.k(i6, i15, i9, iArr, this.f5196a);
                s6.f.l(i10, i15 << 1, i9 << 1, objArr, this.f5197b);
            }
        }
        if (i9 != this.f5198c) {
            throw new ConcurrentModificationException();
        }
        this.f5198c = i11;
        return obj;
    }

    public final Object g(int i6, Object obj) {
        if (i6 < 0 || i6 >= this.f5198c) {
            throw new IllegalArgumentException(a1.a.i(i6, "Expected index to be within 0..size()-1, but was ").toString());
        }
        int i9 = (i6 << 1) + 1;
        Object[] objArr = this.f5197b;
        Object obj2 = objArr[i9];
        objArr[i9] = obj;
        return obj2;
    }

    public Object get(Object obj) {
        int iC = c(obj);
        if (iC >= 0) {
            return this.f5197b[(iC << 1) + 1];
        }
        return null;
    }

    public final Object getOrDefault(Object obj, Object obj2) {
        int iC = c(obj);
        return iC >= 0 ? this.f5197b[(iC << 1) + 1] : obj2;
    }

    public final Object h(int i6) {
        if (i6 < 0 || i6 >= this.f5198c) {
            throw new IllegalArgumentException(a1.a.i(i6, "Expected index to be within 0..size()-1, but was ").toString());
        }
        return this.f5197b[(i6 << 1) + 1];
    }

    public final int hashCode() {
        int[] iArr = this.f5196a;
        Object[] objArr = this.f5197b;
        int i6 = this.f5198c;
        int i9 = 1;
        int i10 = 0;
        int iHashCode = 0;
        while (i10 < i6) {
            Object obj = objArr[i9];
            iHashCode += (obj != null ? obj.hashCode() : 0) ^ iArr[i10];
            i10++;
            i9 += 2;
        }
        return iHashCode;
    }

    public final boolean isEmpty() {
        return this.f5198c <= 0;
    }

    public final Object put(Object obj, Object obj2) {
        int i6 = this.f5198c;
        int iHashCode = obj != null ? obj.hashCode() : 0;
        int iB = obj != null ? b(iHashCode, obj) : d();
        if (iB >= 0) {
            int i9 = (iB << 1) + 1;
            Object[] objArr = this.f5197b;
            Object obj3 = objArr[i9];
            objArr[i9] = obj2;
            return obj3;
        }
        int i10 = ~iB;
        int[] iArr = this.f5196a;
        if (i6 >= iArr.length) {
            int i11 = 8;
            if (i6 >= 8) {
                i11 = (i6 >> 1) + i6;
            } else if (i6 < 4) {
                i11 = 4;
            }
            int[] iArrCopyOf = Arrays.copyOf(iArr, i11);
            d7.g.e("copyOf(this, newSize)", iArrCopyOf);
            this.f5196a = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f5197b, i11 << 1);
            d7.g.e("copyOf(this, newSize)", objArrCopyOf);
            this.f5197b = objArrCopyOf;
            if (i6 != this.f5198c) {
                throw new ConcurrentModificationException();
            }
        }
        if (i10 < i6) {
            int[] iArr2 = this.f5196a;
            int i12 = i10 + 1;
            s6.f.k(i12, i10, i6, iArr2, iArr2);
            Object[] objArr2 = this.f5197b;
            s6.f.l(i12 << 1, i10 << 1, this.f5198c << 1, objArr2, objArr2);
        }
        int i13 = this.f5198c;
        if (i6 == i13) {
            int[] iArr3 = this.f5196a;
            if (i10 < iArr3.length) {
                iArr3[i10] = iHashCode;
                Object[] objArr3 = this.f5197b;
                int i14 = i10 << 1;
                objArr3[i14] = obj;
                objArr3[i14 + 1] = obj2;
                this.f5198c = i13 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public final Object putIfAbsent(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 == null ? put(obj, obj2) : obj3;
    }

    public Object remove(Object obj) {
        int iC = c(obj);
        if (iC >= 0) {
            return f(iC);
        }
        return null;
    }

    public final Object replace(Object obj, Object obj2) {
        int iC = c(obj);
        if (iC >= 0) {
            return g(iC, obj2);
        }
        return null;
    }

    public final int size() {
        return this.f5198c;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f5198c * 28);
        sb.append('{');
        int i6 = this.f5198c;
        for (int i9 = 0; i9 < i6; i9++) {
            if (i9 > 0) {
                sb.append(", ");
            }
            Object objE = e(i9);
            if (objE != sb) {
                sb.append(objE);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            Object objH = h(i9);
            if (objH != sb) {
                sb.append(objH);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        String string = sb.toString();
        d7.g.e("StringBuilder(capacity).…builderAction).toString()", string);
        return string;
    }

    public final boolean remove(Object obj, Object obj2) {
        int iC = c(obj);
        if (iC < 0 || !d7.g.a(obj2, h(iC))) {
            return false;
        }
        f(iC);
        return true;
    }

    public final boolean replace(Object obj, Object obj2, Object obj3) {
        int iC = c(obj);
        if (iC < 0 || !d7.g.a(obj2, h(iC))) {
            return false;
        }
        g(iC, obj3);
        return true;
    }
}
