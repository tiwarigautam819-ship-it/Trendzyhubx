package s;

import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends j implements Map {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public s5.k f5184d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public b f5185e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public d f5186f;

    @Override // java.util.Map
    public final Set entrySet() {
        s5.k kVar = this.f5184d;
        if (kVar != null) {
            return kVar;
        }
        s5.k kVar2 = new s5.k(2, this);
        this.f5184d = kVar2;
        return kVar2;
    }

    public final boolean i(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!super.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final boolean j(Collection collection) {
        int i6 = this.f5198c;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            super.remove(it.next());
        }
        return i6 != this.f5198c;
    }

    @Override // java.util.Map
    public final Set keySet() {
        b bVar = this.f5185e;
        if (bVar != null) {
            return bVar;
        }
        b bVar2 = new b(this);
        this.f5185e = bVar2;
        return bVar2;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        int size = map.size() + this.f5198c;
        int i6 = this.f5198c;
        int[] iArr = this.f5196a;
        if (iArr.length < size) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, size);
            d7.g.e("copyOf(this, newSize)", iArrCopyOf);
            this.f5196a = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f5197b, size * 2);
            d7.g.e("copyOf(this, newSize)", objArrCopyOf);
            this.f5197b = objArrCopyOf;
        }
        if (this.f5198c != i6) {
            throw new ConcurrentModificationException();
        }
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public final Collection values() {
        d dVar = this.f5186f;
        if (dVar != null) {
            return dVar;
        }
        d dVar2 = new d(this);
        this.f5186f = dVar2;
        return dVar2;
    }
}
