package com.google.android.gms.internal.measurement;

import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q5 extends q0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Logger f1831f = Logger.getLogger(q5.class.getName());

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final boolean f1832g = f7.f1640e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o6 f1833b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f1834c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1835d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1836e;

    public q5(byte[] bArr, int i6) {
        if (((bArr.length - i6) | i6) < 0) {
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i6)));
        }
        this.f1834c = bArr;
        this.f1836e = 0;
        this.f1835d = i6;
    }

    public static int j(int i6, i5 i5Var, b7 b7Var) {
        return i5Var.a(b7Var) + (w(i6 << 3) << 1);
    }

    public static int k(String str) {
        int length;
        try {
            length = h7.a(str);
        } catch (i7 unused) {
            length = str.getBytes(b6.f1534a).length;
        }
        return w(length) + length;
    }

    public static int p(int i6, p5 p5Var) {
        int iW = w(i6 << 3);
        int iE = p5Var.e();
        return a1.a.h(iE, iE, iW);
    }

    public static int u(long j3) {
        return (640 - (Long.numberOfLeadingZeros(j3) * 9)) >>> 6;
    }

    public static int v(int i6) {
        return w(i6 << 3);
    }

    public static int w(int i6) {
        return (352 - (Integer.numberOfLeadingZeros(i6) * 9)) >>> 6;
    }

    public final void d(byte b3) throws r5 {
        int i6 = this.f1836e;
        try {
            int i9 = i6 + 1;
            try {
                this.f1834c[i6] = b3;
                this.f1836e = i9;
            } catch (IndexOutOfBoundsException e9) {
                e = e9;
                i6 = i9;
                throw new r5(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(i6), Integer.valueOf(this.f1835d), 1), e);
            }
        } catch (IndexOutOfBoundsException e10) {
            e = e10;
        }
    }

    public final void e(int i6) throws r5 {
        try {
            byte[] bArr = this.f1834c;
            int i9 = this.f1836e;
            int i10 = i9 + 1;
            this.f1836e = i10;
            bArr[i9] = (byte) i6;
            int i11 = i9 + 2;
            this.f1836e = i11;
            bArr[i10] = (byte) (i6 >> 8);
            int i12 = i9 + 3;
            this.f1836e = i12;
            bArr[i11] = (byte) (i6 >> 16);
            this.f1836e = i9 + 4;
            bArr[i12] = (byte) (i6 >>> 24);
        } catch (IndexOutOfBoundsException e9) {
            throw new r5(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f1836e), Integer.valueOf(this.f1835d), 1), e9);
        }
    }

    public final void f(int i6, int i9) throws r5 {
        r(i6, 5);
        e(i9);
    }

    public final void g(int i6, long j3) throws r5 {
        r(i6, 1);
        h(j3);
    }

    public final void h(long j3) throws r5 {
        try {
            byte[] bArr = this.f1834c;
            int i6 = this.f1836e;
            int i9 = i6 + 1;
            this.f1836e = i9;
            bArr[i6] = (byte) j3;
            int i10 = i6 + 2;
            this.f1836e = i10;
            bArr[i9] = (byte) (j3 >> 8);
            int i11 = i6 + 3;
            this.f1836e = i11;
            bArr[i10] = (byte) (j3 >> 16);
            int i12 = i6 + 4;
            this.f1836e = i12;
            bArr[i11] = (byte) (j3 >> 24);
            int i13 = i6 + 5;
            this.f1836e = i13;
            bArr[i12] = (byte) (j3 >> 32);
            int i14 = i6 + 6;
            this.f1836e = i14;
            bArr[i13] = (byte) (j3 >> 40);
            int i15 = i6 + 7;
            this.f1836e = i15;
            bArr[i14] = (byte) (j3 >> 48);
            this.f1836e = i6 + 8;
            bArr[i15] = (byte) (j3 >> 56);
        } catch (IndexOutOfBoundsException e9) {
            throw new r5(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f1836e), Integer.valueOf(this.f1835d), 1), e9);
        }
    }

    public final int i() {
        return this.f1835d - this.f1836e;
    }

    public final void l(int i6) throws r5 {
        if (i6 >= 0) {
            q(i6);
        } else {
            o(i6);
        }
    }

    public final void m(int i6, int i9) throws r5 {
        r(i6, 0);
        l(i9);
    }

    public final void n(int i6, long j3) throws r5 {
        r(i6, 0);
        o(j3);
    }

    public final void o(long j3) throws r5 {
        boolean z5 = f1832g;
        byte[] bArr = this.f1834c;
        if (z5 && i() >= 10) {
            while ((j3 & (-128)) != 0) {
                int i6 = this.f1836e;
                this.f1836e = i6 + 1;
                f7.f1638c.b(bArr, f7.f1641f + ((long) i6), (byte) (((int) j3) | 128));
                j3 >>>= 7;
            }
            int i9 = this.f1836e;
            this.f1836e = i9 + 1;
            f7.f1638c.b(bArr, f7.f1641f + ((long) i9), (byte) j3);
            return;
        }
        while ((j3 & (-128)) != 0) {
            try {
                int i10 = this.f1836e;
                this.f1836e = i10 + 1;
                bArr[i10] = (byte) (((int) j3) | 128);
                j3 >>>= 7;
            } catch (IndexOutOfBoundsException e9) {
                throw new r5(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f1836e), Integer.valueOf(this.f1835d), 1), e9);
            }
        }
        int i11 = this.f1836e;
        this.f1836e = i11 + 1;
        bArr[i11] = (byte) j3;
    }

    public final void q(int i6) throws r5 {
        while (true) {
            int i9 = i6 & (-128);
            byte[] bArr = this.f1834c;
            if (i9 == 0) {
                int i10 = this.f1836e;
                this.f1836e = i10 + 1;
                bArr[i10] = (byte) i6;
                return;
            } else {
                try {
                    int i11 = this.f1836e;
                    this.f1836e = i11 + 1;
                    bArr[i11] = (byte) (i6 | 128);
                    i6 >>>= 7;
                } catch (IndexOutOfBoundsException e9) {
                    throw new r5(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f1836e), Integer.valueOf(this.f1835d), 1), e9);
                }
            }
            throw new r5(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f1836e), Integer.valueOf(this.f1835d), 1), e9);
        }
    }

    public final void r(int i6, int i9) throws r5 {
        q((i6 << 3) | i9);
    }

    public final void s(byte[] bArr, int i6, int i9) throws r5 {
        try {
            System.arraycopy(bArr, i6, this.f1834c, this.f1836e, i9);
            this.f1836e += i9;
        } catch (IndexOutOfBoundsException e9) {
            throw new r5(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f1836e), Integer.valueOf(this.f1835d), Integer.valueOf(i9)), e9);
        }
    }

    public final void t(int i6, int i9) throws r5 {
        r(i6, 0);
        q(i9);
    }
}
