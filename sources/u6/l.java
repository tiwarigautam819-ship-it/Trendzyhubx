package u6;

import c7.p;
import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l implements k, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l f5505a = new l();

    private final Object readResolve() {
        return f5505a;
    }

    @Override // u6.k
    public final i g(j jVar) {
        d7.g.f("key", jVar);
        return null;
    }

    public final int hashCode() {
        return 0;
    }

    @Override // u6.k
    public final k o(j jVar) {
        d7.g.f("key", jVar);
        return this;
    }

    @Override // u6.k
    public final k s(k kVar) {
        d7.g.f("context", kVar);
        return kVar;
    }

    public final String toString() {
        return "EmptyCoroutineContext";
    }

    @Override // u6.k
    public final Object c(Object obj, p pVar) {
        return obj;
    }
}
