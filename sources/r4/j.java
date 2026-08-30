package r4;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j extends g {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Object[] f4984i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final j f4985j;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final transient Object[] f4986d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient int f4987e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final transient Object[] f4988f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final transient int f4989g;
    public final transient int h;

    static {
        Object[] objArr = new Object[0];
        f4984i = objArr;
        f4985j = new j(0, 0, 0, objArr, objArr);
    }

    public j(int i6, int i9, int i10, Object[] objArr, Object[] objArr2) {
        this.f4986d = objArr;
        this.f4987e = i6;
        this.f4988f = objArr2;
        this.f4989g = i9;
        this.h = i10;
    }

    @Override // r4.a
    public final int a(Object[] objArr) {
        Object[] objArr2 = this.f4986d;
        int i6 = this.h;
        System.arraycopy(objArr2, 0, objArr, 0, i6);
        return i6;
    }

    @Override // r4.a
    public final Object[] b() {
        return this.f4986d;
    }

    @Override // r4.a
    public final int c() {
        return this.h;
    }

    @Override // r4.a, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.f4988f;
            if (objArr.length != 0) {
                int iF = f4.f.f(obj == null ? 0 : obj.hashCode());
                while (true) {
                    int i6 = iF & this.f4989g;
                    Object obj2 = objArr[i6];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    iF = i6 + 1;
                }
            }
        }
        return false;
    }

    @Override // r4.a
    public final int d() {
        return 0;
    }

    @Override // r4.g, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f4987e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        e eVarE = this.f4978b;
        if (eVarE == null) {
            eVarE = e.e(this.h, this.f4986d);
            this.f4978b = eVarE;
        }
        return eVarE.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.h;
    }
}
