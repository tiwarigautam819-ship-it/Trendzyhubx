package com.google.android.gms.internal.measurement;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class n6 extends j5 implements f6, x6, RandomAccess {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final long[] f1763d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final n6 f1764e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long[] f1765b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1766c;

    static {
        long[] jArr = new long[0];
        f1763d = jArr;
        f1764e = new n6(jArr, 0, false);
    }

    public n6(long[] jArr, int i6, boolean z5) {
        super(z5);
        this.f1765b = jArr;
        this.f1766c = i6;
    }

    public final void a(long j3) {
        zza();
        int i6 = this.f1766c;
        long[] jArr = this.f1765b;
        if (i6 == jArr.length) {
            long[] jArr2 = new long[Math.max(((jArr.length * 3) / 2) + 1, 10)];
            System.arraycopy(this.f1765b, 0, jArr2, 0, this.f1766c);
            this.f1765b = jArr2;
        }
        long[] jArr3 = this.f1765b;
        int i9 = this.f1766c;
        this.f1766c = i9 + 1;
        jArr3[i9] = j3;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i6, Object obj) {
        int i9;
        long jLongValue = ((Long) obj).longValue();
        zza();
        if (i6 < 0 || i6 > (i9 = this.f1766c)) {
            throw new IndexOutOfBoundsException(q2.x.e(i6, this.f1766c, "Index:", ", Size:"));
        }
        long[] jArr = this.f1765b;
        if (i9 < jArr.length) {
            System.arraycopy(jArr, i6, jArr, i6 + 1, i9 - i6);
        } else {
            long[] jArr2 = new long[Math.max(((jArr.length * 3) / 2) + 1, 10)];
            System.arraycopy(this.f1765b, 0, jArr2, 0, i6);
            System.arraycopy(this.f1765b, i6, jArr2, i6 + 1, this.f1766c - i6);
            this.f1765b = jArr2;
        }
        this.f1765b[i6] = jLongValue;
        this.f1766c++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.j5, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        zza();
        Charset charset = b6.f1534a;
        collection.getClass();
        if (!(collection instanceof n6)) {
            return super.addAll(collection);
        }
        n6 n6Var = (n6) collection;
        int i6 = n6Var.f1766c;
        if (i6 == 0) {
            return false;
        }
        int i9 = this.f1766c;
        if (Integer.MAX_VALUE - i9 < i6) {
            throw new OutOfMemoryError();
        }
        int i10 = i9 + i6;
        long[] jArr = this.f1765b;
        if (i10 > jArr.length) {
            this.f1765b = Arrays.copyOf(jArr, i10);
        }
        System.arraycopy(n6Var.f1765b, 0, this.f1765b, this.f1766c, n6Var.f1766c);
        this.f1766c = i10;
        ((AbstractList) this).modCount++;
        return true;
    }

    public final long b(int i6) {
        d(i6);
        return this.f1765b[i6];
    }

    @Override // com.google.android.gms.internal.measurement.j6
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final n6 zza(int i6) {
        if (i6 >= this.f1766c) {
            return new n6(i6 == 0 ? f1763d : Arrays.copyOf(this.f1765b, i6), this.f1766c, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final void d(int i6) {
        if (i6 < 0 || i6 >= this.f1766c) {
            throw new IndexOutOfBoundsException(q2.x.e(i6, this.f1766c, "Index:", ", Size:"));
        }
    }

    @Override // com.google.android.gms.internal.measurement.j5, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n6)) {
            return super.equals(obj);
        }
        n6 n6Var = (n6) obj;
        if (this.f1766c != n6Var.f1766c) {
            return false;
        }
        long[] jArr = n6Var.f1765b;
        for (int i6 = 0; i6 < this.f1766c; i6++) {
            if (this.f1765b[i6] != jArr[i6]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i6) {
        return Long.valueOf(b(i6));
    }

    @Override // com.google.android.gms.internal.measurement.j5, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iA = 1;
        for (int i6 = 0; i6 < this.f1766c; i6++) {
            iA = (iA * 31) + b6.a(this.f1765b[i6]);
        }
        return iA;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long jLongValue = ((Long) obj).longValue();
        int i6 = this.f1766c;
        for (int i9 = 0; i9 < i6; i9++) {
            if (this.f1765b[i9] == jLongValue) {
                return i9;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.j5, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i6) {
        zza();
        d(i6);
        long[] jArr = this.f1765b;
        long j3 = jArr[i6];
        if (i6 < this.f1766c - 1) {
            System.arraycopy(jArr, i6 + 1, jArr, i6, (r3 - i6) - 1);
        }
        this.f1766c--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j3);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i6, int i9) {
        zza();
        if (i9 < i6) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.f1765b;
        System.arraycopy(jArr, i9, jArr, i6, this.f1766c - i9);
        this.f1766c -= i9 - i6;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i6, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        zza();
        d(i6);
        long[] jArr = this.f1765b;
        long j3 = jArr[i6];
        jArr[i6] = jLongValue;
        return Long.valueOf(j3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f1766c;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        a(((Long) obj).longValue());
        return true;
    }
}
