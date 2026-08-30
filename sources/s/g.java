package s;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public /* synthetic */ boolean f5190a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ long[] f5191b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object[] f5192c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public /* synthetic */ int f5193d;

    public g() {
        int i6;
        int i9 = 4;
        while (true) {
            i6 = 80;
            if (i9 >= 32) {
                break;
            }
            int i10 = (1 << i9) - 12;
            if (80 <= i10) {
                i6 = i10;
                break;
            }
            i9++;
        }
        int i11 = i6 / 8;
        this.f5191b = new long[i11];
        this.f5192c = new Object[i11];
    }

    public final void a(long j3, Long l4) {
        int i6 = this.f5193d;
        if (i6 != 0 && j3 <= this.f5191b[i6 - 1]) {
            d(j3, l4);
            return;
        }
        if (this.f5190a) {
            long[] jArr = this.f5191b;
            if (i6 >= jArr.length) {
                Object[] objArr = this.f5192c;
                int i9 = 0;
                for (int i10 = 0; i10 < i6; i10++) {
                    Object obj = objArr[i10];
                    if (obj != h.f5194a) {
                        if (i10 != i9) {
                            jArr[i9] = jArr[i10];
                            objArr[i9] = obj;
                            objArr[i10] = null;
                        }
                        i9++;
                    }
                }
                this.f5190a = false;
                this.f5193d = i9;
            }
        }
        int i11 = this.f5193d;
        if (i11 >= this.f5191b.length) {
            int i12 = (i11 + 1) * 8;
            int i13 = 4;
            while (true) {
                if (i13 >= 32) {
                    break;
                }
                int i14 = (1 << i13) - 12;
                if (i12 <= i14) {
                    i12 = i14;
                    break;
                }
                i13++;
            }
            int i15 = i12 / 8;
            long[] jArrCopyOf = Arrays.copyOf(this.f5191b, i15);
            d7.g.e("copyOf(this, newSize)", jArrCopyOf);
            this.f5191b = jArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f5192c, i15);
            d7.g.e("copyOf(this, newSize)", objArrCopyOf);
            this.f5192c = objArrCopyOf;
        }
        this.f5191b[i11] = j3;
        this.f5192c[i11] = l4;
        this.f5193d = i11 + 1;
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final g clone() throws CloneNotSupportedException {
        Object objClone = super.clone();
        d7.g.d("null cannot be cast to non-null type androidx.collection.LongSparseArray<E of androidx.collection.LongSparseArray>", objClone);
        g gVar = (g) objClone;
        gVar.f5191b = (long[]) this.f5191b.clone();
        gVar.f5192c = (Object[]) this.f5192c.clone();
        return gVar;
    }

    public final Object c(long j3) {
        Object obj;
        int iB = t.a.b(this.f5191b, this.f5193d, j3);
        if (iB < 0 || (obj = this.f5192c[iB]) == h.f5194a) {
            return -1L;
        }
        return obj;
    }

    public final void d(long j3, Object obj) {
        Object obj2 = h.f5194a;
        int iB = t.a.b(this.f5191b, this.f5193d, j3);
        if (iB >= 0) {
            this.f5192c[iB] = obj;
            return;
        }
        int i6 = ~iB;
        int i9 = this.f5193d;
        if (i6 < i9) {
            Object[] objArr = this.f5192c;
            if (objArr[i6] == obj2) {
                this.f5191b[i6] = j3;
                objArr[i6] = obj;
                return;
            }
        }
        if (this.f5190a) {
            long[] jArr = this.f5191b;
            if (i9 >= jArr.length) {
                Object[] objArr2 = this.f5192c;
                int i10 = 0;
                for (int i11 = 0; i11 < i9; i11++) {
                    Object obj3 = objArr2[i11];
                    if (obj3 != obj2) {
                        if (i11 != i10) {
                            jArr[i10] = jArr[i11];
                            objArr2[i10] = obj3;
                            objArr2[i11] = null;
                        }
                        i10++;
                    }
                }
                this.f5190a = false;
                this.f5193d = i10;
                i6 = ~t.a.b(this.f5191b, i10, j3);
            }
        }
        int i12 = this.f5193d;
        if (i12 >= this.f5191b.length) {
            int i13 = (i12 + 1) * 8;
            int i14 = 4;
            while (true) {
                if (i14 >= 32) {
                    break;
                }
                int i15 = (1 << i14) - 12;
                if (i13 <= i15) {
                    i13 = i15;
                    break;
                }
                i14++;
            }
            int i16 = i13 / 8;
            long[] jArrCopyOf = Arrays.copyOf(this.f5191b, i16);
            d7.g.e("copyOf(this, newSize)", jArrCopyOf);
            this.f5191b = jArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f5192c, i16);
            d7.g.e("copyOf(this, newSize)", objArrCopyOf);
            this.f5192c = objArrCopyOf;
        }
        int i17 = this.f5193d - i6;
        if (i17 != 0) {
            long[] jArr2 = this.f5191b;
            int i18 = i6 + 1;
            d7.g.f("<this>", jArr2);
            System.arraycopy(jArr2, i6, jArr2, i18, i17);
            Object[] objArr3 = this.f5192c;
            s6.f.l(i18, i6, this.f5193d, objArr3, objArr3);
        }
        this.f5191b[i6] = j3;
        this.f5192c[i6] = obj;
        this.f5193d++;
    }

    public final String toString() {
        int i6;
        int i9;
        Object obj = h.f5194a;
        if (this.f5190a) {
            int i10 = this.f5193d;
            long[] jArr = this.f5191b;
            Object[] objArr = this.f5192c;
            int i11 = 0;
            for (int i12 = 0; i12 < i10; i12++) {
                Object obj2 = objArr[i12];
                if (obj2 != obj) {
                    if (i12 != i11) {
                        jArr[i11] = jArr[i12];
                        objArr[i11] = obj2;
                        objArr[i12] = null;
                    }
                    i11++;
                }
            }
            this.f5190a = false;
            this.f5193d = i11;
        }
        int i13 = this.f5193d;
        if (i13 <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(i13 * 28);
        sb.append('{');
        int i14 = this.f5193d;
        for (int i15 = 0; i15 < i14; i15++) {
            if (i15 > 0) {
                sb.append(", ");
            }
            if (i15 < 0 || i15 >= (i6 = this.f5193d)) {
                throw new IllegalArgumentException(a1.a.i(i15, "Expected index to be within 0..size()-1, but was ").toString());
            }
            if (this.f5190a) {
                long[] jArr2 = this.f5191b;
                Object[] objArr2 = this.f5192c;
                int i16 = 0;
                for (int i17 = 0; i17 < i6; i17++) {
                    Object obj3 = objArr2[i17];
                    if (obj3 != obj) {
                        if (i17 != i16) {
                            jArr2[i16] = jArr2[i17];
                            objArr2[i16] = obj3;
                            objArr2[i17] = null;
                        }
                        i16++;
                    }
                }
                this.f5190a = false;
                this.f5193d = i16;
            }
            sb.append(this.f5191b[i15]);
            sb.append('=');
            if (i15 < 0 || i15 >= (i9 = this.f5193d)) {
                throw new IllegalArgumentException(a1.a.i(i15, "Expected index to be within 0..size()-1, but was ").toString());
            }
            if (this.f5190a) {
                long[] jArr3 = this.f5191b;
                Object[] objArr3 = this.f5192c;
                int i18 = 0;
                for (int i19 = 0; i19 < i9; i19++) {
                    Object obj4 = objArr3[i19];
                    if (obj4 != obj) {
                        if (i19 != i18) {
                            jArr3[i18] = jArr3[i19];
                            objArr3[i18] = obj4;
                            objArr3[i19] = null;
                        }
                        i18++;
                    }
                }
                this.f5190a = false;
                this.f5193d = i18;
            }
            Object obj5 = this.f5192c[i15];
            if (obj5 != sb) {
                sb.append(obj5);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        String string = sb.toString();
        d7.g.e("StringBuilder(capacity).…builderAction).toString()", string);
        return string;
    }
}
