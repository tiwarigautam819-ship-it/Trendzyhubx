package y5;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c extends Exception {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f6265a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final StackTraceElement[] f6266b;

    static {
        f6265a = System.getProperty("surefire.test.class.path") != null;
        f6266b = new StackTraceElement[0];
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        return null;
    }
}
