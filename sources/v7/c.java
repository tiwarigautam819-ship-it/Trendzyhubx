package v7;

import com.google.firebase.messaging.p;
import e8.u;
import e8.y;
import java.io.IOException;
import java.net.ProtocolException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final u f5642a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f5643b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f5644c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f5645d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f5646e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ p f5647f;

    public c(p pVar, u uVar, long j3) {
        d7.g.f("delegate", uVar);
        this.f5647f = pVar;
        this.f5642a = uVar;
        this.f5643b = j3;
    }

    public final void a() {
        this.f5642a.close();
    }

    @Override // e8.u
    public final y b() {
        return this.f5642a.b();
    }

    public final IOException c(IOException iOException) {
        if (this.f5644c) {
            return iOException;
        }
        this.f5644c = true;
        return this.f5647f.a(false, true, iOException);
    }

    @Override // e8.u, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f5646e) {
            return;
        }
        this.f5646e = true;
        long j3 = this.f5643b;
        if (j3 != -1 && this.f5645d != j3) {
            throw new ProtocolException("unexpected end of stream");
        }
        try {
            a();
            c(null);
        } catch (IOException e9) {
            throw c(e9);
        }
    }

    @Override // e8.u, java.io.Flushable
    public final void flush() throws IOException {
        try {
            g();
        } catch (IOException e9) {
            throw c(e9);
        }
    }

    public final void g() {
        this.f5642a.flush();
    }

    @Override // e8.u
    public final void n(long j3, e8.g gVar) throws IOException {
        if (this.f5646e) {
            throw new IllegalStateException("closed");
        }
        long j8 = this.f5643b;
        if (j8 == -1 || this.f5645d + j3 <= j8) {
            try {
                this.f5642a.n(j3, gVar);
                this.f5645d += j3;
                return;
            } catch (IOException e9) {
                throw c(e9);
            }
        }
        throw new ProtocolException("expected " + j8 + " bytes but received " + (this.f5645d + j3));
    }

    public final String toString() {
        return c.class.getSimpleName() + '(' + this.f5642a + ')';
    }
}
