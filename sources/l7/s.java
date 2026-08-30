package l7;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class s extends b0 implements Runnable {
    private static volatile Thread _thread;
    private static volatile int debugStatus;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final s f3893i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final long f3894j;

    static {
        Long l4;
        s sVar = new s();
        f3893i = sVar;
        sVar.x(false);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l4 = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l4 = 1000L;
        }
        f3894j = timeUnit.toNanos(l4.longValue());
    }

    public final synchronized void D() {
        int i6 = debugStatus;
        if (i6 == 2 || i6 == 3) {
            debugStatus = 3;
            b0.f3839f.set(this, null);
            b0.f3840g.set(this, null);
            notifyAll();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zB;
        x0.f3903a.set(this);
        try {
            synchronized (this) {
                int i6 = debugStatus;
                if (i6 == 2 || i6 == 3) {
                    if (zB) {
                        return;
                    } else {
                        return;
                    }
                }
                debugStatus = 1;
                notifyAll();
                long j3 = Long.MAX_VALUE;
                while (true) {
                    Thread.interrupted();
                    long jC = C();
                    if (jC == Long.MAX_VALUE) {
                        long jNanoTime = System.nanoTime();
                        if (j3 == Long.MAX_VALUE) {
                            j3 = f3894j + jNanoTime;
                        }
                        long j8 = j3 - jNanoTime;
                        if (j8 <= 0) {
                            _thread = null;
                            D();
                            if (B()) {
                                return;
                            }
                            w();
                            return;
                        }
                        if (jC > j8) {
                            jC = j8;
                        }
                    } else {
                        j3 = Long.MAX_VALUE;
                    }
                    if (jC > 0) {
                        int i9 = debugStatus;
                        if (i9 == 2 || i9 == 3) {
                            _thread = null;
                            D();
                            if (B()) {
                                return;
                            }
                            w();
                            return;
                        }
                        LockSupport.parkNanos(this, jC);
                    }
                }
            }
        } finally {
            _thread = null;
            D();
            if (!B()) {
                w();
            }
        }
    }

    @Override // l7.b0, l7.c0
    public final void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }

    @Override // l7.c0
    public final Thread w() {
        Thread thread;
        Thread thread2 = _thread;
        if (thread2 != null) {
            return thread2;
        }
        synchronized (this) {
            thread = _thread;
            if (thread == null) {
                thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
                _thread = thread;
                thread.setDaemon(true);
                thread.start();
            }
        }
        return thread;
    }

    @Override // l7.b0
    public final void z(Runnable runnable) {
        if (debugStatus == 4) {
            throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
        }
        super.z(runnable);
    }
}
