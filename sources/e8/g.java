package e8;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.EOFException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g implements i, h, Cloneable, ByteChannel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public r f2449a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f2450b;

    public final void A(long j3) {
        if (j3 == 0) {
            z(48);
            return;
        }
        long j8 = (j3 >>> 1) | j3;
        long j9 = j8 | (j8 >>> 2);
        long j10 = j9 | (j9 >>> 4);
        long j11 = j10 | (j10 >>> 8);
        long j12 = j11 | (j11 >>> 16);
        long j13 = j12 | (j12 >>> 32);
        long j14 = j13 - ((j13 >>> 1) & 6148914691236517205L);
        long j15 = ((j14 >>> 2) & 3689348814741910323L) + (j14 & 3689348814741910323L);
        long j16 = ((j15 >>> 4) + j15) & 1085102592571150095L;
        long j17 = j16 + (j16 >>> 8);
        long j18 = j17 + (j17 >>> 16);
        int i6 = (int) ((((j18 & 63) + ((j18 >>> 32) & 63)) + ((long) 3)) / ((long) 4));
        r rVarV = v(i6);
        byte[] bArr = rVarV.f2474a;
        int i9 = rVarV.f2476c;
        for (int i10 = (i9 + i6) - 1; i10 >= i9; i10--) {
            bArr[i10] = f8.a.f2636a[(int) (15 & j3)];
            j3 >>>= 4;
        }
        rVarV.f2476c += i6;
        this.f2450b += (long) i6;
    }

    public final void B(int i6) {
        r rVarV = v(4);
        byte[] bArr = rVarV.f2474a;
        int i9 = rVarV.f2476c;
        bArr[i9] = (byte) ((i6 >>> 24) & 255);
        bArr[i9 + 1] = (byte) ((i6 >>> 16) & 255);
        bArr[i9 + 2] = (byte) ((i6 >>> 8) & 255);
        bArr[i9 + 3] = (byte) (i6 & 255);
        rVarV.f2476c = i9 + 4;
        this.f2450b += 4;
    }

    public final void C(int i6) {
        r rVarV = v(2);
        byte[] bArr = rVarV.f2474a;
        int i9 = rVarV.f2476c;
        bArr[i9] = (byte) ((i6 >>> 8) & 255);
        bArr[i9 + 1] = (byte) (i6 & 255);
        rVarV.f2476c = i9 + 2;
        this.f2450b += 2;
    }

    public final void D(int i6, String str, int i9) {
        char cCharAt;
        d7.g.f("string", str);
        if (i6 < 0) {
            throw new IllegalArgumentException(a1.a.i(i6, "beginIndex < 0: ").toString());
        }
        if (i9 < i6) {
            throw new IllegalArgumentException(q2.x.e(i9, i6, "endIndex < beginIndex: ", " < ").toString());
        }
        if (i9 > str.length()) {
            throw new IllegalArgumentException(("endIndex > string.length: " + i9 + " > " + str.length()).toString());
        }
        while (i6 < i9) {
            char cCharAt2 = str.charAt(i6);
            if (cCharAt2 < 128) {
                r rVarV = v(1);
                byte[] bArr = rVarV.f2474a;
                int i10 = rVarV.f2476c - i6;
                int iMin = Math.min(i9, 8192 - i10);
                int i11 = i6 + 1;
                bArr[i6 + i10] = (byte) cCharAt2;
                while (true) {
                    i6 = i11;
                    if (i6 >= iMin || (cCharAt = str.charAt(i6)) >= 128) {
                        break;
                    }
                    i11 = i6 + 1;
                    bArr[i6 + i10] = (byte) cCharAt;
                }
                int i12 = rVarV.f2476c;
                int i13 = (i10 + i6) - i12;
                rVarV.f2476c = i12 + i13;
                this.f2450b += (long) i13;
            } else {
                if (cCharAt2 < 2048) {
                    r rVarV2 = v(2);
                    byte[] bArr2 = rVarV2.f2474a;
                    int i14 = rVarV2.f2476c;
                    bArr2[i14] = (byte) ((cCharAt2 >> 6) | 192);
                    bArr2[i14 + 1] = (byte) ((cCharAt2 & '?') | 128);
                    rVarV2.f2476c = i14 + 2;
                    this.f2450b += 2;
                } else if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                    r rVarV3 = v(3);
                    byte[] bArr3 = rVarV3.f2474a;
                    int i15 = rVarV3.f2476c;
                    bArr3[i15] = (byte) ((cCharAt2 >> '\f') | 224);
                    bArr3[i15 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                    bArr3[i15 + 2] = (byte) ((cCharAt2 & '?') | 128);
                    rVarV3.f2476c = i15 + 3;
                    this.f2450b += 3;
                } else {
                    int i16 = i6 + 1;
                    char cCharAt3 = i16 < i9 ? str.charAt(i16) : (char) 0;
                    if (cCharAt2 > 56319 || 56320 > cCharAt3 || cCharAt3 >= 57344) {
                        z(63);
                        i6 = i16;
                    } else {
                        int i17 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + 65536;
                        r rVarV4 = v(4);
                        byte[] bArr4 = rVarV4.f2474a;
                        int i18 = rVarV4.f2476c;
                        bArr4[i18] = (byte) ((i17 >> 18) | 240);
                        bArr4[i18 + 1] = (byte) (((i17 >> 12) & 63) | 128);
                        bArr4[i18 + 2] = (byte) (((i17 >> 6) & 63) | 128);
                        bArr4[i18 + 3] = (byte) ((i17 & 63) | 128);
                        rVarV4.f2476c = i18 + 4;
                        this.f2450b += 4;
                        i6 += 2;
                    }
                }
                i6++;
            }
        }
    }

    public final void E(String str) {
        d7.g.f("string", str);
        D(0, str, str.length());
    }

    public final void F(int i6) {
        String str;
        if (i6 < 128) {
            z(i6);
            return;
        }
        if (i6 < 2048) {
            r rVarV = v(2);
            byte[] bArr = rVarV.f2474a;
            int i9 = rVarV.f2476c;
            bArr[i9] = (byte) ((i6 >> 6) | 192);
            bArr[i9 + 1] = (byte) ((i6 & 63) | 128);
            rVarV.f2476c = i9 + 2;
            this.f2450b += 2;
            return;
        }
        if (55296 <= i6 && i6 < 57344) {
            z(63);
            return;
        }
        if (i6 < 65536) {
            r rVarV2 = v(3);
            byte[] bArr2 = rVarV2.f2474a;
            int i10 = rVarV2.f2476c;
            bArr2[i10] = (byte) ((i6 >> 12) | 224);
            bArr2[i10 + 1] = (byte) (((i6 >> 6) & 63) | 128);
            bArr2[i10 + 2] = (byte) ((i6 & 63) | 128);
            rVarV2.f2476c = i10 + 3;
            this.f2450b += 3;
            return;
        }
        if (i6 <= 1114111) {
            r rVarV3 = v(4);
            byte[] bArr3 = rVarV3.f2474a;
            int i11 = rVarV3.f2476c;
            bArr3[i11] = (byte) ((i6 >> 18) | 240);
            bArr3[i11 + 1] = (byte) (((i6 >> 12) & 63) | 128);
            bArr3[i11 + 2] = (byte) (((i6 >> 6) & 63) | 128);
            bArr3[i11 + 3] = (byte) ((i6 & 63) | 128);
            rVarV3.f2476c = i11 + 4;
            this.f2450b += 4;
            return;
        }
        StringBuilder sb = new StringBuilder("Unexpected code point: 0x");
        if (i6 != 0) {
            char[] cArr = f8.b.f2637a;
            char[] cArr2 = {cArr[(i6 >> 28) & 15], cArr[(i6 >> 24) & 15], cArr[(i6 >> 20) & 15], cArr[(i6 >> 16) & 15], cArr[(i6 >> 12) & 15], cArr[(i6 >> 8) & 15], cArr[(i6 >> 4) & 15], cArr[i6 & 15]};
            int i12 = 0;
            while (i12 < 8 && cArr2[i12] == '0') {
                i12++;
            }
            if (i12 < 0) {
                throw new IndexOutOfBoundsException(a1.a.j(i12, "startIndex: ", ", endIndex: 8, size: 8"));
            }
            if (i12 > 8) {
                throw new IllegalArgumentException(a1.a.j(i12, "startIndex: ", " > endIndex: 8"));
            }
            str = new String(cArr2, i12, 8 - i12);
        } else {
            str = "0";
        }
        sb.append(str);
        throw new IllegalArgumentException(sb.toString());
    }

    public final void a(g gVar, long j3, long j8) {
        d7.g.f("out", gVar);
        long j9 = j3;
        i2.t.c(this.f2450b, j9, j8);
        if (j8 == 0) {
            return;
        }
        gVar.f2450b += j8;
        r rVar = this.f2449a;
        while (true) {
            d7.g.c(rVar);
            long j10 = rVar.f2476c - rVar.f2475b;
            if (j9 < j10) {
                break;
            }
            j9 -= j10;
            rVar = rVar.f2479f;
        }
        r rVar2 = rVar;
        long j11 = j8;
        while (j11 > 0) {
            d7.g.c(rVar2);
            r rVarC = rVar2.c();
            int i6 = rVarC.f2475b + ((int) j9);
            rVarC.f2475b = i6;
            rVarC.f2476c = Math.min(i6 + ((int) j11), rVarC.f2476c);
            r rVar3 = gVar.f2449a;
            if (rVar3 == null) {
                rVarC.f2480g = rVarC;
                rVarC.f2479f = rVarC;
                gVar.f2449a = rVarC;
            } else {
                r rVar4 = rVar3.f2480g;
                d7.g.c(rVar4);
                rVar4.b(rVarC);
            }
            j11 -= (long) (rVarC.f2476c - rVarC.f2475b);
            rVar2 = rVar2.f2479f;
            j9 = 0;
        }
    }

    @Override // e8.w
    public final y b() {
        return y.f2487d;
    }

    public final boolean c() {
        return this.f2450b == 0;
    }

    public final Object clone() {
        g gVar = new g();
        if (this.f2450b == 0) {
            return gVar;
        }
        r rVar = this.f2449a;
        d7.g.c(rVar);
        r rVarC = rVar.c();
        gVar.f2449a = rVarC;
        rVarC.f2480g = rVarC;
        rVarC.f2479f = rVarC;
        for (r rVar2 = rVar.f2479f; rVar2 != rVar; rVar2 = rVar2.f2479f) {
            r rVar3 = rVarC.f2480g;
            d7.g.c(rVar3);
            d7.g.c(rVar2);
            rVar3.b(rVar2.c());
        }
        gVar.f2450b = this.f2450b;
        return gVar;
    }

    @Override // e8.h
    public final /* bridge */ /* synthetic */ h d(long j3) {
        A(j3);
        return this;
    }

    @Override // e8.i
    public final j e(long j3) throws EOFException {
        if (j3 < 0 || j3 > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + j3).toString());
        }
        if (this.f2450b < j3) {
            throw new EOFException();
        }
        if (j3 < 4096) {
            return new j(s(j3));
        }
        j jVarU = u((int) j3);
        skip(j3);
        return jVarU;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        long j3 = this.f2450b;
        g gVar = (g) obj;
        if (j3 != gVar.f2450b) {
            return false;
        }
        if (j3 == 0) {
            return true;
        }
        r rVar = this.f2449a;
        d7.g.c(rVar);
        r rVar2 = gVar.f2449a;
        d7.g.c(rVar2);
        int i6 = rVar.f2475b;
        int i9 = rVar2.f2475b;
        long j8 = 0;
        while (j8 < this.f2450b) {
            long jMin = Math.min(rVar.f2476c - i6, rVar2.f2476c - i9);
            long j9 = 0;
            while (j9 < jMin) {
                int i10 = i6 + 1;
                int i11 = i9 + 1;
                if (rVar.f2474a[i6] != rVar2.f2474a[i9]) {
                    return false;
                }
                j9++;
                i6 = i10;
                i9 = i11;
            }
            if (i6 == rVar.f2476c) {
                rVar = rVar.f2479f;
                d7.g.c(rVar);
                i6 = rVar.f2475b;
            }
            if (i9 == rVar2.f2476c) {
                rVar2 = rVar2.f2479f;
                d7.g.c(rVar2);
                i9 = rVar2.f2475b;
            }
            j8 += jMin;
        }
        return true;
    }

    @Override // e8.i
    public final String f() {
        return i(Long.MAX_VALUE);
    }

    public final byte g(long j3) {
        i2.t.c(this.f2450b, j3, 1L);
        r rVar = this.f2449a;
        if (rVar == null) {
            d7.g.c(null);
            throw null;
        }
        long j8 = this.f2450b;
        if (j8 - j3 < j3) {
            while (j8 > j3) {
                rVar = rVar.f2480g;
                d7.g.c(rVar);
                j8 -= (long) (rVar.f2476c - rVar.f2475b);
            }
            return rVar.f2474a[(int) ((((long) rVar.f2475b) + j3) - j8)];
        }
        long j9 = 0;
        while (true) {
            int i6 = rVar.f2476c;
            int i9 = rVar.f2475b;
            long j10 = ((long) (i6 - i9)) + j9;
            if (j10 > j3) {
                return rVar.f2474a[(int) ((((long) i9) + j3) - j9)];
            }
            rVar = rVar.f2479f;
            d7.g.c(rVar);
            j9 = j10;
        }
    }

    @Override // e8.w
    public final long h(long j3, g gVar) {
        d7.g.f("sink", gVar);
        if (j3 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j3).toString());
        }
        long j8 = this.f2450b;
        if (j8 == 0) {
            return -1L;
        }
        if (j3 > j8) {
            j3 = j8;
        }
        gVar.n(j3, this);
        return j3;
    }

    public final int hashCode() {
        r rVar = this.f2449a;
        if (rVar == null) {
            return 0;
        }
        int i6 = 1;
        do {
            int i9 = rVar.f2476c;
            for (int i10 = rVar.f2475b; i10 < i9; i10++) {
                i6 = (i6 * 31) + rVar.f2474a[i10];
            }
            rVar = rVar.f2479f;
            d7.g.c(rVar);
        } while (rVar != this.f2449a);
        return i6;
    }

    @Override // e8.i
    public final String i(long j3) throws EOFException {
        if (j3 < 0) {
            throw new IllegalArgumentException(("limit < 0: " + j3).toString());
        }
        long j8 = j3 != Long.MAX_VALUE ? j3 + 1 : Long.MAX_VALUE;
        long jO = o((byte) 10, 0L, j8);
        if (jO != -1) {
            return f8.a.a(jO, this);
        }
        if (j8 < this.f2450b && g(j8 - 1) == 13 && g(j8) == 10) {
            return f8.a.a(j8, this);
        }
        g gVar = new g();
        a(gVar, 0L, Math.min(32, this.f2450b));
        throw new EOFException("\\n not found: limit=" + Math.min(this.f2450b, j3) + " content=" + gVar.e(gVar.f2450b).b() + (char) 8230);
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return true;
    }

    @Override // e8.h
    public final /* bridge */ /* synthetic */ h j(j jVar) {
        w(jVar);
        return this;
    }

    @Override // e8.i
    public final int k(o oVar) throws EOFException {
        d7.g.f("options", oVar);
        int iB = f8.a.b(this, oVar, false);
        if (iB == -1) {
            return -1;
        }
        skip(oVar.f2466a[iB].a());
        return iB;
    }

    @Override // e8.i
    public final void l(long j3) throws EOFException {
        if (this.f2450b < j3) {
            throw new EOFException();
        }
    }

    @Override // e8.h
    public final /* bridge */ /* synthetic */ h m(String str) {
        E(str);
        return this;
    }

    @Override // e8.u
    public final void n(long j3, g gVar) {
        r rVarB;
        d7.g.f(FirebaseAnalytics.Param.SOURCE, gVar);
        if (gVar == this) {
            throw new IllegalArgumentException("source == this");
        }
        i2.t.c(gVar.f2450b, 0L, j3);
        while (j3 > 0) {
            r rVar = gVar.f2449a;
            d7.g.c(rVar);
            int i6 = rVar.f2476c;
            r rVar2 = gVar.f2449a;
            d7.g.c(rVar2);
            long j8 = i6 - rVar2.f2475b;
            int i9 = 0;
            if (j3 < j8) {
                r rVar3 = this.f2449a;
                r rVar4 = rVar3 != null ? rVar3.f2480g : null;
                if (rVar4 != null && rVar4.f2478e) {
                    if ((((long) rVar4.f2476c) + j3) - ((long) (rVar4.f2477d ? 0 : rVar4.f2475b)) <= 8192) {
                        r rVar5 = gVar.f2449a;
                        d7.g.c(rVar5);
                        rVar5.d(rVar4, (int) j3);
                        gVar.f2450b -= j3;
                        this.f2450b += j3;
                        return;
                    }
                }
                r rVar6 = gVar.f2449a;
                d7.g.c(rVar6);
                int i10 = (int) j3;
                if (i10 <= 0 || i10 > rVar6.f2476c - rVar6.f2475b) {
                    throw new IllegalArgumentException("byteCount out of range");
                }
                if (i10 >= 1024) {
                    rVarB = rVar6.c();
                } else {
                    rVarB = s.b();
                    byte[] bArr = rVar6.f2474a;
                    byte[] bArr2 = rVarB.f2474a;
                    int i11 = rVar6.f2475b;
                    s6.f.j(0, i11, i11 + i10, bArr, bArr2);
                }
                rVarB.f2476c = rVarB.f2475b + i10;
                rVar6.f2475b += i10;
                r rVar7 = rVar6.f2480g;
                d7.g.c(rVar7);
                rVar7.b(rVarB);
                gVar.f2449a = rVarB;
            }
            r rVar8 = gVar.f2449a;
            d7.g.c(rVar8);
            long j9 = rVar8.f2476c - rVar8.f2475b;
            gVar.f2449a = rVar8.a();
            r rVar9 = this.f2449a;
            if (rVar9 == null) {
                this.f2449a = rVar8;
                rVar8.f2480g = rVar8;
                rVar8.f2479f = rVar8;
            } else {
                r rVar10 = rVar9.f2480g;
                d7.g.c(rVar10);
                rVar10.b(rVar8);
                r rVar11 = rVar8.f2480g;
                if (rVar11 == rVar8) {
                    throw new IllegalStateException("cannot compact");
                }
                d7.g.c(rVar11);
                if (rVar11.f2478e) {
                    int i12 = rVar8.f2476c - rVar8.f2475b;
                    r rVar12 = rVar8.f2480g;
                    d7.g.c(rVar12);
                    int i13 = 8192 - rVar12.f2476c;
                    r rVar13 = rVar8.f2480g;
                    d7.g.c(rVar13);
                    if (!rVar13.f2477d) {
                        r rVar14 = rVar8.f2480g;
                        d7.g.c(rVar14);
                        i9 = rVar14.f2475b;
                    }
                    if (i12 <= i13 + i9) {
                        r rVar15 = rVar8.f2480g;
                        d7.g.c(rVar15);
                        rVar8.d(rVar15, i12);
                        rVar8.a();
                        s.a(rVar8);
                    }
                }
            }
            gVar.f2450b -= j9;
            this.f2450b += j9;
            j3 -= j9;
        }
    }

    public final long o(byte b3, long j3, long j8) {
        r rVar;
        long j9 = 0;
        if (0 > j3 || j3 > j8) {
            throw new IllegalArgumentException(("size=" + this.f2450b + " fromIndex=" + j3 + " toIndex=" + j8).toString());
        }
        long j10 = this.f2450b;
        if (j8 > j10) {
            j8 = j10;
        }
        if (j3 == j8 || (rVar = this.f2449a) == null) {
            return -1L;
        }
        if (j10 - j3 < j3) {
            while (j10 > j3) {
                rVar = rVar.f2480g;
                d7.g.c(rVar);
                j10 -= (long) (rVar.f2476c - rVar.f2475b);
            }
            while (j10 < j8) {
                byte[] bArr = rVar.f2474a;
                int iMin = (int) Math.min(rVar.f2476c, (((long) rVar.f2475b) + j8) - j10);
                for (int i6 = (int) ((((long) rVar.f2475b) + j3) - j10); i6 < iMin; i6++) {
                    if (bArr[i6] == b3) {
                        return ((long) (i6 - rVar.f2475b)) + j10;
                    }
                }
                j10 += (long) (rVar.f2476c - rVar.f2475b);
                rVar = rVar.f2479f;
                d7.g.c(rVar);
                j3 = j10;
            }
            return -1L;
        }
        while (true) {
            long j11 = ((long) (rVar.f2476c - rVar.f2475b)) + j9;
            if (j11 > j3) {
                break;
            }
            rVar = rVar.f2479f;
            d7.g.c(rVar);
            j9 = j11;
        }
        while (j9 < j8) {
            byte[] bArr2 = rVar.f2474a;
            int iMin2 = (int) Math.min(rVar.f2476c, (((long) rVar.f2475b) + j8) - j9);
            for (int i9 = (int) ((((long) rVar.f2475b) + j3) - j9); i9 < iMin2; i9++) {
                if (bArr2[i9] == b3) {
                    return ((long) (i9 - rVar.f2475b)) + j9;
                }
            }
            j9 += (long) (rVar.f2476c - rVar.f2475b);
            rVar = rVar.f2479f;
            d7.g.c(rVar);
            j3 = j9;
        }
        return -1L;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a6 A[EDGE_INSN: B:44:0x00a6->B:38:0x00a6 BREAK  A[LOOP:0: B:5:0x000c->B:46:?], SYNTHETIC] */
    @Override // e8.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long p() throws java.io.EOFException {
        /*
            r15 = this;
            long r0 = r15.f2450b
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto Lad
            r0 = 0
            r1 = r0
            r6 = r1
            r4 = r2
        Lc:
            e8.r r7 = r15.f2449a
            d7.g.c(r7)
            byte[] r8 = r7.f2474a
            int r9 = r7.f2475b
            int r10 = r7.f2476c
        L17:
            if (r9 >= r10) goto L92
            r11 = r8[r9]
            r12 = 48
            if (r11 < r12) goto L26
            r12 = 57
            if (r11 > r12) goto L26
            int r12 = r11 + (-48)
            goto L3b
        L26:
            r12 = 97
            if (r11 < r12) goto L31
            r12 = 102(0x66, float:1.43E-43)
            if (r11 > r12) goto L31
            int r12 = r11 + (-87)
            goto L3b
        L31:
            r12 = 65
            if (r11 < r12) goto L6a
            r12 = 70
            if (r11 > r12) goto L6a
            int r12 = r11 + (-55)
        L3b:
            r13 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r13 = r13 & r4
            int r13 = (r13 > r2 ? 1 : (r13 == r2 ? 0 : -1))
            if (r13 != 0) goto L4b
            r11 = 4
            long r4 = r4 << r11
            long r11 = (long) r12
            long r4 = r4 | r11
            int r9 = r9 + 1
            int r1 = r1 + 1
            goto L17
        L4b:
            e8.g r0 = new e8.g
            r0.<init>()
            r0.A(r4)
            r0.z(r11)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            long r2 = r0.f2450b
            java.nio.charset.Charset r4 = k7.a.f3570a
            java.lang.String r0 = r0.t(r2, r4)
            java.lang.String r2 = "Number too large: "
            java.lang.String r0 = r2.concat(r0)
            r1.<init>(r0)
            throw r1
        L6a:
            r6 = 1
            if (r1 == 0) goto L6e
            goto L92
        L6e:
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            int r2 = r11 >> 4
            r2 = r2 & 15
            char[] r3 = f8.b.f2637a
            char r2 = r3[r2]
            r4 = r11 & 15
            char r3 = r3[r4]
            r4 = 2
            char[] r4 = new char[r4]
            r4[r0] = r2
            r4[r6] = r3
            java.lang.String r0 = new java.lang.String
            r0.<init>(r4)
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was 0x"
            java.lang.String r0 = r2.concat(r0)
            r1.<init>(r0)
            throw r1
        L92:
            if (r9 != r10) goto L9e
            e8.r r8 = r7.a()
            r15.f2449a = r8
            e8.s.a(r7)
            goto La0
        L9e:
            r7.f2475b = r9
        La0:
            if (r6 != 0) goto La6
            e8.r r7 = r15.f2449a
            if (r7 != 0) goto Lc
        La6:
            long r2 = r15.f2450b
            long r0 = (long) r1
            long r2 = r2 - r0
            r15.f2450b = r2
            return r4
        Lad:
            java.io.EOFException r0 = new java.io.EOFException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: e8.g.p():long");
    }

    @Override // e8.i
    public final String q(Charset charset) {
        return t(this.f2450b, charset);
    }

    @Override // e8.i
    public final InputStream r() {
        return new f(this, 0);
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        d7.g.f("sink", byteBuffer);
        r rVar = this.f2449a;
        if (rVar == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), rVar.f2476c - rVar.f2475b);
        byteBuffer.put(rVar.f2474a, rVar.f2475b, iMin);
        int i6 = rVar.f2475b + iMin;
        rVar.f2475b = i6;
        this.f2450b -= (long) iMin;
        if (i6 == rVar.f2476c) {
            this.f2449a = rVar.a();
            s.a(rVar);
        }
        return iMin;
    }

    @Override // e8.i
    public final byte readByte() throws EOFException {
        if (this.f2450b == 0) {
            throw new EOFException();
        }
        r rVar = this.f2449a;
        d7.g.c(rVar);
        int i6 = rVar.f2475b;
        int i9 = rVar.f2476c;
        int i10 = i6 + 1;
        byte b3 = rVar.f2474a[i6];
        this.f2450b--;
        if (i10 != i9) {
            rVar.f2475b = i10;
            return b3;
        }
        this.f2449a = rVar.a();
        s.a(rVar);
        return b3;
    }

    @Override // e8.i
    public final int readInt() throws EOFException {
        if (this.f2450b < 4) {
            throw new EOFException();
        }
        r rVar = this.f2449a;
        d7.g.c(rVar);
        int i6 = rVar.f2475b;
        int i9 = rVar.f2476c;
        if (i9 - i6 < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = rVar.f2474a;
        int i10 = i6 + 3;
        int i11 = ((bArr[i6 + 1] & 255) << 16) | ((bArr[i6] & 255) << 24) | ((bArr[i6 + 2] & 255) << 8);
        int i12 = i6 + 4;
        int i13 = (bArr[i10] & 255) | i11;
        this.f2450b -= 4;
        if (i12 != i9) {
            rVar.f2475b = i12;
            return i13;
        }
        this.f2449a = rVar.a();
        s.a(rVar);
        return i13;
    }

    @Override // e8.i
    public final short readShort() throws EOFException {
        if (this.f2450b < 2) {
            throw new EOFException();
        }
        r rVar = this.f2449a;
        d7.g.c(rVar);
        int i6 = rVar.f2475b;
        int i9 = rVar.f2476c;
        if (i9 - i6 < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        byte[] bArr = rVar.f2474a;
        int i10 = i6 + 1;
        int i11 = (bArr[i6] & 255) << 8;
        int i12 = i6 + 2;
        int i13 = (bArr[i10] & 255) | i11;
        this.f2450b -= 2;
        if (i12 == i9) {
            this.f2449a = rVar.a();
            s.a(rVar);
        } else {
            rVar.f2475b = i12;
        }
        return (short) i13;
    }

    public final byte[] s(long j3) throws EOFException {
        if (j3 < 0 || j3 > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + j3).toString());
        }
        if (this.f2450b < j3) {
            throw new EOFException();
        }
        int i6 = (int) j3;
        byte[] bArr = new byte[i6];
        int i9 = 0;
        while (i9 < i6) {
            int i10 = read(bArr, i9, i6 - i9);
            if (i10 == -1) {
                throw new EOFException();
            }
            i9 += i10;
        }
        return bArr;
    }

    @Override // e8.i
    public final void skip(long j3) throws EOFException {
        while (j3 > 0) {
            r rVar = this.f2449a;
            if (rVar == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j3, rVar.f2476c - rVar.f2475b);
            long j8 = iMin;
            this.f2450b -= j8;
            j3 -= j8;
            int i6 = rVar.f2475b + iMin;
            rVar.f2475b = i6;
            if (i6 == rVar.f2476c) {
                this.f2449a = rVar.a();
                s.a(rVar);
            }
        }
    }

    public final String t(long j3, Charset charset) throws EOFException {
        d7.g.f("charset", charset);
        if (j3 < 0 || j3 > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + j3).toString());
        }
        if (this.f2450b < j3) {
            throw new EOFException();
        }
        if (j3 == 0) {
            return "";
        }
        r rVar = this.f2449a;
        d7.g.c(rVar);
        int i6 = rVar.f2475b;
        if (((long) i6) + j3 > rVar.f2476c) {
            return new String(s(j3), charset);
        }
        int i9 = (int) j3;
        String str = new String(rVar.f2474a, i6, i9, charset);
        int i10 = rVar.f2475b + i9;
        rVar.f2475b = i10;
        this.f2450b -= j3;
        if (i10 == rVar.f2476c) {
            this.f2449a = rVar.a();
            s.a(rVar);
        }
        return str;
    }

    public final String toString() {
        long j3 = this.f2450b;
        if (j3 <= 2147483647L) {
            return u((int) j3).toString();
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + this.f2450b).toString());
    }

    public final j u(int i6) {
        if (i6 == 0) {
            return j.f2451d;
        }
        i2.t.c(this.f2450b, 0L, i6);
        r rVar = this.f2449a;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (i10 < i6) {
            d7.g.c(rVar);
            int i12 = rVar.f2476c;
            int i13 = rVar.f2475b;
            if (i12 == i13) {
                throw new AssertionError("s.limit == s.pos");
            }
            i10 += i12 - i13;
            i11++;
            rVar = rVar.f2479f;
        }
        byte[][] bArr = new byte[i11][];
        int[] iArr = new int[i11 * 2];
        r rVar2 = this.f2449a;
        int i14 = 0;
        while (i9 < i6) {
            d7.g.c(rVar2);
            bArr[i14] = rVar2.f2474a;
            i9 += rVar2.f2476c - rVar2.f2475b;
            iArr[i14] = Math.min(i9, i6);
            iArr[i14 + i11] = rVar2.f2475b;
            rVar2.f2477d = true;
            i14++;
            rVar2 = rVar2.f2479f;
        }
        return new t(bArr, iArr);
    }

    public final r v(int i6) {
        if (i6 < 1 || i6 > 8192) {
            throw new IllegalArgumentException("unexpected capacity");
        }
        r rVar = this.f2449a;
        if (rVar == null) {
            r rVarB = s.b();
            this.f2449a = rVarB;
            rVarB.f2480g = rVarB;
            rVarB.f2479f = rVarB;
            return rVarB;
        }
        r rVar2 = rVar.f2480g;
        d7.g.c(rVar2);
        if (rVar2.f2476c + i6 <= 8192 && rVar2.f2478e) {
            return rVar2;
        }
        r rVarB2 = s.b();
        rVar2.b(rVarB2);
        return rVarB2;
    }

    public final void w(j jVar) {
        d7.g.f("byteString", jVar);
        jVar.i(this, jVar.a());
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        d7.g.f(FirebaseAnalytics.Param.SOURCE, byteBuffer);
        int iRemaining = byteBuffer.remaining();
        int i6 = iRemaining;
        while (i6 > 0) {
            r rVarV = v(1);
            int iMin = Math.min(i6, 8192 - rVarV.f2476c);
            byteBuffer.get(rVarV.f2474a, rVarV.f2476c, iMin);
            i6 -= iMin;
            rVarV.f2476c += iMin;
        }
        this.f2450b += (long) iRemaining;
        return iRemaining;
    }

    @Override // e8.h
    public final /* bridge */ /* synthetic */ h writeByte(int i6) {
        z(i6);
        return this;
    }

    @Override // e8.h
    public final /* bridge */ /* synthetic */ h writeInt(int i6) {
        B(i6);
        return this;
    }

    @Override // e8.h
    public final /* bridge */ /* synthetic */ h writeShort(int i6) {
        C(i6);
        return this;
    }

    public final void x(byte[] bArr, int i6) {
        d7.g.f(FirebaseAnalytics.Param.SOURCE, bArr);
        int i9 = 0;
        long j3 = i6;
        i2.t.c(bArr.length, 0, j3);
        while (i9 < i6) {
            r rVarV = v(1);
            int iMin = Math.min(i6 - i9, 8192 - rVarV.f2476c);
            int i10 = i9 + iMin;
            s6.f.j(rVarV.f2476c, i9, i10, bArr, rVarV.f2474a);
            rVarV.f2476c += iMin;
            i9 = i10;
        }
        this.f2450b += j3;
    }

    public final void y(w wVar) {
        d7.g.f(FirebaseAnalytics.Param.SOURCE, wVar);
        while (wVar.h(8192L, this) != -1) {
        }
    }

    public final void z(int i6) {
        r rVarV = v(1);
        byte[] bArr = rVarV.f2474a;
        int i9 = rVarV.f2476c;
        rVarV.f2476c = i9 + 1;
        bArr[i9] = (byte) i6;
        this.f2450b++;
    }

    @Override // e8.h
    public final h write(byte[] bArr) {
        x(bArr, bArr.length);
        return this;
    }

    public final int read(byte[] bArr, int i6, int i9) {
        i2.t.c(bArr.length, i6, i9);
        r rVar = this.f2449a;
        if (rVar == null) {
            return -1;
        }
        int iMin = Math.min(i9, rVar.f2476c - rVar.f2475b);
        byte[] bArr2 = rVar.f2474a;
        int i10 = rVar.f2475b;
        s6.f.j(i6, i10, i10 + iMin, bArr2, bArr);
        int i11 = rVar.f2475b + iMin;
        rVar.f2475b = i11;
        this.f2450b -= (long) iMin;
        if (i11 == rVar.f2476c) {
            this.f2449a = rVar.a();
            s.a(rVar);
        }
        return iMin;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel, e8.u
    public final void close() {
    }

    @Override // e8.h, e8.u, java.io.Flushable
    public final void flush() {
    }
}
