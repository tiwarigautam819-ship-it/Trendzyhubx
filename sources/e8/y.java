package e8;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class y {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final x f2487d = new x();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f2488a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f2489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f2490c;

    public y a() {
        this.f2488a = false;
        return this;
    }

    public y b() {
        this.f2490c = 0L;
        return this;
    }

    public long c() {
        if (this.f2488a) {
            return this.f2489b;
        }
        throw new IllegalStateException("No deadline");
    }

    public y d(long j3) {
        this.f2488a = true;
        this.f2489b = j3;
        return this;
    }

    public boolean e() {
        return this.f2488a;
    }

    public void f() throws InterruptedIOException {
        if (Thread.currentThread().isInterrupted()) {
            throw new InterruptedIOException("interrupted");
        }
        if (this.f2488a && this.f2489b - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public y g(long j3) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        d7.g.f("unit", timeUnit);
        if (j3 >= 0) {
            this.f2490c = timeUnit.toNanos(j3);
            return this;
        }
        throw new IllegalArgumentException(("timeout < 0: " + j3).toString());
    }
}
