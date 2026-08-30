package e8;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte f2456a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final q f2457b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Inflater f2458c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final m f2459d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CRC32 f2460e;

    public l(w wVar) {
        d7.g.f(FirebaseAnalytics.Param.SOURCE, wVar);
        q qVar = new q(wVar);
        this.f2457b = qVar;
        Inflater inflater = new Inflater(true);
        this.f2458c = inflater;
        this.f2459d = new m(qVar, inflater);
        this.f2460e = new CRC32();
    }

    public static void a(int i6, String str, int i9) throws IOException {
        if (i9 != i6) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", Arrays.copyOf(new Object[]{str, Integer.valueOf(i9), Integer.valueOf(i6)}, 3)));
        }
    }

    @Override // e8.w
    public final y b() {
        return this.f2457b.f2471a.b();
    }

    public final void c(g gVar, long j3, long j8) {
        r rVar = gVar.f2449a;
        d7.g.c(rVar);
        while (true) {
            int i6 = rVar.f2476c;
            int i9 = rVar.f2475b;
            if (j3 < i6 - i9) {
                break;
            }
            j3 -= (long) (i6 - i9);
            rVar = rVar.f2479f;
            d7.g.c(rVar);
        }
        while (j8 > 0) {
            int i10 = (int) (((long) rVar.f2475b) + j3);
            int iMin = (int) Math.min(rVar.f2476c - i10, j8);
            this.f2460e.update(rVar.f2474a, i10, iMin);
            j8 -= (long) iMin;
            rVar = rVar.f2479f;
            d7.g.c(rVar);
            j3 = 0;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f2459d.close();
    }

    @Override // e8.w
    public final long h(long j3, g gVar) throws IOException {
        long j8;
        l lVar = this;
        d7.g.f("sink", gVar);
        byte b3 = lVar.f2456a;
        CRC32 crc32 = lVar.f2460e;
        q qVar = lVar.f2457b;
        if (b3 == 0) {
            qVar.l(10L);
            g gVar2 = qVar.f2472b;
            byte bG = gVar2.g(3L);
            boolean z5 = ((bG >> 1) & 1) == 1;
            if (z5) {
                lVar.c(gVar2, 0L, 10L);
            }
            a(8075, "ID1ID2", qVar.readShort());
            qVar.skip(8L);
            if (((bG >> 2) & 1) == 1) {
                qVar.l(2L);
                if (z5) {
                    c(gVar2, 0L, 2L);
                }
                short s3 = gVar2.readShort();
                long j9 = ((short) (((s3 & 255) << 8) | ((s3 & 65280) >>> 8))) & 65535;
                qVar.l(j9);
                if (z5) {
                    c(gVar2, 0L, j9);
                }
                qVar.skip(j9);
            }
            if (((bG >> 3) & 1) == 1) {
                long jC = qVar.c((byte) 0, 0L, Long.MAX_VALUE);
                if (jC == -1) {
                    throw new EOFException();
                }
                if (z5) {
                    j8 = 2;
                    c(gVar2, 0L, jC + 1);
                } else {
                    j8 = 2;
                }
                qVar.skip(jC + 1);
            } else {
                j8 = 2;
            }
            if (((bG >> 4) & 1) == 1) {
                long j10 = j8;
                long jC2 = qVar.c((byte) 0, 0L, Long.MAX_VALUE);
                if (jC2 == -1) {
                    throw new EOFException();
                }
                if (z5) {
                    j8 = j10;
                    lVar = this;
                    lVar.c(gVar2, 0L, jC2 + 1);
                } else {
                    lVar = this;
                    j8 = j10;
                }
                qVar.skip(jC2 + 1);
            } else {
                lVar = this;
            }
            if (z5) {
                qVar.l(j8);
                short s8 = gVar2.readShort();
                a((short) (((s8 & 255) << 8) | ((s8 & 65280) >>> 8)), "FHCRC", (short) crc32.getValue());
                crc32.reset();
            }
            lVar.f2456a = (byte) 1;
        }
        if (lVar.f2456a == 1) {
            long j11 = gVar.f2450b;
            long jH = lVar.f2459d.h(8192L, gVar);
            if (jH != -1) {
                lVar.c(gVar, j11, jH);
                return jH;
            }
            lVar.f2456a = (byte) 2;
        }
        if (lVar.f2456a == 2) {
            a(qVar.g(), "CRC", (int) crc32.getValue());
            a(qVar.g(), "ISIZE", (int) lVar.f2458c.getBytesWritten());
            lVar.f2456a = (byte) 3;
            if (!qVar.a()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }
}
