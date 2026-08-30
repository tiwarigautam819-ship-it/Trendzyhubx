package l7;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f3903a = new ThreadLocal();

    public static c0 a() {
        ThreadLocal threadLocal = f3903a;
        c0 c0Var = (c0) threadLocal.get();
        if (c0Var != null) {
            return c0Var;
        }
        b bVar = new b(Thread.currentThread());
        threadLocal.set(bVar);
        return bVar;
    }
}
