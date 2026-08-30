package h3;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements q6.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f2968c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile b f2969a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile Object f2970b;

    public static q6.a a(b bVar) {
        if (bVar instanceof a) {
            return bVar;
        }
        a aVar = new a();
        aVar.f2970b = f2968c;
        aVar.f2969a = bVar;
        return aVar;
    }

    @Override // q6.a
    public final Object get() {
        Object obj;
        Object obj2 = this.f2970b;
        Object obj3 = f2968c;
        if (obj2 != obj3) {
            return obj2;
        }
        synchronized (this) {
            try {
                obj = this.f2970b;
                if (obj == obj3) {
                    obj = this.f2969a.get();
                    Object obj4 = this.f2970b;
                    if (obj4 != obj3 && obj4 != obj) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj4 + " & " + obj + ". This is likely due to a circular dependency.");
                    }
                    this.f2970b = obj;
                    this.f2969a = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }
}
