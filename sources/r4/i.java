package r4;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i extends e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final i f4981e = new i(0, new Object[0]);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final transient Object[] f4982c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final transient int f4983d;

    public i(int i6, Object[] objArr) {
        this.f4982c = objArr;
        this.f4983d = i6;
    }

    @Override // r4.e, r4.a
    public final int a(Object[] objArr) {
        Object[] objArr2 = this.f4982c;
        int i6 = this.f4983d;
        System.arraycopy(objArr2, 0, objArr, 0, i6);
        return i6;
    }

    @Override // r4.a
    public final Object[] b() {
        return this.f4982c;
    }

    @Override // r4.a
    public final int c() {
        return this.f4983d;
    }

    @Override // r4.a
    public final int d() {
        return 0;
    }

    @Override // java.util.List
    public final Object get(int i6) {
        z7.l.b(i6, this.f4983d);
        Object obj = this.f4982c[i6];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f4983d;
    }
}
