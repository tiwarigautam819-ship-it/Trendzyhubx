package y7;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class r implements e8.w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e8.i f6341a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6342b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6343c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f6344d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6345e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6346f;

    public r(e8.i iVar) {
        d7.g.f(FirebaseAnalytics.Param.SOURCE, iVar);
        this.f6341a = iVar;
    }

    @Override // e8.w
    public final e8.y b() {
        return this.f6341a.b();
    }

    @Override // e8.w
    public final long h(long j3, e8.g gVar) throws IOException {
        int i6;
        int i9;
        d7.g.f("sink", gVar);
        do {
            int i10 = this.f6345e;
            e8.i iVar = this.f6341a;
            if (i10 == 0) {
                iVar.skip(this.f6346f);
                this.f6346f = 0;
                if ((this.f6343c & 4) == 0) {
                    i6 = this.f6344d;
                    int iS = s7.b.s(iVar);
                    this.f6345e = iS;
                    this.f6342b = iS;
                    int i11 = iVar.readByte() & 255;
                    this.f6343c = iVar.readByte() & 255;
                    Logger logger = s.f6347d;
                    if (logger.isLoggable(Level.FINE)) {
                        e8.j jVar = f.f6295a;
                        logger.fine(f.a(true, this.f6344d, this.f6342b, i11, this.f6343c));
                    }
                    i9 = iVar.readInt() & Integer.MAX_VALUE;
                    this.f6344d = i9;
                    if (i11 != 9) {
                        throw new IOException(i11 + " != TYPE_CONTINUATION");
                    }
                }
            } else {
                long jH = iVar.h(Math.min(8192L, i10), gVar);
                if (jH != -1) {
                    this.f6345e -= (int) jH;
                    return jH;
                }
            }
            return -1L;
        } while (i9 == i6);
        throw new IOException("TYPE_CONTINUATION streamId changed");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
