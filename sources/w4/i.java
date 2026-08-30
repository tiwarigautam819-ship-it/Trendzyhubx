package w4;

import com.google.android.gms.common.internal.d0;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i implements Executor {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Logger f5747f = Logger.getLogger(i.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Executor f5748a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayDeque f5749b = new ArrayDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5750c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f5751d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final s4.b f5752e = new s4.b(this);

    public i(Executor executor) {
        d0.h(executor);
        this.f5748a = executor;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        d0.h(runnable);
        synchronized (this.f5749b) {
            int i6 = this.f5750c;
            if (i6 != 4 && i6 != 3) {
                long j3 = this.f5751d;
                c4.b bVar = new c4.b(runnable, 2);
                this.f5749b.add(bVar);
                this.f5750c = 2;
                try {
                    this.f5748a.execute(this.f5752e);
                    if (this.f5750c != 2) {
                        return;
                    }
                    synchronized (this.f5749b) {
                        try {
                            if (this.f5751d == j3 && this.f5750c == 2) {
                                this.f5750c = 3;
                            }
                        } finally {
                        }
                    }
                    return;
                } catch (Error | RuntimeException e9) {
                    synchronized (this.f5749b) {
                        try {
                            int i9 = this.f5750c;
                            boolean z5 = true;
                            if ((i9 != 1 && i9 != 2) || !this.f5749b.removeLastOccurrence(bVar)) {
                                z5 = false;
                            }
                            if (!(e9 instanceof RejectedExecutionException) || z5) {
                                throw e9;
                            }
                        } finally {
                        }
                    }
                    return;
                }
            }
            this.f5749b.add(runnable);
        }
    }

    public final String toString() {
        return "SequentialExecutor@" + System.identityHashCode(this) + "{" + this.f5748a + "}";
    }
}
