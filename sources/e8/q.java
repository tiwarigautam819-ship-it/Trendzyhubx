package e8;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.EOFException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w f2471a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final g f2472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2473c;

    public q(w wVar) {
        d7.g.f(FirebaseAnalytics.Param.SOURCE, wVar);
        this.f2471a = wVar;
        this.f2472b = new g();
    }

    public final boolean a() {
        if (this.f2473c) {
            throw new IllegalStateException("closed");
        }
        g gVar = this.f2472b;
        return gVar.c() && this.f2471a.h(8192L, gVar) == -1;
    }

    @Override // e8.w
    public final y b() {
        return this.f2471a.b();
    }

    public final long c(byte b3, long j3, long j8) {
        if (this.f2473c) {
            throw new IllegalStateException("closed");
        }
        if (0 > j8) {
            throw new IllegalArgumentException(("fromIndex=0 toIndex=" + j8).toString());
        }
        long jMax = 0;
        while (jMax < j8) {
            g gVar = this.f2472b;
            byte b7 = b3;
            long j9 = j8;
            long jO = gVar.o(b7, jMax, j9);
            if (jO != -1) {
                return jO;
            }
            long j10 = gVar.f2450b;
            if (j10 >= j9 || this.f2471a.h(8192L, gVar) == -1) {
                break;
            }
            jMax = Math.max(jMax, j10);
            b3 = b7;
            j8 = j9;
        }
        return -1L;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        if (this.f2473c) {
            return;
        }
        this.f2473c = true;
        this.f2471a.close();
        g gVar = this.f2472b;
        gVar.skip(gVar.f2450b);
    }

    @Override // e8.i
    public final j e(long j3) throws EOFException {
        l(j3);
        return this.f2472b.e(j3);
    }

    @Override // e8.i
    public final String f() {
        return i(Long.MAX_VALUE);
    }

    public final int g() throws EOFException {
        l(4L);
        int i6 = this.f2472b.readInt();
        return ((i6 & 255) << 24) | (((-16777216) & i6) >>> 24) | ((16711680 & i6) >>> 8) | ((65280 & i6) << 8);
    }

    @Override // e8.w
    public final long h(long j3, g gVar) {
        d7.g.f("sink", gVar);
        if (j3 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j3).toString());
        }
        if (this.f2473c) {
            throw new IllegalStateException("closed");
        }
        g gVar2 = this.f2472b;
        if (gVar2.f2450b == 0 && this.f2471a.h(8192L, gVar2) == -1) {
            return -1L;
        }
        return gVar2.h(Math.min(j3, gVar2.f2450b), gVar);
    }

    @Override // e8.i
    public final String i(long j3) throws EOFException {
        if (j3 < 0) {
            throw new IllegalArgumentException(("limit < 0: " + j3).toString());
        }
        long j8 = j3 == Long.MAX_VALUE ? Long.MAX_VALUE : j3 + 1;
        long jC = c((byte) 10, 0L, j8);
        g gVar = this.f2472b;
        if (jC != -1) {
            return f8.a.a(jC, gVar);
        }
        if (j8 < Long.MAX_VALUE && o(j8) && gVar.g(j8 - 1) == 13 && o(j8 + 1) && gVar.g(j8) == 10) {
            return f8.a.a(j8, gVar);
        }
        g gVar2 = new g();
        gVar.a(gVar2, 0L, Math.min(32, gVar.f2450b));
        throw new EOFException("\\n not found: limit=" + Math.min(gVar.f2450b, j3) + " content=" + gVar2.e(gVar2.f2450b).b() + (char) 8230);
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f2473c;
    }

    @Override // e8.i
    public final int k(o oVar) throws EOFException {
        d7.g.f("options", oVar);
        if (this.f2473c) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            g gVar = this.f2472b;
            int iB = f8.a.b(gVar, oVar, true);
            if (iB != -2) {
                if (iB != -1) {
                    gVar.skip(oVar.f2466a[iB].a());
                    return iB;
                }
            } else if (this.f2471a.h(8192L, gVar) == -1) {
                break;
            }
        }
        return -1;
    }

    @Override // e8.i
    public final void l(long j3) throws EOFException {
        if (!o(j3)) {
            throw new EOFException();
        }
    }

    public final boolean o(long j3) {
        g gVar;
        if (j3 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j3).toString());
        }
        if (this.f2473c) {
            throw new IllegalStateException("closed");
        }
        do {
            gVar = this.f2472b;
            if (gVar.f2450b >= j3) {
                return true;
            }
        } while (this.f2471a.h(8192L, gVar) != -1);
        return false;
    }

    @Override // e8.i
    public final long p() throws EOFException {
        g gVar;
        byte bG;
        l(1L);
        int i6 = 0;
        while (true) {
            int i9 = i6 + 1;
            boolean zO = o(i9);
            gVar = this.f2472b;
            if (!zO) {
                break;
            }
            bG = gVar.g(i6);
            if ((bG < 48 || bG > 57) && ((bG < 97 || bG > 102) && (bG < 65 || bG > 70))) {
                break;
            }
            i6 = i9;
        }
        if (i6 == 0) {
            a2.c.d(16);
            a2.c.d(16);
            String string = Integer.toString(bG, 16);
            d7.g.e("toString(this, checkRadix(radix))", string);
            throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x".concat(string));
        }
        return gVar.p();
    }

    @Override // e8.i
    public final String q(Charset charset) {
        w wVar = this.f2471a;
        g gVar = this.f2472b;
        gVar.y(wVar);
        return gVar.t(gVar.f2450b, charset);
    }

    @Override // e8.i
    public final InputStream r() {
        return new f(this, 1);
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        d7.g.f("sink", byteBuffer);
        g gVar = this.f2472b;
        if (gVar.f2450b == 0 && this.f2471a.h(8192L, gVar) == -1) {
            return -1;
        }
        return gVar.read(byteBuffer);
    }

    @Override // e8.i
    public final byte readByte() throws EOFException {
        l(1L);
        return this.f2472b.readByte();
    }

    @Override // e8.i
    public final int readInt() throws EOFException {
        l(4L);
        return this.f2472b.readInt();
    }

    @Override // e8.i
    public final short readShort() throws EOFException {
        l(2L);
        return this.f2472b.readShort();
    }

    @Override // e8.i
    public final void skip(long j3) throws EOFException {
        if (this.f2473c) {
            throw new IllegalStateException("closed");
        }
        while (j3 > 0) {
            g gVar = this.f2472b;
            if (gVar.f2450b == 0 && this.f2471a.h(8192L, gVar) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j3, gVar.f2450b);
            gVar.skip(jMin);
            j3 -= jMin;
        }
    }

    public final String toString() {
        return "buffer(" + this.f2471a + ')';
    }
}
