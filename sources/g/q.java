package g;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f2766a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayDeque f2767b = new ArrayDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final r f2768c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Runnable f2769d;

    public q(r rVar) {
        this.f2768c = rVar;
    }

    public final void a() {
        synchronized (this.f2766a) {
            try {
                Runnable runnable = (Runnable) this.f2767b.poll();
                this.f2769d = runnable;
                if (runnable != null) {
                    this.f2768c.execute(runnable);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        synchronized (this.f2766a) {
            try {
                this.f2767b.add(new a2.i(this, 10, runnable));
                if (this.f2769d == null) {
                    a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
