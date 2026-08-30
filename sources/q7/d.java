package q7;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends g {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final d f4911d;

    static {
        int i6 = j.f4919c;
        int i9 = j.f4920d;
        long j3 = j.f4921e;
        String str = j.f4917a;
        d dVar = new d();
        dVar.f4913c = new b(i6, i9, j3, str);
        f4911d = dVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // l7.n
    public final String toString() {
        return "Dispatchers.Default";
    }
}
