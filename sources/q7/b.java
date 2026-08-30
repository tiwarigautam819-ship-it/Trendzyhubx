package q7;

import androidx.fragment.app.m1;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.LockSupport;
import l7.r;
import p7.q;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Executor, Closeable {
    public static final AtomicLongFieldUpdater h = AtomicLongFieldUpdater.newUpdater(b.class, "parkedWorkersStack");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final AtomicLongFieldUpdater f4899i = AtomicLongFieldUpdater.newUpdater(b.class, "controlState");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f4900j = AtomicIntegerFieldUpdater.newUpdater(b.class, "_isTerminated");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final n6.d f4901k = new n6.d("NOT_IN_STACK", 2);
    private volatile int _isTerminated;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4902a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4903b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f4904c;
    private volatile long controlState;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f4905d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final e f4906e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final e f4907f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final q f4908g;
    private volatile long parkedWorkersStack;

    public b(int i6, int i9, long j3, String str) {
        this.f4902a = i6;
        this.f4903b = i9;
        this.f4904c = j3;
        this.f4905d = str;
        if (i6 < 1) {
            throw new IllegalArgumentException(a1.a.j(i6, "Core pool size ", " should be at least 1").toString());
        }
        if (i9 < i6) {
            throw new IllegalArgumentException(x.e(i9, i6, "Max pool size ", " should be greater than or equals to core pool size ").toString());
        }
        if (i9 > 2097150) {
            throw new IllegalArgumentException(a1.a.j(i9, "Max pool size ", " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j3 <= 0) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j3 + " must be positive").toString());
        }
        this.f4906e = new e();
        this.f4907f = new e();
        this.f4908g = new q((i6 + 1) * 2);
        this.controlState = ((long) i6) << 42;
        this._isTerminated = 0;
    }

    public final int a() {
        synchronized (this.f4908g) {
            try {
                if (f4900j.get(this) != 0) {
                    return -1;
                }
                AtomicLongFieldUpdater atomicLongFieldUpdater = f4899i;
                long j3 = atomicLongFieldUpdater.get(this);
                int i6 = (int) (j3 & 2097151);
                int i9 = i6 - ((int) ((j3 & 4398044413952L) >> 21));
                if (i9 < 0) {
                    i9 = 0;
                }
                if (i9 >= this.f4902a) {
                    return 0;
                }
                if (i6 >= this.f4903b) {
                    return 0;
                }
                int i10 = ((int) (atomicLongFieldUpdater.get(this) & 2097151)) + 1;
                if (i10 <= 0 || this.f4908g.b(i10) != null) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                a aVar = new a(this, i10);
                this.f4908g.c(i10, aVar);
                if (i10 != ((int) (2097151 & atomicLongFieldUpdater.incrementAndGet(this)))) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                int i11 = i9 + 1;
                aVar.start();
                return i11;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(Runnable runnable, f4.j jVar) {
        h iVar;
        int i6;
        j.f4922f.getClass();
        long jNanoTime = System.nanoTime();
        if (runnable instanceof h) {
            iVar = (h) runnable;
            iVar.f4914a = jNanoTime;
            iVar.f4915b = jVar;
        } else {
            iVar = new i(runnable, jNanoTime, jVar);
        }
        boolean z5 = iVar.f4915b.f2610a == 1;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f4899i;
        long jAddAndGet = z5 ? atomicLongFieldUpdater.addAndGet(this, 2097152L) : 0L;
        Thread threadCurrentThread = Thread.currentThread();
        a aVar = threadCurrentThread instanceof a ? (a) threadCurrentThread : null;
        if (aVar == null || !d7.g.a(aVar.h, this)) {
            aVar = null;
        }
        if (aVar != null && (i6 = aVar.f4894c) != 5 && (iVar.f4915b.f2610a != 0 || i6 != 2)) {
            aVar.f4898g = true;
            l lVar = aVar.f4892a;
            lVar.getClass();
            iVar = (h) l.f4925b.getAndSet(lVar, iVar);
            if (iVar == null) {
                iVar = null;
            } else {
                AtomicReferenceArray atomicReferenceArray = lVar.f4929a;
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = l.f4926c;
                if (atomicIntegerFieldUpdater.get(lVar) - l.f4927d.get(lVar) != 127) {
                    if (iVar.f4915b.f2610a == 1) {
                        l.f4928e.incrementAndGet(lVar);
                    }
                    int i9 = atomicIntegerFieldUpdater.get(lVar) & ModuleDescriptor.MODULE_VERSION;
                    while (atomicReferenceArray.get(i9) != null) {
                        Thread.yield();
                    }
                    atomicReferenceArray.lazySet(i9, iVar);
                    atomicIntegerFieldUpdater.incrementAndGet(lVar);
                    iVar = null;
                }
            }
        }
        if (iVar != null) {
            if (!(iVar.f4915b.f2610a == 1 ? this.f4907f.a(iVar) : this.f4906e.a(iVar))) {
                throw new RejectedExecutionException(x.h(new StringBuilder(), this.f4905d, " was terminated"));
            }
        }
        if (z5) {
            if (s() || o(jAddAndGet)) {
                return;
            }
            s();
            return;
        }
        if (s() || o(atomicLongFieldUpdater.get(this))) {
            return;
        }
        s();
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0088  */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void close() throws java.lang.InterruptedException {
        /*
            r8 = this;
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = q7.b.f4900j
            r1 = 0
            r2 = 1
            boolean r0 = r0.compareAndSet(r8, r1, r2)
            if (r0 != 0) goto Lb
            return
        Lb:
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            boolean r1 = r0 instanceof q7.a
            r3 = 0
            if (r1 == 0) goto L17
            q7.a r0 = (q7.a) r0
            goto L18
        L17:
            r0 = r3
        L18:
            if (r0 == 0) goto L23
            q7.b r1 = r0.h
            boolean r1 = d7.g.a(r1, r8)
            if (r1 == 0) goto L23
            goto L24
        L23:
            r0 = r3
        L24:
            p7.q r1 = r8.f4908g
            monitor-enter(r1)
            java.util.concurrent.atomic.AtomicLongFieldUpdater r4 = q7.b.f4899i     // Catch: java.lang.Throwable -> Lc0
            long r4 = r4.get(r8)     // Catch: java.lang.Throwable -> Lc0
            r6 = 2097151(0x1fffff, double:1.0361303E-317)
            long r4 = r4 & r6
            int r4 = (int) r4
            monitor-exit(r1)
            if (r2 > r4) goto L76
            r1 = r2
        L36:
            p7.q r5 = r8.f4908g
            java.lang.Object r5 = r5.b(r1)
            d7.g.c(r5)
            q7.a r5 = (q7.a) r5
            if (r5 == r0) goto L71
        L43:
            boolean r6 = r5.isAlive()
            if (r6 == 0) goto L52
            java.util.concurrent.locks.LockSupport.unpark(r5)
            r6 = 10000(0x2710, double:4.9407E-320)
            r5.join(r6)
            goto L43
        L52:
            q7.l r5 = r5.f4892a
            q7.e r6 = r8.f4907f
            r5.getClass()
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r7 = q7.l.f4925b
            java.lang.Object r7 = r7.getAndSet(r5, r3)
            q7.h r7 = (q7.h) r7
            if (r7 == 0) goto L66
            r6.a(r7)
        L66:
            q7.h r7 = r5.a()
            if (r7 != 0) goto L6d
            goto L71
        L6d:
            r6.a(r7)
            goto L66
        L71:
            if (r1 == r4) goto L76
            int r1 = r1 + 1
            goto L36
        L76:
            q7.e r1 = r8.f4907f
            r1.b()
            q7.e r1 = r8.f4906e
            r1.b()
        L80:
            if (r0 == 0) goto L88
            q7.h r1 = r0.a(r2)
            if (r1 != 0) goto Laf
        L88:
            q7.e r1 = r8.f4906e
            java.lang.Object r1 = r1.d()
            q7.h r1 = (q7.h) r1
            if (r1 != 0) goto Laf
            q7.e r1 = r8.f4907f
            java.lang.Object r1 = r1.d()
            q7.h r1 = (q7.h) r1
            if (r1 != 0) goto Laf
            if (r0 == 0) goto La2
            r1 = 5
            r0.h(r1)
        La2:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = q7.b.h
            r1 = 0
            r0.set(r8, r1)
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = q7.b.f4899i
            r0.set(r8, r1)
            return
        Laf:
            r1.run()     // Catch: java.lang.Throwable -> Lb3
            goto L80
        Lb3:
            r1 = move-exception
            java.lang.Thread r3 = java.lang.Thread.currentThread()
            java.lang.Thread$UncaughtExceptionHandler r4 = r3.getUncaughtExceptionHandler()
            r4.uncaughtException(r3, r1)
            goto L80
        Lc0:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: q7.b.close():void");
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        c(runnable, j.f4923g);
    }

    public final void g(a aVar, int i6, int i9) {
        while (true) {
            long j3 = h.get(this);
            int i10 = (int) (2097151 & j3);
            long j8 = (2097152 + j3) & (-2097152);
            if (i10 == i6) {
                if (i9 == 0) {
                    Object objC = aVar.c();
                    while (true) {
                        if (objC == f4901k) {
                            i10 = -1;
                            break;
                        }
                        if (objC == null) {
                            i10 = 0;
                            break;
                        }
                        a aVar2 = (a) objC;
                        int iB = aVar2.b();
                        if (iB != 0) {
                            i10 = iB;
                            break;
                        }
                        objC = aVar2.c();
                    }
                } else {
                    i10 = i9;
                }
            }
            if (i10 >= 0) {
                if (h.compareAndSet(this, j3, ((long) i10) | j8)) {
                    return;
                }
            }
        }
    }

    public final boolean o(long j3) {
        int i6 = ((int) (2097151 & j3)) - ((int) ((j3 & 4398044413952L) >> 21));
        if (i6 < 0) {
            i6 = 0;
        }
        int i9 = this.f4902a;
        if (i6 < i9) {
            int iA = a();
            if (iA == 1 && i9 > 1) {
                a();
            }
            if (iA > 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean s() {
        n6.d dVar;
        int iB;
        while (true) {
            long j3 = h.get(this);
            a aVar = (a) this.f4908g.b((int) (2097151 & j3));
            if (aVar == null) {
                aVar = null;
            } else {
                long j8 = (2097152 + j3) & (-2097152);
                Object objC = aVar.c();
                while (true) {
                    dVar = f4901k;
                    if (objC == dVar) {
                        iB = -1;
                        break;
                    }
                    if (objC == null) {
                        iB = 0;
                        break;
                    }
                    a aVar2 = (a) objC;
                    iB = aVar2.b();
                    if (iB != 0) {
                        break;
                    }
                    objC = aVar2.c();
                }
                if (iB >= 0) {
                    if (h.compareAndSet(this, j3, ((long) iB) | j8)) {
                        aVar.g(dVar);
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
            if (aVar == null) {
                return false;
            }
            if (a.f4891i.compareAndSet(aVar, -1, 0)) {
                LockSupport.unpark(aVar);
                return true;
            }
        }
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        q qVar = this.f4908g;
        int iA = qVar.a();
        int i6 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 1; i13 < iA; i13++) {
            a aVar = (a) qVar.b(i13);
            if (aVar != null) {
                l lVar = aVar.f4892a;
                lVar.getClass();
                int i14 = l.f4925b.get(lVar) != null ? (l.f4926c.get(lVar) - l.f4927d.get(lVar)) + 1 : l.f4926c.get(lVar) - l.f4927d.get(lVar);
                int iE = m1.e(aVar.f4894c);
                if (iE == 0) {
                    i6++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(i14);
                    sb.append('c');
                    arrayList.add(sb.toString());
                } else if (iE == 1) {
                    i9++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(i14);
                    sb2.append('b');
                    arrayList.add(sb2.toString());
                } else if (iE == 2) {
                    i10++;
                } else if (iE == 3) {
                    i11++;
                    if (i14 > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(i14);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else if (iE == 4) {
                    i12++;
                }
            }
        }
        long j3 = f4899i.get(this);
        StringBuilder sb4 = new StringBuilder();
        sb4.append(this.f4905d);
        sb4.append('@');
        sb4.append(r.d(this));
        sb4.append("[Pool Size {core = ");
        int i15 = this.f4902a;
        sb4.append(i15);
        sb4.append(", max = ");
        sb4.append(this.f4903b);
        sb4.append("}, Worker States {CPU = ");
        sb4.append(i6);
        sb4.append(", blocking = ");
        sb4.append(i9);
        sb4.append(", parked = ");
        sb4.append(i10);
        sb4.append(", dormant = ");
        sb4.append(i11);
        sb4.append(", terminated = ");
        sb4.append(i12);
        sb4.append("}, running workers queues = ");
        sb4.append(arrayList);
        sb4.append(", global CPU queue size = ");
        sb4.append(this.f4906e.c());
        sb4.append(", global blocking queue size = ");
        sb4.append(this.f4907f.c());
        sb4.append(", Control State {created workers= ");
        sb4.append((int) (2097151 & j3));
        sb4.append(", blocking tasks = ");
        sb4.append((int) ((4398044413952L & j3) >> 21));
        sb4.append(", CPUs acquired = ");
        sb4.append(i15 - ((int) ((j3 & 9223367638808264704L) >> 42)));
        sb4.append("}]");
        return sb4.toString();
    }
}
