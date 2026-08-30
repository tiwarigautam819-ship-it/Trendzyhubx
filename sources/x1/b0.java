package x1;

import android.os.Handler;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b0 extends AbstractList {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final AtomicInteger f5805e = new AtomicInteger();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Handler f5806a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f5808c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f5807b = String.valueOf(Integer.valueOf(f5805e.incrementAndGet()));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f5809d = new ArrayList();

    public b0(Collection collection) {
        this.f5808c = new ArrayList(collection);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i6, Object obj) {
        z zVar = (z) obj;
        d7.g.f("element", zVar);
        this.f5808c.add(i6, zVar);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f5808c.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj == null ? true : obj instanceof z) {
            return super.contains((z) obj);
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i6) {
        return (z) this.f5808c.get(i6);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj == null ? true : obj instanceof z) {
            return super.indexOf((z) obj);
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj == null ? true : obj instanceof z) {
            return super.lastIndexOf((z) obj);
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean remove(Object obj) {
        if (obj == null ? true : obj instanceof z) {
            return super.remove((z) obj);
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i6, Object obj) {
        z zVar = (z) obj;
        d7.g.f("element", zVar);
        return (z) this.f5808c.set(i6, zVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f5808c.size();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i6) {
        return (z) this.f5808c.remove(i6);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        z zVar = (z) obj;
        d7.g.f("element", zVar);
        return this.f5808c.add(zVar);
    }

    public b0(z... zVarArr) {
        this.f5808c = new ArrayList(s6.f.h(zVarArr));
    }
}
