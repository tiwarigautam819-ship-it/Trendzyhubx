package com.google.android.gms.internal.measurement;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c6 extends j5 implements h6, x6, RandomAccess {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f1545d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final c6 f1546e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f1547b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1548c;

    static {
        int[] iArr = new int[0];
        f1545d = iArr;
        f1546e = new c6(iArr, 0, false);
    }

    public c6(int[] iArr, int i6, boolean z5) {
        super(z5);
        this.f1547b = iArr;
        this.f1548c = i6;
    }

    public final int a(int i6) {
        d(i6);
        return this.f1547b[i6];
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i6, Object obj) {
        int i9;
        int iIntValue = ((Integer) obj).intValue();
        zza();
        if (i6 < 0 || i6 > (i9 = this.f1548c)) {
            throw new IndexOutOfBoundsException(q2.x.e(i6, this.f1548c, "Index:", ", Size:"));
        }
        int[] iArr = this.f1547b;
        if (i9 < iArr.length) {
            System.arraycopy(iArr, i6, iArr, i6 + 1, i9 - i6);
        } else {
            int[] iArr2 = new int[Math.max(((iArr.length * 3) / 2) + 1, 10)];
            System.arraycopy(this.f1547b, 0, iArr2, 0, i6);
            System.arraycopy(this.f1547b, i6, iArr2, i6 + 1, this.f1548c - i6);
            this.f1547b = iArr2;
        }
        this.f1547b[i6] = iIntValue;
        this.f1548c++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.j5, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        zza();
        Charset charset = b6.f1534a;
        collection.getClass();
        if (!(collection instanceof c6)) {
            return super.addAll(collection);
        }
        c6 c6Var = (c6) collection;
        int i6 = c6Var.f1548c;
        if (i6 == 0) {
            return false;
        }
        int i9 = this.f1548c;
        if (Integer.MAX_VALUE - i9 < i6) {
            throw new OutOfMemoryError();
        }
        int i10 = i9 + i6;
        int[] iArr = this.f1547b;
        if (i10 > iArr.length) {
            this.f1547b = Arrays.copyOf(iArr, i10);
        }
        System.arraycopy(c6Var.f1547b, 0, this.f1547b, this.f1548c, c6Var.f1548c);
        this.f1548c = i10;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.j6
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final c6 zza(int i6) {
        if (i6 >= this.f1548c) {
            return new c6(i6 == 0 ? f1545d : Arrays.copyOf(this.f1547b, i6), this.f1548c, true);
        }
        throw new IllegalArgumentException();
    }

    public final void c(int i6) {
        zza();
        int i9 = this.f1548c;
        int[] iArr = this.f1547b;
        if (i9 == iArr.length) {
            int[] iArr2 = new int[Math.max(((iArr.length * 3) / 2) + 1, 10)];
            System.arraycopy(this.f1547b, 0, iArr2, 0, this.f1548c);
            this.f1547b = iArr2;
        }
        int[] iArr3 = this.f1547b;
        int i10 = this.f1548c;
        this.f1548c = i10 + 1;
        iArr3[i10] = i6;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final void d(int i6) {
        if (i6 < 0 || i6 >= this.f1548c) {
            throw new IndexOutOfBoundsException(q2.x.e(i6, this.f1548c, "Index:", ", Size:"));
        }
    }

    @Override // com.google.android.gms.internal.measurement.j5, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c6)) {
            return super.equals(obj);
        }
        c6 c6Var = (c6) obj;
        if (this.f1548c != c6Var.f1548c) {
            return false;
        }
        int[] iArr = c6Var.f1547b;
        for (int i6 = 0; i6 < this.f1548c; i6++) {
            if (this.f1547b[i6] != iArr[i6]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i6) {
        return Integer.valueOf(a(i6));
    }

    @Override // com.google.android.gms.internal.measurement.j5, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i6 = 1;
        for (int i9 = 0; i9 < this.f1548c; i9++) {
            i6 = (i6 * 31) + this.f1547b[i9];
        }
        return i6;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int iIntValue = ((Integer) obj).intValue();
        int i6 = this.f1548c;
        for (int i9 = 0; i9 < i6; i9++) {
            if (this.f1547b[i9] == iIntValue) {
                return i9;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.j5, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i6) {
        zza();
        d(i6);
        int[] iArr = this.f1547b;
        int i9 = iArr[i6];
        if (i6 < this.f1548c - 1) {
            System.arraycopy(iArr, i6 + 1, iArr, i6, (r2 - i6) - 1);
        }
        this.f1548c--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i9);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i6, int i9) {
        zza();
        if (i9 < i6) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.f1547b;
        System.arraycopy(iArr, i9, iArr, i6, this.f1548c - i9);
        this.f1548c -= i9 - i6;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i6, Object obj) {
        int iIntValue = ((Integer) obj).intValue();
        zza();
        d(i6);
        int[] iArr = this.f1547b;
        int i9 = iArr[i6];
        iArr[i6] = iIntValue;
        return Integer.valueOf(i9);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f1548c;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        c(((Integer) obj).intValue());
        return true;
    }
}
