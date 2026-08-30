package r6;

import d7.k;
import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g implements c, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public d7.h f4996a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile Object f4997b = h.f4999a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f4998c = this;

    /* JADX WARN: Multi-variable type inference failed */
    public g(c7.a aVar) {
        this.f4996a = (d7.h) aVar;
    }

    private final Object writeReplace() {
        return new k(getValue());
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [c7.a, d7.h, java.lang.Object] */
    @Override // r6.c
    public final Object getValue() {
        Object objB;
        Object obj = this.f4997b;
        h hVar = h.f4999a;
        if (obj != hVar) {
            return obj;
        }
        synchronized (this.f4998c) {
            objB = this.f4997b;
            if (objB == hVar) {
                ?? r12 = this.f4996a;
                d7.g.c(r12);
                objB = r12.b();
                this.f4997b = objB;
                this.f4996a = null;
            }
        }
        return objB;
    }

    public final String toString() {
        return this.f4997b != h.f4999a ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
