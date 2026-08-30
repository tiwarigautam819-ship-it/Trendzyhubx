package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class p5 implements Serializable, Iterable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final p5 f1805c = new p5(b6.f1535b);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a6 f1806d = new a6(4);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1807a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f1808b;

    public p5(byte[] bArr) {
        bArr.getClass();
        this.f1808b = bArr;
    }

    public static int b(int i6, int i9, int i10) {
        int i11 = i9 - i6;
        if ((i6 | i9 | i11 | (i10 - i9)) >= 0) {
            return i11;
        }
        if (i6 < 0) {
            throw new IndexOutOfBoundsException(a1.a.j(i6, "Beginning index: ", " < 0"));
        }
        if (i9 < i6) {
            throw new IndexOutOfBoundsException(q2.x.e(i6, i9, "Beginning index larger than ending index: ", ", "));
        }
        throw new IndexOutOfBoundsException(q2.x.e(i9, i10, "End index: ", " >= "));
    }

    public static p5 c(byte[] bArr, int i6, int i9) {
        b(i6, i6 + i9, bArr.length);
        f1806d.getClass();
        byte[] bArr2 = new byte[i9];
        System.arraycopy(bArr, i6, bArr2, 0, i9);
        return new p5(bArr2);
    }

    public byte a(int i6) {
        return this.f1808b[i6];
    }

    public byte d(int i6) {
        return this.f1808b[i6];
    }

    public int e() {
        return this.f1808b.length;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof p5) || e() != ((p5) obj).e()) {
            return false;
        }
        if (e() == 0) {
            return true;
        }
        if (!(obj instanceof p5)) {
            return obj.equals(this);
        }
        p5 p5Var = (p5) obj;
        int i6 = this.f1807a;
        int i9 = p5Var.f1807a;
        if (i6 != 0 && i9 != 0 && i6 != i9) {
            return false;
        }
        int iE = e();
        if (iE > p5Var.e()) {
            throw new IllegalArgumentException("Length too large: " + iE + e());
        }
        if (iE > p5Var.e()) {
            throw new IllegalArgumentException(q2.x.e(iE, p5Var.e(), "Ran off end of other: 0, ", ", "));
        }
        byte[] bArr = p5Var.f1808b;
        int iF = f() + iE;
        int iF2 = f();
        int iF3 = p5Var.f();
        while (iF2 < iF) {
            if (this.f1808b[iF2] != bArr[iF3]) {
                return false;
            }
            iF2++;
            iF3++;
        }
        return true;
    }

    public int f() {
        return 0;
    }

    public final int hashCode() {
        int i6 = this.f1807a;
        if (i6 != 0) {
            return i6;
        }
        int iE = e();
        int iF = f();
        int i9 = iE;
        for (int i10 = iF; i10 < iF + iE; i10++) {
            i9 = (i9 * 31) + this.f1808b[i10];
        }
        if (i9 == 0) {
            i9 = 1;
        }
        this.f1807a = i9;
        return i9;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new n5(this);
    }

    public final String toString() {
        String strF;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int iE = e();
        if (e() <= 50) {
            strF = q0.c(this);
        } else {
            int iB = b(0, 47, e());
            strF = q2.x.f(q0.c(iB == 0 ? f1805c : new o5(this.f1808b, f(), iB)), "...");
        }
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(iE);
        sb.append(" contents=\"");
        return q2.x.h(sb, strF, "\">");
    }
}
