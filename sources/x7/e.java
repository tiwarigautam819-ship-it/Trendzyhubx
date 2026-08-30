package x7;

import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import v7.l;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f6039d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ i5.a f6040e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(i5.a aVar, long j3) {
        super(aVar);
        this.f6040e = aVar;
        this.f6039d = j3;
        if (j3 == 0) {
            a();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        boolean zT;
        if (this.f6030b) {
            return;
        }
        if (this.f6039d != 0) {
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            byte[] bArr = s7.b.f5287a;
            d7.g.f("timeUnit", timeUnit);
            try {
                zT = s7.b.t(this, 100);
            } catch (IOException unused) {
                zT = false;
            }
            if (!zT) {
                ((l) this.f6040e.f3206c).l();
                a();
            }
        }
        this.f6030b = true;
    }

    @Override // x7.b, e8.w
    public final long h(long j3, e8.g gVar) throws IOException {
        d7.g.f("sink", gVar);
        if (this.f6030b) {
            throw new IllegalStateException("closed");
        }
        long j8 = this.f6039d;
        if (j8 == 0) {
            return -1L;
        }
        long jH = super.h(Math.min(j8, 8192L), gVar);
        if (jH == -1) {
            ((l) this.f6040e.f3206c).l();
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            a();
            throw protocolException;
        }
        long j9 = this.f6039d - jH;
        this.f6039d = j9;
        if (j9 == 0) {
            a();
        }
        return jH;
    }
}
