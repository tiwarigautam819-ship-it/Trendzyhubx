package v7;

import android.util.Log;
import i2.t;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;
import r7.r;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n6.d f5663a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile AtomicInteger f5664b = new AtomicInteger(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i f5665c;

    public f(i iVar, n6.d dVar) {
        this.f5665c = iVar;
        this.f5663a = dVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        r rVar;
        String strConcat = "OkHttp ".concat(((r7.m) this.f5665c.f5669b.f1409b).f());
        i iVar = this.f5665c;
        Thread threadCurrentThread = Thread.currentThread();
        String name = threadCurrentThread.getName();
        threadCurrentThread.setName(strConcat);
        try {
            iVar.f5671d.h();
            boolean z5 = false;
            try {
                try {
                    try {
                        this.f5663a.b(iVar.h());
                        rVar = iVar.f5668a;
                    } catch (IOException e9) {
                        e = e9;
                        z5 = true;
                        if (z5) {
                            z7.n nVar = z7.n.f6440a;
                            z7.n nVar2 = z7.n.f6440a;
                            String str = "Callback failure for " + i.a(iVar);
                            nVar2.getClass();
                            z7.n.i(str, 4, e);
                        } else {
                            Log.e("GA4Reporter", "logEvent request failed", e);
                        }
                        rVar = iVar.f5668a;
                    } catch (Throwable th) {
                        th = th;
                        z5 = true;
                        iVar.d();
                        if (!z5) {
                            IOException iOException = new IOException("canceled due to " + th);
                            t.a(iOException, th);
                            Log.e("GA4Reporter", "logEvent request failed", iOException);
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    iVar.f5668a.f5113a.p(this);
                    throw th2;
                }
            } catch (IOException e10) {
                e = e10;
            } catch (Throwable th3) {
                th = th3;
            }
            rVar.f5113a.p(this);
        } finally {
            threadCurrentThread.setName(name);
        }
    }
}
