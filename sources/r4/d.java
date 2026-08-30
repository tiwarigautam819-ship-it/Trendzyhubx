package r4;

import java.util.Iterator;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final transient int f4972c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final transient int f4973d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ e f4974e;

    public d(e eVar, int i6, int i9) {
        this.f4974e = eVar;
        this.f4972c = i6;
        this.f4973d = i9;
    }

    @Override // r4.a
    public final Object[] b() {
        return this.f4974e.b();
    }

    @Override // r4.a
    public final int c() {
        return this.f4974e.d() + this.f4972c + this.f4973d;
    }

    @Override // r4.a
    public final int d() {
        return this.f4974e.d() + this.f4972c;
    }

    @Override // r4.e, java.util.List
    /* JADX INFO: renamed from: g */
    public final e subList(int i6, int i9) {
        z7.l.e(i6, i9, this.f4973d);
        int i10 = this.f4972c;
        return this.f4974e.subList(i6 + i10, i9 + i10);
    }

    @Override // java.util.List
    public final Object get(int i6) {
        z7.l.b(i6, this.f4973d);
        return this.f4974e.get(i6 + this.f4972c);
    }

    @Override // r4.e, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    @Override // r4.e, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f4973d;
    }

    @Override // r4.e, java.util.List
    public final /* bridge */ /* synthetic */ ListIterator listIterator(int i6) {
        return listIterator(i6);
    }
}
