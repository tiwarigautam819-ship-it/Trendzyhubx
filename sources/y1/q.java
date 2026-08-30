package y1;

import java.io.Serializable;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f6144a;

    public q(HashMap map) {
        d7.g.f("proxyEvents", map);
        this.f6144a = map;
    }

    private final Object readResolve() {
        return new r(this.f6144a);
    }
}
