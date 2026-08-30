package s5;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends AbstractSet {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5247a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Map f5248b;

    public /* synthetic */ k(int i6, Map map) {
        this.f5247a = i6;
        this.f5248b = map;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        switch (this.f5247a) {
            case 0:
                ((m) this.f5248b).clear();
                break;
            case 1:
                ((m) this.f5248b).clear();
                break;
            default:
                super.clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        l lVarA;
        switch (this.f5247a) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                m mVar = (m) this.f5248b;
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                l lVar = null;
                if (key != null) {
                    try {
                        lVarA = mVar.a(false, key);
                    } catch (ClassCastException unused) {
                        lVarA = null;
                    }
                    break;
                } else {
                    lVarA = null;
                }
                if (lVarA != null && Objects.equals(lVarA.h, entry.getValue())) {
                    lVar = lVarA;
                }
                return lVar != null;
            case 1:
                return ((m) this.f5248b).containsKey(obj);
            default:
                return super.contains(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        switch (this.f5247a) {
            case 0:
                return new j((m) this.f5248b, 0);
            case 1:
                return new j((m) this.f5248b, 1);
            default:
                return new s.c((s.e) this.f5248b);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        l lVarA;
        switch (this.f5247a) {
            case 0:
                m mVar = (m) this.f5248b;
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                l lVar = null;
                if (key != null) {
                    try {
                        lVarA = mVar.a(false, key);
                    } catch (ClassCastException unused) {
                        lVarA = null;
                    }
                    break;
                } else {
                    lVarA = null;
                }
                if (lVarA != null && Objects.equals(lVarA.h, entry.getValue())) {
                    lVar = lVarA;
                }
                if (lVar == null) {
                    return false;
                }
                mVar.c(lVar, true);
                return true;
            case 1:
                m mVar2 = (m) this.f5248b;
                l lVarA2 = null;
                if (obj != null) {
                    try {
                        lVarA2 = mVar2.a(false, obj);
                        break;
                    } catch (ClassCastException unused2) {
                    }
                }
                if (lVarA2 != null) {
                    mVar2.c(lVarA2, true);
                }
                return lVarA2 != null;
            default:
                return super.remove(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        switch (this.f5247a) {
            case 0:
                return ((m) this.f5248b).f5261d;
            case 1:
                return ((m) this.f5248b).f5261d;
            default:
                return ((s.e) this.f5248b).f5198c;
        }
    }
}
