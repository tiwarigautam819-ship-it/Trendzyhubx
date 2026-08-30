package y7;

import androidx.fragment.app.m1;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class x implements Closeable {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Logger f6375f = Logger.getLogger(f.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e8.h f6376a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e8.g f6377b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6378c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f6379d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final d f6380e;

    public x(e8.p pVar) {
        d7.g.f("sink", pVar);
        this.f6376a = pVar;
        e8.g gVar = new e8.g();
        this.f6377b = gVar;
        this.f6378c = 16384;
        this.f6380e = new d(gVar);
    }

    public final synchronized void a(a0 a0Var) {
        try {
            d7.g.f("peerSettings", a0Var);
            if (this.f6379d) {
                throw new IOException("closed");
            }
            int i6 = this.f6378c;
            int i9 = a0Var.f6268a;
            if ((i9 & 32) != 0) {
                i6 = a0Var.f6269b[5];
            }
            this.f6378c = i6;
            if (((i9 & 2) != 0 ? a0Var.f6269b[1] : -1) != -1) {
                d dVar = this.f6380e;
                int i10 = (i9 & 2) != 0 ? a0Var.f6269b[1] : -1;
                dVar.getClass();
                int iMin = Math.min(i10, 16384);
                int i11 = dVar.f6289d;
                if (i11 != iMin) {
                    if (iMin < i11) {
                        dVar.f6287b = Math.min(dVar.f6287b, iMin);
                    }
                    dVar.f6288c = true;
                    dVar.f6289d = iMin;
                    int i12 = dVar.h;
                    if (iMin < i12) {
                        if (iMin == 0) {
                            b[] bVarArr = dVar.f6290e;
                            s6.f.n(bVarArr, 0, bVarArr.length);
                            dVar.f6291f = dVar.f6290e.length - 1;
                            dVar.f6292g = 0;
                            dVar.h = 0;
                        } else {
                            dVar.a(i12 - iMin);
                        }
                    }
                }
            }
            g(0, 0, 4, 1);
            this.f6376a.flush();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void c(boolean z5, int i6, e8.g gVar, int i9) {
        if (this.f6379d) {
            throw new IOException("closed");
        }
        g(i6, i9, 0, z5 ? 1 : 0);
        if (i9 > 0) {
            e8.h hVar = this.f6376a;
            d7.g.c(gVar);
            hVar.n(i9, gVar);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.f6379d = true;
        this.f6376a.close();
    }

    public final synchronized void flush() {
        if (this.f6379d) {
            throw new IOException("closed");
        }
        this.f6376a.flush();
    }

    public final void g(int i6, int i9, int i10, int i11) {
        Level level = Level.FINE;
        Logger logger = f6375f;
        if (logger.isLoggable(level)) {
            logger.fine(f.a(false, i6, i9, i10, i11));
        }
        if (i9 > this.f6378c) {
            throw new IllegalArgumentException(("FRAME_SIZE_ERROR length > " + this.f6378c + ": " + i9).toString());
        }
        if ((Integer.MIN_VALUE & i6) != 0) {
            throw new IllegalArgumentException(a1.a.i(i6, "reserved bit set: ").toString());
        }
        byte[] bArr = s7.b.f5287a;
        e8.h hVar = this.f6376a;
        d7.g.f("<this>", hVar);
        hVar.writeByte((i9 >>> 16) & 255);
        hVar.writeByte((i9 >>> 8) & 255);
        hVar.writeByte(i9 & 255);
        hVar.writeByte(i10 & 255);
        hVar.writeByte(i11 & 255);
        hVar.writeInt(i6 & Integer.MAX_VALUE);
    }

    public final synchronized void o(byte[] bArr, int i6, int i9) {
        a1.a.n(i9, "errorCode");
        if (this.f6379d) {
            throw new IOException("closed");
        }
        if (m1.e(i9) == -1) {
            throw new IllegalArgumentException("errorCode.httpCode == -1");
        }
        g(0, bArr.length + 8, 7, 0);
        this.f6376a.writeInt(i6);
        this.f6376a.writeInt(m1.e(i9));
        if (bArr.length != 0) {
            this.f6376a.write(bArr);
        }
        this.f6376a.flush();
    }

    public final synchronized void s(boolean z5, int i6, ArrayList arrayList) {
        if (this.f6379d) {
            throw new IOException("closed");
        }
        this.f6380e.d(arrayList);
        long j3 = this.f6377b.f2450b;
        long jMin = Math.min(this.f6378c, j3);
        int i9 = j3 == jMin ? 4 : 0;
        if (z5) {
            i9 |= 1;
        }
        g(i6, (int) jMin, 1, i9);
        this.f6376a.n(jMin, this.f6377b);
        if (j3 > jMin) {
            long j8 = j3 - jMin;
            while (j8 > 0) {
                long jMin2 = Math.min(this.f6378c, j8);
                j8 -= jMin2;
                g(i6, (int) jMin2, 9, j8 == 0 ? 4 : 0);
                this.f6376a.n(jMin2, this.f6377b);
            }
        }
    }

    public final synchronized void t(int i6, int i9, boolean z5) {
        if (this.f6379d) {
            throw new IOException("closed");
        }
        g(0, 8, 6, z5 ? 1 : 0);
        this.f6376a.writeInt(i6);
        this.f6376a.writeInt(i9);
        this.f6376a.flush();
    }

    public final synchronized void u(int i6, int i9) {
        a1.a.n(i9, "errorCode");
        if (this.f6379d) {
            throw new IOException("closed");
        }
        if (m1.e(i9) == -1) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        g(i6, 4, 3, 0);
        this.f6376a.writeInt(m1.e(i9));
        this.f6376a.flush();
    }

    public final synchronized void v(a0 a0Var) {
        try {
            d7.g.f("settings", a0Var);
            if (this.f6379d) {
                throw new IOException("closed");
            }
            g(0, Integer.bitCount(a0Var.f6268a) * 6, 4, 0);
            int i6 = 0;
            while (i6 < 10) {
                boolean z5 = true;
                if (((1 << i6) & a0Var.f6268a) == 0) {
                    z5 = false;
                }
                if (z5) {
                    this.f6376a.writeShort(i6 != 4 ? i6 != 7 ? i6 : 4 : 3);
                    this.f6376a.writeInt(a0Var.f6269b[i6]);
                }
                i6++;
            }
            this.f6376a.flush();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void w(int i6, long j3) {
        if (this.f6379d) {
            throw new IOException("closed");
        }
        if (j3 == 0 || j3 > 2147483647L) {
            throw new IllegalArgumentException(("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: " + j3).toString());
        }
        g(i6, 4, 8, 0);
        this.f6376a.writeInt((int) j3);
        this.f6376a.flush();
    }
}
