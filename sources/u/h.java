package u;

import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h implements s4.c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final boolean f5429d = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Logger f5430e = Logger.getLogger(h.class.getName());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final l2.e f5431f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Object f5432g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile Object f5433a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile d f5434b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile g f5435c;

    static {
        l2.e fVar;
        try {
            fVar = new e(AtomicReferenceFieldUpdater.newUpdater(g.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(g.class, g.class, "b"), AtomicReferenceFieldUpdater.newUpdater(h.class, g.class, "c"), AtomicReferenceFieldUpdater.newUpdater(h.class, d.class, "b"), AtomicReferenceFieldUpdater.newUpdater(h.class, Object.class, "a"));
            th = null;
        } catch (Throwable th) {
            th = th;
            fVar = new f();
        }
        f5431f = fVar;
        if (th != null) {
            f5430e.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f5432g = new Object();
    }

    public static void d(h hVar) {
        g gVar;
        d dVar;
        d dVar2;
        d dVar3;
        do {
            gVar = hVar.f5435c;
        } while (!f5431f.e(hVar, gVar, g.f5426c));
        while (true) {
            dVar = null;
            if (gVar == null) {
                break;
            }
            Thread thread = gVar.f5427a;
            if (thread != null) {
                gVar.f5427a = null;
                LockSupport.unpark(thread);
            }
            gVar = gVar.f5428b;
        }
        hVar.c();
        do {
            dVar2 = hVar.f5434b;
        } while (!f5431f.c(hVar, dVar2, d.f5418d));
        while (true) {
            dVar3 = dVar;
            dVar = dVar2;
            if (dVar == null) {
                break;
            }
            dVar2 = dVar.f5421c;
            dVar.f5421c = dVar3;
        }
        while (dVar3 != null) {
            d dVar4 = dVar3.f5421c;
            e(dVar3.f5419a, dVar3.f5420b);
            dVar3 = dVar4;
        }
    }

    public static void e(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e9) {
            f5430e.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e9);
        }
    }

    public static Object f(Object obj) throws ExecutionException {
        if (obj instanceof a) {
            Throwable th = ((a) obj).f5415b;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof c) {
            throw new ExecutionException(((c) obj).f5417a);
        }
        if (obj == f5432g) {
            return null;
        }
        return obj;
    }

    public static Object g(h hVar) {
        Object obj;
        boolean z5 = false;
        while (true) {
            try {
                obj = hVar.get();
                break;
            } catch (InterruptedException unused) {
                z5 = true;
            } catch (Throwable th) {
                if (z5) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z5) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    @Override // s4.c
    public final void a(s4.b bVar, Executor executor) {
        d dVar = this.f5434b;
        d dVar2 = d.f5418d;
        if (dVar != dVar2) {
            d dVar3 = new d(bVar, executor);
            do {
                dVar3.f5421c = dVar;
                if (f5431f.c(this, dVar, dVar3)) {
                    return;
                } else {
                    dVar = this.f5434b;
                }
            } while (dVar != dVar2);
        }
        e(bVar, executor);
    }

    public final void b(StringBuilder sb) {
        try {
            Object objG = g(this);
            sb.append("SUCCESS, result=[");
            sb.append(objG == this ? "this future" : String.valueOf(objG));
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e9) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e9.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e10) {
            sb.append("FAILURE, cause=[");
            sb.append(e10.getCause());
            sb.append("]");
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z5) {
        Object obj = this.f5433a;
        if (obj == null) {
            if (f5431f.d(this, obj, f5429d ? new a(z5, new CancellationException("Future.cancel() was called.")) : z5 ? a.f5412c : a.f5413d)) {
                d(this);
                return true;
            }
        }
        return false;
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j3, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        g gVar = g.f5426c;
        long nanos = timeUnit.toNanos(j3);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f5433a;
        if (obj != null) {
            return f(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            g gVar2 = this.f5435c;
            if (gVar2 != gVar) {
                g gVar3 = new g();
                do {
                    l2.e eVar = f5431f;
                    eVar.q(gVar3, gVar2);
                    if (eVar.e(this, gVar2, gVar3)) {
                        while (true) {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                i(gVar3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f5433a;
                            if (obj2 != null) {
                                return f(obj2);
                            }
                            long jNanoTime2 = jNanoTime - System.nanoTime();
                            if (jNanoTime2 < 1000) {
                                i(gVar3);
                                nanos = jNanoTime2;
                                break;
                            }
                            nanos = jNanoTime2;
                        }
                    } else {
                        gVar2 = this.f5435c;
                    }
                } while (gVar2 != gVar);
            }
            return f(this.f5433a);
        }
        while (nanos > 0) {
            Object obj3 = this.f5433a;
            if (obj3 != null) {
                return f(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = jNanoTime - System.nanoTime();
        }
        String string = toString();
        String string2 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = string2.toLowerCase(locale);
        String strF = "Waited " + j3 + " " + timeUnit.toString().toLowerCase(locale);
        if (nanos + 1000 < 0) {
            String strF2 = x.f(strF, " (plus ");
            long j8 = -nanos;
            long jConvert = timeUnit.convert(j8, TimeUnit.NANOSECONDS);
            long nanos2 = j8 - timeUnit.toNanos(jConvert);
            boolean z5 = jConvert == 0 || nanos2 > 1000;
            if (jConvert > 0) {
                String strF3 = strF2 + jConvert + " " + lowerCase;
                if (z5) {
                    strF3 = x.f(strF3, ",");
                }
                strF2 = x.f(strF3, " ");
            }
            if (z5) {
                strF2 = strF2 + nanos2 + " nanoseconds ";
            }
            strF = x.f(strF2, "delay)");
        }
        if (isDone()) {
            throw new TimeoutException(x.f(strF, " but future completed as timeout expired"));
        }
        throw new TimeoutException(strF + " for " + string);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String h() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public final void i(g gVar) {
        gVar.f5427a = null;
        while (true) {
            g gVar2 = this.f5435c;
            if (gVar2 == g.f5426c) {
                return;
            }
            g gVar3 = null;
            while (gVar2 != null) {
                g gVar4 = gVar2.f5428b;
                if (gVar2.f5427a != null) {
                    gVar3 = gVar2;
                } else if (gVar3 != null) {
                    gVar3.f5428b = gVar4;
                    if (gVar3.f5427a == null) {
                        break;
                    }
                } else if (!f5431f.e(this, gVar2, gVar4)) {
                    break;
                }
                gVar2 = gVar4;
            }
            return;
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f5433a instanceof a;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f5433a != null;
    }

    public boolean j(Object obj) {
        if (obj == null) {
            obj = f5432g;
        }
        if (!f5431f.d(this, null, obj)) {
            return false;
        }
        d(this);
        return true;
    }

    public boolean k(Throwable th) {
        th.getClass();
        if (!f5431f.d(this, null, new c(th))) {
            return false;
        }
        d(this);
        return true;
    }

    public final String toString() {
        String strH;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.f5433a instanceof a) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            b(sb);
        } else {
            try {
                strH = h();
            } catch (RuntimeException e9) {
                strH = "Exception thrown from implementation: " + e9.getClass();
            }
            if (strH != null && !strH.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(strH);
                sb.append("]");
            } else if (isDone()) {
                b(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public void c() {
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException {
        Object obj;
        g gVar = g.f5426c;
        if (!Thread.interrupted()) {
            Object obj2 = this.f5433a;
            if (obj2 != null) {
                return f(obj2);
            }
            g gVar2 = this.f5435c;
            if (gVar2 != gVar) {
                g gVar3 = new g();
                do {
                    l2.e eVar = f5431f;
                    eVar.q(gVar3, gVar2);
                    if (eVar.e(this, gVar2, gVar3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f5433a;
                            } else {
                                i(gVar3);
                                throw new InterruptedException();
                            }
                        } while (obj == null);
                        return f(obj);
                    }
                    gVar2 = this.f5435c;
                } while (gVar2 != gVar);
            }
            return f(this.f5433a);
        }
        throw new InterruptedException();
    }
}
