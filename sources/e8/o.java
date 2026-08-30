package e8;

import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o extends s6.c implements RandomAccess {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j[] f2466a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f2467b;

    public o(j[] jVarArr, int[] iArr) {
        this.f2466a = jVarArr;
        this.f2467b = iArr;
    }

    @Override // s6.c
    public final int a() {
        return this.f2466a.length;
    }

    @Override // s6.c, java.util.List, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof j) {
            return super.contains((j) obj);
        }
        return false;
    }

    @Override // java.util.List
    public final Object get(int i6) {
        return this.f2466a[i6];
    }

    @Override // s6.c, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof j) {
            return super.indexOf((j) obj);
        }
        return -1;
    }

    @Override // s6.c, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof j) {
            return super.lastIndexOf((j) obj);
        }
        return -1;
    }
}
