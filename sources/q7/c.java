package q7;

import java.util.concurrent.Executor;
import l7.d0;
import l7.n;
import p7.r;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends d0 implements Executor {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c f4909c = new c();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final n f4910d;

    static {
        n hVar = k.f4924c;
        int i6 = r.f4698a;
        if (64 >= i6) {
            i6 = 64;
        }
        int iE = p7.a.e(i6, "kotlinx.coroutines.io.parallelism", 12);
        hVar.getClass();
        if (iE < 1) {
            throw new IllegalArgumentException(a1.a.i(iE, "Expected positive parallelism level, but got ").toString());
        }
        if (iE < j.f4920d) {
            if (iE < 1) {
                throw new IllegalArgumentException(a1.a.i(iE, "Expected positive parallelism level, but got ").toString());
            }
            hVar = new p7.h(hVar, iE);
        }
        f4910d = hVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO");
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        t(u6.l.f5505a, runnable);
    }

    @Override // l7.n
    public final void t(u6.k kVar, Runnable runnable) {
        f4910d.t(kVar, runnable);
    }

    @Override // l7.n
    public final String toString() {
        return "Dispatchers.IO";
    }
}
