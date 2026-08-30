package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class y6 extends j5 implements RandomAccess {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Object[] f1994d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final y6 f1995e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object[] f1996b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1997c;

    static {
        Object[] objArr = new Object[0];
        f1994d = objArr;
        f1995e = new y6(objArr, 0, false);
    }

    public y6(Object[] objArr, int i6, boolean z5) {
        super(z5);
        this.f1996b = objArr;
        this.f1997c = i6;
    }

    public final void a(int i6) {
        if (i6 < 0 || i6 >= this.f1997c) {
            throw new IndexOutOfBoundsException(q2.x.e(i6, this.f1997c, "Index:", ", Size:"));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i6, Object obj) {
        int i9;
        zza();
        if (i6 < 0 || i6 > (i9 = this.f1997c)) {
            throw new IndexOutOfBoundsException(q2.x.e(i6, this.f1997c, "Index:", ", Size:"));
        }
        Object[] objArr = this.f1996b;
        if (i9 < objArr.length) {
            System.arraycopy(objArr, i6, objArr, i6 + 1, i9 - i6);
        } else {
            Object[] objArr2 = new Object[Math.max(((objArr.length * 3) / 2) + 1, 10)];
            System.arraycopy(this.f1996b, 0, objArr2, 0, i6);
            System.arraycopy(this.f1996b, i6, objArr2, i6 + 1, this.f1997c - i6);
            this.f1996b = objArr2;
        }
        this.f1996b[i6] = obj;
        this.f1997c++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i6) {
        a(i6);
        return this.f1996b[i6];
    }

    @Override // com.google.android.gms.internal.measurement.j5, java.util.AbstractList, java.util.List
    public final Object remove(int i6) {
        zza();
        a(i6);
        Object[] objArr = this.f1996b;
        Object obj = objArr[i6];
        if (i6 < this.f1997c - 1) {
            System.arraycopy(objArr, i6 + 1, objArr, i6, (r2 - i6) - 1);
        }
        this.f1997c--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i6, Object obj) {
        zza();
        a(i6);
        Object[] objArr = this.f1996b;
        Object obj2 = objArr[i6];
        objArr[i6] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f1997c;
    }

    @Override // com.google.android.gms.internal.measurement.j6
    public final /* synthetic */ j6 zza(int i6) {
        if (i6 >= this.f1997c) {
            return new y6(i6 == 0 ? f1994d : Arrays.copyOf(this.f1996b, i6), this.f1997c, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        zza();
        int i6 = this.f1997c;
        Object[] objArr = this.f1996b;
        if (i6 == objArr.length) {
            this.f1996b = Arrays.copyOf(this.f1996b, Math.max(((objArr.length * 3) / 2) + 1, 10));
        }
        Object[] objArr2 = this.f1996b;
        int i9 = this.f1997c;
        this.f1997c = i9 + 1;
        objArr2[i9] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
