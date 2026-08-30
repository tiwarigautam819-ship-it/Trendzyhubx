package v7;

import com.google.firebase.messaging.p;
import e8.w;
import e8.y;
import java.io.IOException;
import java.net.ProtocolException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w f5648a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f5649b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f5650c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f5651d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f5652e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f5653f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ p f5654g;

    public d(p pVar, w wVar, long j3) {
        d7.g.f("delegate", wVar);
        this.f5654g = pVar;
        this.f5648a = wVar;
        this.f5649b = j3;
        this.f5651d = true;
        if (j3 == 0) {
            c(null);
        }
    }

    public final void a() throws IOException {
        this.f5648a.close();
    }

    @Override // e8.w
    public final y b() {
        return this.f5648a.b();
    }

    public final IOException c(IOException iOException) {
        if (this.f5652e) {
            return iOException;
        }
        this.f5652e = true;
        if (iOException == null && this.f5651d) {
            this.f5651d = false;
        }
        return this.f5654g.a(true, false, iOException);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f5653f) {
            return;
        }
        this.f5653f = true;
        try {
            a();
            c(null);
        } catch (IOException e9) {
            throw c(e9);
        }
    }

    @Override // e8.w
    public final long h(long j3, e8.g gVar) throws IOException {
        d7.g.f("sink", gVar);
        if (this.f5653f) {
            throw new IllegalStateException("closed");
        }
        try {
            long jH = this.f5648a.h(8192L, gVar);
            if (this.f5651d) {
                this.f5651d = false;
            }
            if (jH == -1) {
                c(null);
                return -1L;
            }
            long j8 = this.f5650c + jH;
            long j9 = this.f5649b;
            if (j9 == -1 || j8 <= j9) {
                this.f5650c = j8;
                if (j8 == j9) {
                    c(null);
                }
                return jH;
            }
            throw new ProtocolException("expected " + j9 + " bytes but received " + j8);
        } catch (IOException e9) {
            throw c(e9);
        }
    }

    public final String toString() {
        return d.class.getSimpleName() + '(' + this.f5648a + ')';
    }
}
