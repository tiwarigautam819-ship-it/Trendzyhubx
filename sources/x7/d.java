package x7;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import r7.m;
import v7.l;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final m f6035d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f6036e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f6037f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ i5.a f6038g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(i5.a aVar, m mVar) {
        super(aVar);
        d7.g.f("url", mVar);
        this.f6038g = aVar;
        this.f6035d = mVar;
        this.f6036e = -1L;
        this.f6037f = true;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        boolean zT;
        if (this.f6030b) {
            return;
        }
        if (this.f6037f) {
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            byte[] bArr = s7.b.f5287a;
            d7.g.f("timeUnit", timeUnit);
            try {
                zT = s7.b.t(this, 100);
            } catch (IOException unused) {
                zT = false;
            }
            if (!zT) {
                ((l) this.f6038g.f3206c).l();
                a();
            }
        }
        this.f6030b = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0081, code lost:
    
        if (r9.f6037f == false) goto L28;
     */
    @Override // x7.b, e8.w
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long h(long r10, e8.g r12) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 218
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: x7.d.h(long, e8.g):long");
    }
}
