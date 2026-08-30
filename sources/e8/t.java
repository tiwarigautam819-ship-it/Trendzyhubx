package e8;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class t extends j {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient byte[][] f2484e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final transient int[] f2485f;

    public t(byte[][] bArr, int[] iArr) {
        super(j.f2451d.f2452a);
        this.f2484e = bArr;
        this.f2485f = iArr;
    }

    private final Object writeReplace() {
        return new j(j());
    }

    @Override // e8.j
    public final int a() {
        return this.f2485f[this.f2484e.length - 1];
    }

    @Override // e8.j
    public final String b() {
        return new j(j()).b();
    }

    @Override // e8.j
    public final byte[] c() {
        return j();
    }

    @Override // e8.j
    public final byte d(int i6) {
        byte[][] bArr = this.f2484e;
        int length = bArr.length - 1;
        int[] iArr = this.f2485f;
        i2.t.c(iArr[length], i6, 1L);
        int iB = f8.b.b(this, i6);
        return bArr[iB][(i6 - (iB == 0 ? 0 : iArr[iB - 1])) + iArr[bArr.length + iB]];
    }

    @Override // e8.j
    public final boolean e(int i6, byte[] bArr, int i9, int i10) {
        d7.g.f("other", bArr);
        if (i6 < 0 || i6 > a() - i10 || i9 < 0 || i9 > bArr.length - i10) {
            return false;
        }
        int i11 = i10 + i6;
        int iB = f8.b.b(this, i6);
        while (i6 < i11) {
            int[] iArr = this.f2485f;
            int i12 = iB == 0 ? 0 : iArr[iB - 1];
            int i13 = iArr[iB] - i12;
            byte[][] bArr2 = this.f2484e;
            int i14 = iArr[bArr2.length + iB];
            int iMin = Math.min(i11, i13 + i12) - i6;
            if (!i2.t.b((i6 - i12) + i14, i9, iMin, bArr2[iB], bArr)) {
                return false;
            }
            i9 += iMin;
            i6 += iMin;
            iB++;
        }
        return true;
    }

    @Override // e8.j
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return jVar.a() == a() && f(jVar, a());
    }

    @Override // e8.j
    public final boolean f(j jVar, int i6) {
        d7.g.f("other", jVar);
        if (a() - i6 >= 0) {
            int iB = f8.b.b(this, 0);
            int i9 = 0;
            int i10 = 0;
            while (i9 < i6) {
                int[] iArr = this.f2485f;
                int i11 = iB == 0 ? 0 : iArr[iB - 1];
                int i12 = iArr[iB] - i11;
                byte[][] bArr = this.f2484e;
                int i13 = iArr[bArr.length + iB];
                int iMin = Math.min(i6, i12 + i11) - i9;
                if (jVar.e(i10, bArr[iB], (i9 - i11) + i13, iMin)) {
                    i10 += iMin;
                    i9 += iMin;
                    iB++;
                }
            }
            return true;
        }
        return false;
    }

    @Override // e8.j
    public final j g() {
        return new j(j()).g();
    }

    @Override // e8.j
    public final int hashCode() {
        int i6 = this.f2453b;
        if (i6 != 0) {
            return i6;
        }
        byte[][] bArr = this.f2484e;
        int length = bArr.length;
        int i9 = 0;
        int i10 = 1;
        int i11 = 0;
        while (i9 < length) {
            int[] iArr = this.f2485f;
            int i12 = iArr[length + i9];
            int i13 = iArr[i9];
            byte[] bArr2 = bArr[i9];
            int i14 = (i13 - i11) + i12;
            while (i12 < i14) {
                i10 = (i10 * 31) + bArr2[i12];
                i12++;
            }
            i9++;
            i11 = i13;
        }
        this.f2453b = i10;
        return i10;
    }

    @Override // e8.j
    public final void i(g gVar, int i6) {
        int iB = f8.b.b(this, 0);
        int i9 = 0;
        while (i9 < i6) {
            int[] iArr = this.f2485f;
            int i10 = iB == 0 ? 0 : iArr[iB - 1];
            int i11 = iArr[iB] - i10;
            byte[][] bArr = this.f2484e;
            int i12 = iArr[bArr.length + iB];
            int iMin = Math.min(i6, i11 + i10) - i9;
            int i13 = (i9 - i10) + i12;
            r rVar = new r(bArr[iB], i13, i13 + iMin, true);
            r rVar2 = gVar.f2449a;
            if (rVar2 == null) {
                rVar.f2480g = rVar;
                rVar.f2479f = rVar;
                gVar.f2449a = rVar;
            } else {
                r rVar3 = rVar2.f2480g;
                d7.g.c(rVar3);
                rVar3.b(rVar);
            }
            i9 += iMin;
            iB++;
        }
        gVar.f2450b += (long) i6;
    }

    public final byte[] j() {
        byte[] bArr = new byte[a()];
        byte[][] bArr2 = this.f2484e;
        int length = bArr2.length;
        int i6 = 0;
        int i9 = 0;
        int i10 = 0;
        while (i6 < length) {
            int[] iArr = this.f2485f;
            int i11 = iArr[length + i6];
            int i12 = iArr[i6];
            int i13 = i12 - i9;
            s6.f.j(i10, i11, i11 + i13, bArr2[i6], bArr);
            i10 += i13;
            i6++;
            i9 = i12;
        }
        return bArr;
    }

    @Override // e8.j
    public final String toString() {
        return new j(j()).toString();
    }
}
