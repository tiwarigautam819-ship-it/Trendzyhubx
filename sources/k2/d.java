package k2;

import android.app.Application;
import java.lang.ref.WeakReference;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import q2.q;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f3516a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ScheduledExecutorService f3517b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ScheduledExecutorService f3518c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile ScheduledFuture f3519d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Object f3520e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final AtomicInteger f3521f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static volatile n f3522g;
    public static final AtomicBoolean h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static String f3523i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static long f3524j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f3525k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static WeakReference f3526l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static String f3527m;

    static {
        String canonicalName = d.class.getCanonicalName();
        if (canonicalName == null) {
            canonicalName = "com.facebook.appevents.internal.ActivityLifecycleTracker";
        }
        f3516a = canonicalName;
        f3517b = Executors.newSingleThreadScheduledExecutor();
        f3518c = Executors.newSingleThreadScheduledExecutor();
        f3520e = new Object();
        f3521f = new AtomicInteger(0);
        h = new AtomicBoolean(false);
    }

    public static void a() {
        ScheduledFuture scheduledFuture;
        synchronized (f3520e) {
            try {
                if (f3519d != null && (scheduledFuture = f3519d) != null) {
                    scheduledFuture.cancel(false);
                }
                f3519d = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final UUID b() {
        n nVar;
        if (f3522g == null || (nVar = f3522g) == null) {
            return null;
        }
        return (UUID) nVar.f3548e;
    }

    public static final void c(Application application, String str) {
        d7.g.f("application", application);
        if (h.compareAndSet(false, true)) {
            q.a(new com.getcapacitor.n(10), q2.o.CodelessEvents);
            f3523i = str;
            application.registerActivityLifecycleCallbacks(new c(0));
        }
    }
}
