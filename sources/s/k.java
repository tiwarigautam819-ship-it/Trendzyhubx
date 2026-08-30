package s;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public /* synthetic */ int[] f5199a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object[] f5200b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ int f5201c;

    public k() {
        int i6;
        int i9 = 4;
        while (true) {
            i6 = 40;
            if (i9 >= 32) {
                break;
            }
            int i10 = (1 << i9) - 12;
            if (40 <= i10) {
                i6 = i10;
                break;
            }
            i9++;
        }
        int i11 = i6 / 4;
        this.f5199a = new int[i11];
        this.f5200b = new Object[i11];
    }

    public final void a(int i6, Object obj) {
        int i9 = this.f5201c;
        if (i9 != 0 && i6 <= this.f5199a[i9 - 1]) {
            c(i6, obj);
            return;
        }
        if (i9 >= this.f5199a.length) {
            int i10 = (i9 + 1) * 4;
            int i11 = 4;
            while (true) {
                if (i11 >= 32) {
                    break;
                }
                int i12 = (1 << i11) - 12;
                if (i10 <= i12) {
                    i10 = i12;
                    break;
                }
                i11++;
            }
            int i13 = i10 / 4;
            int[] iArrCopyOf = Arrays.copyOf(this.f5199a, i13);
            d7.g.e("copyOf(this, newSize)", iArrCopyOf);
            this.f5199a = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f5200b, i13);
            d7.g.e("copyOf(this, newSize)", objArrCopyOf);
            this.f5200b = objArrCopyOf;
        }
        this.f5199a[i9] = i6;
        this.f5200b[i9] = obj;
        this.f5201c = i9 + 1;
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final k clone() throws CloneNotSupportedException {
        Object objClone = super.clone();
        d7.g.d("null cannot be cast to non-null type androidx.collection.SparseArrayCompat<E of androidx.collection.SparseArrayCompat>", objClone);
        k kVar = (k) objClone;
        kVar.f5199a = (int[]) this.f5199a.clone();
        kVar.f5200b = (Object[]) this.f5200b.clone();
        return kVar;
    }

    public final void c(int i6, Object obj) {
        int iA = t.a.a(this.f5201c, i6, this.f5199a);
        if (iA >= 0) {
            this.f5200b[iA] = obj;
            return;
        }
        int i9 = ~iA;
        int i10 = this.f5201c;
        if (i9 < i10) {
            Object[] objArr = this.f5200b;
            if (objArr[i9] == h.f5195b) {
                this.f5199a[i9] = i6;
                objArr[i9] = obj;
                return;
            }
        }
        if (i10 >= this.f5199a.length) {
            int i11 = (i10 + 1) * 4;
            int i12 = 4;
            while (true) {
                if (i12 >= 32) {
                    break;
                }
                int i13 = (1 << i12) - 12;
                if (i11 <= i13) {
                    i11 = i13;
                    break;
                }
                i12++;
            }
            int i14 = i11 / 4;
            int[] iArrCopyOf = Arrays.copyOf(this.f5199a, i14);
            d7.g.e("copyOf(this, newSize)", iArrCopyOf);
            this.f5199a = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f5200b, i14);
            d7.g.e("copyOf(this, newSize)", objArrCopyOf);
            this.f5200b = objArrCopyOf;
        }
        int i15 = this.f5201c;
        if (i15 - i9 != 0) {
            int[] iArr = this.f5199a;
            int i16 = i9 + 1;
            s6.f.k(i16, i9, i15, iArr, iArr);
            Object[] objArr2 = this.f5200b;
            s6.f.l(i16, i9, this.f5201c, objArr2, objArr2);
        }
        this.f5199a[i9] = i6;
        this.f5200b[i9] = obj;
        this.f5201c++;
    }

    public final String toString() {
        int i6 = this.f5201c;
        if (i6 <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(i6 * 28);
        sb.append('{');
        int i9 = this.f5201c;
        for (int i10 = 0; i10 < i9; i10++) {
            if (i10 > 0) {
                sb.append(", ");
            }
            sb.append(this.f5199a[i10]);
            sb.append('=');
            Object obj = this.f5200b[i10];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        String string = sb.toString();
        d7.g.e("buffer.toString()", string);
        return string;
    }
}
