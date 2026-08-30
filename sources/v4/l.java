package v4;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l implements g5.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f5613c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile Object f5614a = f5613c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile g5.a f5615b;

    public l(g5.a aVar) {
        this.f5615b = aVar;
    }

    @Override // g5.a
    public final Object get() {
        Object obj;
        Object obj2 = this.f5614a;
        Object obj3 = f5613c;
        if (obj2 != obj3) {
            return obj2;
        }
        synchronized (this) {
            try {
                obj = this.f5614a;
                if (obj == obj3) {
                    obj = this.f5615b.get();
                    this.f5614a = obj;
                    this.f5615b = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }
}
