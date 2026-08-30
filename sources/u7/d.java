package u7;

import androidx.fragment.app.p;
import d7.g;
import java.util.ArrayList;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.logging.Logger;
import k1.h;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d {
    public static final o3.a h = new o3.a(23);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final d f5518i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Logger f5519j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h f5520a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f5522c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f5523d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5521b = 10000;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f5524e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f5525f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final p f5526g = new p(13, this);

    static {
        String str = s7.b.f5293g + " TaskRunner";
        g.f("name", str);
        f5518i = new d(new h(new s7.a(str, true)));
        Logger logger = Logger.getLogger(d.class.getName());
        g.e("getLogger(TaskRunner::class.java.name)", logger);
        f5519j = logger;
    }

    public d(h hVar) {
        this.f5520a = hVar;
    }

    public static final void a(d dVar, a aVar) {
        byte[] bArr = s7.b.f5287a;
        Thread threadCurrentThread = Thread.currentThread();
        String name = threadCurrentThread.getName();
        threadCurrentThread.setName(aVar.f5506a);
        try {
            long jA = aVar.a();
            synchronized (dVar) {
                dVar.b(aVar, jA);
            }
            threadCurrentThread.setName(name);
        } catch (Throwable th) {
            synchronized (dVar) {
                dVar.b(aVar, -1L);
                threadCurrentThread.setName(name);
                throw th;
            }
        }
    }

    public final void b(a aVar, long j3) {
        byte[] bArr = s7.b.f5287a;
        c cVar = aVar.f5508c;
        g.c(cVar);
        if (cVar.f5515d != aVar) {
            throw new IllegalStateException("Check failed.");
        }
        boolean z5 = cVar.f5517f;
        cVar.f5517f = false;
        cVar.f5515d = null;
        this.f5524e.remove(cVar);
        if (j3 != -1 && !z5 && !cVar.f5514c) {
            cVar.d(aVar, j3, true);
        }
        if (cVar.f5516e.isEmpty()) {
            return;
        }
        this.f5525f.add(cVar);
    }

    public final a c() {
        long j3;
        a aVar;
        boolean z5;
        byte[] bArr = s7.b.f5287a;
        while (true) {
            ArrayList arrayList = this.f5525f;
            if (arrayList.isEmpty()) {
                return null;
            }
            long jNanoTime = System.nanoTime();
            int size = arrayList.size();
            long jMin = Long.MAX_VALUE;
            int i6 = 0;
            a aVar2 = null;
            while (true) {
                if (i6 >= size) {
                    j3 = jNanoTime;
                    aVar = null;
                    z5 = false;
                    break;
                }
                Object obj = arrayList.get(i6);
                i6++;
                a aVar3 = (a) ((c) obj).f5516e.get(0);
                j3 = jNanoTime;
                aVar = null;
                long jMax = Math.max(0L, aVar3.f5509d - j3);
                if (jMax > 0) {
                    jMin = Math.min(jMax, jMin);
                } else {
                    if (aVar2 != null) {
                        z5 = true;
                        break;
                    }
                    aVar2 = aVar3;
                }
                jNanoTime = j3;
            }
            ArrayList arrayList2 = this.f5524e;
            if (aVar2 != null) {
                byte[] bArr2 = s7.b.f5287a;
                aVar2.f5509d = -1L;
                c cVar = aVar2.f5508c;
                g.c(cVar);
                cVar.f5516e.remove(aVar2);
                arrayList.remove(cVar);
                cVar.f5515d = aVar2;
                arrayList2.add(cVar);
                if (z5 || (!this.f5522c && !arrayList.isEmpty())) {
                    p pVar = this.f5526g;
                    g.f("runnable", pVar);
                    ((ThreadPoolExecutor) this.f5520a.f3502b).execute(pVar);
                }
                return aVar2;
            }
            if (this.f5522c) {
                if (jMin >= this.f5523d - j3) {
                    return aVar;
                }
                notify();
                return aVar;
            }
            this.f5522c = true;
            this.f5523d = j3 + jMin;
            try {
                try {
                    long j8 = jMin / 1000000;
                    Long.signum(j8);
                    long j9 = jMin - (1000000 * j8);
                    if (j8 > 0 || jMin > 0) {
                        wait(j8, (int) j9);
                    }
                } catch (InterruptedException unused) {
                    for (int size2 = arrayList2.size() - 1; -1 < size2; size2--) {
                        ((c) arrayList2.get(size2)).b();
                    }
                    for (int size3 = arrayList.size() - 1; -1 < size3; size3--) {
                        c cVar2 = (c) arrayList.get(size3);
                        cVar2.b();
                        if (cVar2.f5516e.isEmpty()) {
                            arrayList.remove(size3);
                        }
                    }
                }
            } finally {
                this.f5522c = false;
            }
        }
    }

    public final void d(c cVar) {
        g.f("taskQueue", cVar);
        byte[] bArr = s7.b.f5287a;
        if (cVar.f5515d == null) {
            boolean zIsEmpty = cVar.f5516e.isEmpty();
            ArrayList arrayList = this.f5525f;
            if (zIsEmpty) {
                arrayList.remove(cVar);
            } else {
                g.f("<this>", arrayList);
                if (!arrayList.contains(cVar)) {
                    arrayList.add(cVar);
                }
            }
        }
        if (this.f5522c) {
            notify();
            return;
        }
        p pVar = this.f5526g;
        g.f("runnable", pVar);
        ((ThreadPoolExecutor) this.f5520a.f3502b).execute(pVar);
    }

    public final c e() {
        int i6;
        synchronized (this) {
            i6 = this.f5521b;
            this.f5521b = i6 + 1;
        }
        return new c(this, a1.a.i(i6, "Q"));
    }
}
