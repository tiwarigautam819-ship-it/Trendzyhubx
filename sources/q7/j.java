package q7;

import java.util.concurrent.TimeUnit;
import p7.r;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f4917a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long f4918b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f4919c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f4920d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final long f4921e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final f f4922f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final f4.j f4923g;
    public static final f4.j h;

    static {
        String property;
        int i6 = r.f4698a;
        try {
            property = System.getProperty("kotlinx.coroutines.scheduler.default.name");
        } catch (SecurityException unused) {
            property = null;
        }
        if (property == null) {
            property = "DefaultDispatcher";
        }
        f4917a = property;
        f4918b = p7.a.d("kotlinx.coroutines.scheduler.resolution.ns", 100000L, 1L, Long.MAX_VALUE);
        int i9 = r.f4698a;
        if (i9 < 2) {
            i9 = 2;
        }
        f4919c = p7.a.e(i9, "kotlinx.coroutines.scheduler.core.pool.size", 8);
        f4920d = p7.a.e(2097150, "kotlinx.coroutines.scheduler.max.pool.size", 4);
        f4921e = TimeUnit.SECONDS.toNanos(p7.a.d("kotlinx.coroutines.scheduler.keep.alive.sec", 60L, 1L, Long.MAX_VALUE));
        f4922f = f.f4912a;
        f4923g = new f4.j(0);
        h = new f4.j(1);
    }
}
