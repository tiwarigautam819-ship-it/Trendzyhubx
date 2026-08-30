package j5;

import e5.e;
import h5.k;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final long f3386d = TimeUnit.HOURS.toMillis(24);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final long f3387e = TimeUnit.MINUTES.toMillis(30);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k f3388a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f3389b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3390c;

    public d() {
        if (e.f2402b == null) {
            Pattern pattern = k.f3003c;
            e.f2402b = new e(27);
        }
        e eVar = e.f2402b;
        if (k.f3004d == null) {
            k.f3004d = new k(eVar);
        }
        this.f3388a = k.f3004d;
    }

    public final synchronized long a(int i6) {
        if (!(i6 == 429 || (i6 >= 500 && i6 < 600))) {
            return f3386d;
        }
        double dPow = Math.pow(2.0d, this.f3390c);
        this.f3388a.getClass();
        return (long) Math.min(dPow + ((long) (Math.random() * 1000.0d)), f3387e);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized boolean b() {
        /*
            r4 = this;
            monitor-enter(r4)
            int r0 = r4.f3390c     // Catch: java.lang.Throwable -> L19
            if (r0 == 0) goto L1b
            h5.k r0 = r4.f3388a     // Catch: java.lang.Throwable -> L19
            e5.e r0 = r0.f3005a     // Catch: java.lang.Throwable -> L19
            r0.getClass()     // Catch: java.lang.Throwable -> L19
            long r0 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L19
            long r2 = r4.f3389b     // Catch: java.lang.Throwable -> L19
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 <= 0) goto L17
            goto L1b
        L17:
            r0 = 0
            goto L1c
        L19:
            r0 = move-exception
            goto L1e
        L1b:
            r0 = 1
        L1c:
            monitor-exit(r4)
            return r0
        L1e:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L19
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: j5.d.b():boolean");
    }

    public final synchronized void c() {
        this.f3390c = 0;
    }

    public final synchronized void d(int i6) {
        if ((i6 >= 200 && i6 < 300) || i6 == 401 || i6 == 404) {
            c();
            return;
        }
        this.f3390c++;
        long jA = a(i6);
        this.f3388a.f3005a.getClass();
        this.f3389b = System.currentTimeMillis() + jA;
    }
}
