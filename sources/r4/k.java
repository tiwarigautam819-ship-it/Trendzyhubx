package r4;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends g {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final transient Object f4990d;

    public k(Object obj) {
        obj.getClass();
        this.f4990d = obj;
    }

    @Override // r4.a
    public final int a(Object[] objArr) {
        objArr[0] = this.f4990d;
        return 1;
    }

    @Override // r4.a, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f4990d.equals(obj);
    }

    @Override // r4.g, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f4990d.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new h(this.f4990d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String string = this.f4990d.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 2);
        sb.append('[');
        sb.append(string);
        sb.append(']');
        return sb.toString();
    }
}
