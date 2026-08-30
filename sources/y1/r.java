package y1;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class r implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f6145a;

    public r() {
        this.f6145a = new HashMap();
    }

    private final Object writeReplace() {
        if (v2.a.b(this)) {
            return null;
        }
        try {
            return new q(this.f6145a);
        } catch (Throwable th) {
            v2.a.a(th, this);
            return null;
        }
    }

    public final void a(b bVar, List list) {
        HashMap map = this.f6145a;
        if (v2.a.b(this)) {
            return;
        }
        try {
            d7.g.f("appEvents", list);
            if (!map.containsKey(bVar)) {
                map.put(bVar, s6.g.x(list));
                return;
            }
            List list2 = (List) map.get(bVar);
            if (list2 != null) {
                list2.addAll(list);
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }

    public r(HashMap map) {
        d7.g.f("appEventMap", map);
        HashMap map2 = new HashMap();
        this.f6145a = map2;
        map2.putAll(map);
    }
}
