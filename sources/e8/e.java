package e8;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class e extends y {
    public static final ReentrantLock h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Condition f2440i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final long f2441j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final long f2442k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static e f2443l;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2444e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public e f2445f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f2446g;

    static {
        ReentrantLock reentrantLock = new ReentrantLock();
        h = reentrantLock;
        Condition conditionNewCondition = reentrantLock.newCondition();
        d7.g.e("newCondition(...)", conditionNewCondition);
        f2440i = conditionNewCondition;
        long millis = TimeUnit.SECONDS.toMillis(60L);
        f2441j = millis;
        f2442k = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    public final void h() {
        e eVar;
        long j3 = this.f2490c;
        boolean z5 = this.f2488a;
        if (j3 != 0 || z5) {
            ReentrantLock reentrantLock = h;
            reentrantLock.lock();
            try {
                if (this.f2444e) {
                    throw new IllegalStateException("Unbalanced enter/exit");
                }
                this.f2444e = true;
                if (f2443l == null) {
                    f2443l = new e();
                    b bVar = new b("Okio Watchdog");
                    bVar.setDaemon(true);
                    bVar.start();
                }
                long jNanoTime = System.nanoTime();
                if (j3 != 0 && z5) {
                    this.f2446g = Math.min(j3, c() - jNanoTime) + jNanoTime;
                } else if (j3 != 0) {
                    this.f2446g = j3 + jNanoTime;
                } else {
                    if (!z5) {
                        throw new AssertionError();
                    }
                    this.f2446g = c();
                }
                long j8 = this.f2446g - jNanoTime;
                e eVar2 = f2443l;
                d7.g.c(eVar2);
                while (true) {
                    eVar = eVar2.f2445f;
                    if (eVar == null || j8 < eVar.f2446g - jNanoTime) {
                        break;
                    } else {
                        eVar2 = eVar;
                    }
                }
                this.f2445f = eVar;
                eVar2.f2445f = this;
                if (eVar2 == f2443l) {
                    f2440i.signal();
                }
                reentrantLock.unlock();
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
    }

    public final boolean i() {
        ReentrantLock reentrantLock = h;
        reentrantLock.lock();
        try {
            if (!this.f2444e) {
                return false;
            }
            this.f2444e = false;
            e eVar = f2443l;
            while (eVar != null) {
                e eVar2 = eVar.f2445f;
                if (eVar2 == this) {
                    eVar.f2445f = this.f2445f;
                    this.f2445f = null;
                    return false;
                }
                eVar = eVar2;
            }
            reentrantLock.unlock();
            return true;
        } finally {
            reentrantLock.unlock();
        }
    }

    public void j() {
    }
}
