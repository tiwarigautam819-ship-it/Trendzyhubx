package l7;

import java.lang.reflect.Method;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e0 extends d0 implements v {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Executor f3850c;

    public e0(Executor executor) {
        Method method;
        this.f3850c = executor;
        Method method2 = p7.c.f4670a;
        try {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = executor instanceof ScheduledThreadPoolExecutor ? (ScheduledThreadPoolExecutor) executor : null;
            if (scheduledThreadPoolExecutor != null && (method = p7.c.f4670a) != null) {
                method.invoke(scheduledThreadPoolExecutor, Boolean.TRUE);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Executor executor = this.f3850c;
        ExecutorService executorService = executor instanceof ExecutorService ? (ExecutorService) executor : null;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof e0) && ((e0) obj).f3850c == this.f3850c;
    }

    public final int hashCode() {
        return System.identityHashCode(this.f3850c);
    }

    @Override // l7.n
    public final void t(u6.k kVar, Runnable runnable) {
        try {
            this.f3850c.execute(runnable);
        } catch (RejectedExecutionException e9) {
            CancellationException cancellationException = new CancellationException("The task was rejected");
            cancellationException.initCause(e9);
            r.c(kVar, cancellationException);
            x.f3902b.t(kVar, runnable);
        }
    }

    @Override // l7.n
    public final String toString() {
        return this.f3850c.toString();
    }
}
