package e8;

import com.engagelab.privates.core.constants.MTCoreConstants;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f extends InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2447a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i f2448b;

    public /* synthetic */ f(i iVar, int i6) {
        this.f2447a = i6;
        this.f2448b = iVar;
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        long jMin;
        switch (this.f2447a) {
            case 0:
                jMin = Math.min(((g) this.f2448b).f2450b, Integer.MAX_VALUE);
                break;
            default:
                q qVar = (q) this.f2448b;
                if (qVar.f2473c) {
                    throw new IOException("closed");
                }
                jMin = Math.min(qVar.f2472b.f2450b, Integer.MAX_VALUE);
                break;
        }
        return (int) jMin;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        switch (this.f2447a) {
            case 0:
                break;
            default:
                ((q) this.f2448b).close();
                break;
        }
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        switch (this.f2447a) {
            case 0:
                g gVar = (g) this.f2448b;
                if (gVar.f2450b > 0) {
                    return gVar.readByte() & 255;
                }
                return -1;
            default:
                q qVar = (q) this.f2448b;
                g gVar2 = qVar.f2472b;
                if (qVar.f2473c) {
                    throw new IOException("closed");
                }
                if (gVar2.f2450b == 0 && qVar.f2471a.h(8192L, gVar2) == -1) {
                    return -1;
                }
                return gVar2.readByte() & 255;
        }
    }

    public final String toString() {
        switch (this.f2447a) {
            case 0:
                return ((g) this.f2448b) + ".inputStream()";
            default:
                return ((q) this.f2448b) + ".inputStream()";
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i6, int i9) throws IOException {
        switch (this.f2447a) {
            case 0:
                d7.g.f("sink", bArr);
                return ((g) this.f2448b).read(bArr, i6, i9);
            default:
                d7.g.f(MTCoreConstants.Protocol.KEY_DATA, bArr);
                q qVar = (q) this.f2448b;
                g gVar = qVar.f2472b;
                if (!qVar.f2473c) {
                    i2.t.c(bArr.length, i6, i9);
                    if (gVar.f2450b == 0 && qVar.f2471a.h(8192L, gVar) == -1) {
                        return -1;
                    }
                    return gVar.read(bArr, i6, i9);
                }
                throw new IOException("closed");
        }
    }

    private final void a() {
    }
}
