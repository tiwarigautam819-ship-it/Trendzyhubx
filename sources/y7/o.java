package y7;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o implements Closeable {
    public static final a0 H;
    public long A;
    public long B;
    public long C;
    public final Socket D;
    public final x E;
    public final k F;
    public final LinkedHashSet G;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h f6317a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f6318b = new LinkedHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f6319c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f6320d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6321e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f6322f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final u7.d f6323g;
    public final u7.c h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final u7.c f6324i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final u7.c f6325j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final z f6326k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f6327l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f6328m;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public long f6329v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public long f6330w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final a0 f6331x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public a0 f6332y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public long f6333z;

    static {
        a0 a0Var = new a0();
        a0Var.c(7, 65535);
        a0Var.c(5, 16384);
        H = a0Var;
    }

    public o(com.google.android.gms.common.internal.g gVar) {
        this.f6317a = (h) gVar.f1414g;
        String str = (String) gVar.f1411d;
        if (str == null) {
            d7.g.i("connectionName");
            throw null;
        }
        this.f6319c = str;
        this.f6321e = 3;
        u7.d dVar = (u7.d) gVar.f1409b;
        this.f6323g = dVar;
        this.h = dVar.e();
        this.f6324i = dVar.e();
        this.f6325j = dVar.e();
        this.f6326k = z.f6384a;
        a0 a0Var = new a0();
        a0Var.c(7, 16777216);
        this.f6331x = a0Var;
        this.f6332y = H;
        this.C = r0.a();
        Socket socket = (Socket) gVar.f1410c;
        if (socket == null) {
            d7.g.i("socket");
            throw null;
        }
        this.D = socket;
        e8.p pVar = (e8.p) gVar.f1413f;
        if (pVar == null) {
            d7.g.i("sink");
            throw null;
        }
        this.E = new x(pVar);
        e8.q qVar = (e8.q) gVar.f1412e;
        if (qVar == null) {
            d7.g.i(FirebaseAnalytics.Param.SOURCE);
            throw null;
        }
        this.F = new k(this, new s(qVar));
        this.G = new LinkedHashSet();
    }

    public final void a(int i6, int i9, IOException iOException) {
        int i10;
        Object[] array;
        a1.a.n(i6, "connectionCode");
        a1.a.n(i9, "streamCode");
        byte[] bArr = s7.b.f5287a;
        try {
            s(i6);
        } catch (IOException unused) {
        }
        synchronized (this) {
            if (this.f6318b.isEmpty()) {
                array = null;
            } else {
                array = this.f6318b.values().toArray(new w[0]);
                this.f6318b.clear();
            }
        }
        w[] wVarArr = (w[]) array;
        if (wVarArr != null) {
            for (w wVar : wVarArr) {
                try {
                    wVar.c(i9, iOException);
                } catch (IOException unused2) {
                }
            }
        }
        try {
            this.E.close();
        } catch (IOException unused3) {
        }
        try {
            this.D.close();
        } catch (IOException unused4) {
        }
        this.h.e();
        this.f6324i.e();
        this.f6325j.e();
    }

    public final synchronized w c(int i6) {
        return (w) this.f6318b.get(Integer.valueOf(i6));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        a(1, 9, null);
    }

    public final void flush() {
        this.E.flush();
    }

    public final synchronized boolean g(long j3) {
        if (this.f6322f) {
            return false;
        }
        if (this.f6329v < this.f6328m) {
            if (j3 >= this.f6330w) {
                return false;
            }
        }
        return true;
    }

    public final synchronized w o(int i6) {
        w wVar;
        wVar = (w) this.f6318b.remove(Integer.valueOf(i6));
        notifyAll();
        return wVar;
    }

    public final void s(int i6) {
        a1.a.n(i6, "statusCode");
        synchronized (this.E) {
            synchronized (this) {
                if (this.f6322f) {
                    return;
                }
                this.f6322f = true;
                this.E.o(s7.b.f5287a, this.f6320d, i6);
            }
        }
    }

    public final synchronized void t(long j3) {
        long j8 = this.f6333z + j3;
        this.f6333z = j8;
        long j9 = j8 - this.A;
        if (j9 >= this.f6331x.a() / 2) {
            w(0, j9);
            this.A += j9;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0035, code lost:
    
        r2 = java.lang.Math.min((int) java.lang.Math.min(r12, r6 - r4), r8.E.f6378c);
        r6 = r2;
        r8.B += r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void u(int r9, boolean r10, e8.g r11, long r12) {
        /*
            r8 = this;
            r0 = 0
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            r3 = 0
            if (r2 != 0) goto Ld
            y7.x r12 = r8.E
            r12.c(r10, r9, r11, r3)
            return
        Ld:
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r2 <= 0) goto L68
            monitor-enter(r8)
        L12:
            long r4 = r8.B     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            long r6 = r8.C     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 < 0) goto L34
            java.util.LinkedHashMap r2 = r8.f6318b     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            boolean r2 = r2.containsKey(r4)     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            if (r2 == 0) goto L2c
            r8.wait()     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            goto L12
        L2a:
            r9 = move-exception
            goto L66
        L2c:
            java.io.IOException r9 = new java.io.IOException     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            java.lang.String r10 = "stream closed"
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            throw r9     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
        L34:
            long r6 = r6 - r4
            long r4 = java.lang.Math.min(r12, r6)     // Catch: java.lang.Throwable -> L2a
            int r2 = (int) r4     // Catch: java.lang.Throwable -> L2a
            y7.x r4 = r8.E     // Catch: java.lang.Throwable -> L2a
            int r4 = r4.f6378c     // Catch: java.lang.Throwable -> L2a
            int r2 = java.lang.Math.min(r2, r4)     // Catch: java.lang.Throwable -> L2a
            long r4 = r8.B     // Catch: java.lang.Throwable -> L2a
            long r6 = (long) r2     // Catch: java.lang.Throwable -> L2a
            long r4 = r4 + r6
            r8.B = r4     // Catch: java.lang.Throwable -> L2a
            monitor-exit(r8)
            long r12 = r12 - r6
            y7.x r4 = r8.E
            if (r10 == 0) goto L54
            int r5 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r5 != 0) goto L54
            r5 = 1
            goto L55
        L54:
            r5 = r3
        L55:
            r4.c(r5, r9, r11, r2)
            goto Ld
        L59:
            java.lang.Thread r9 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L2a
            r9.interrupt()     // Catch: java.lang.Throwable -> L2a
            java.io.InterruptedIOException r9 = new java.io.InterruptedIOException     // Catch: java.lang.Throwable -> L2a
            r9.<init>()     // Catch: java.lang.Throwable -> L2a
            throw r9     // Catch: java.lang.Throwable -> L2a
        L66:
            monitor-exit(r8)
            throw r9
        L68:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: y7.o.u(int, boolean, e8.g, long):void");
    }

    public final void v(int i6, int i9) {
        a1.a.n(i9, "errorCode");
        this.h.c(new j(this.f6319c + '[' + i6 + "] writeSynReset", this, i6, i9, 2), 0L);
    }

    public final void w(int i6, long j3) {
        this.h.c(new n(this.f6319c + '[' + i6 + "] windowUpdate", this, i6, j3), 0L);
    }
}
