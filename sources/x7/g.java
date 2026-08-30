package x7;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g extends b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f6044d;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f6030b) {
            return;
        }
        if (!this.f6044d) {
            a();
        }
        this.f6030b = true;
    }

    @Override // x7.b, e8.w
    public final long h(long j3, e8.g gVar) throws IOException {
        d7.g.f("sink", gVar);
        if (this.f6030b) {
            throw new IllegalStateException("closed");
        }
        if (this.f6044d) {
            return -1L;
        }
        long jH = super.h(8192L, gVar);
        if (jH != -1) {
            return jH;
        }
        this.f6044d = true;
        a();
        return -1L;
    }
}
