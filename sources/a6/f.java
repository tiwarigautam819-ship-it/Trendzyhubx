package a6;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final f f93e = new f(g.f98b, 0, 0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f94a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final g f95b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f96c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f97d;

    public f(g gVar, int i6, int i9, int i10) {
        this.f95b = gVar;
        this.f94a = i6;
        this.f96c = i9;
        this.f97d = i10;
    }

    public final f a(int i6) {
        g eVar = this.f95b;
        int i9 = this.f94a;
        int i10 = this.f97d;
        if (i9 == 4 || i9 == 2) {
            int[] iArr = d.f88b[i9];
            i9 = 0;
            int i11 = iArr[0];
            int i12 = 65535 & i11;
            int i13 = i11 >> 16;
            eVar.getClass();
            i10 += i13;
            eVar = new e(eVar, i12, i13);
        }
        int i14 = this.f96c;
        int i15 = (i14 == 0 || i14 == 31) ? 18 : i14 == 62 ? 9 : 8;
        int i16 = i14 + 1;
        f fVar = new f(eVar, i9, i16, i10 + i15);
        return i16 == 2078 ? fVar.b(i6 + 1) : fVar;
    }

    public final f b(int i6) {
        int i9 = this.f96c;
        if (i9 == 0) {
            return this;
        }
        g gVar = this.f95b;
        gVar.getClass();
        return new f(new a(gVar, i6 - i9, i9), this.f94a, 0, this.f97d);
    }

    public final boolean c(f fVar) {
        int i6;
        int i9 = this.f97d + (d.f88b[this.f94a][fVar.f94a] >> 16);
        int i10 = fVar.f96c;
        if (i10 > 0 && ((i6 = this.f96c) == 0 || i6 > i10)) {
            i9 += 10;
        }
        return i9 <= fVar.f97d;
    }

    public final f d(int i6, int i9) {
        int i10 = this.f97d;
        g eVar = this.f95b;
        int i11 = this.f94a;
        if (i6 != i11) {
            int i12 = d.f88b[i11][i6];
            int i13 = 65535 & i12;
            int i14 = i12 >> 16;
            eVar.getClass();
            i10 += i14;
            eVar = new e(eVar, i13, i14);
        }
        int i15 = i6 == 2 ? 4 : 5;
        eVar.getClass();
        return new f(new e(eVar, i9, i15), i6, 0, i10 + i15);
    }

    public final f e(int i6, int i9) {
        int i10 = this.f94a;
        int i11 = i10 == 2 ? 4 : 5;
        int i12 = d.f90d[i10][i6];
        g gVar = this.f95b;
        gVar.getClass();
        return new f(new e(new e(gVar, i12, i11), i9, 5), i10, 0, this.f97d + i11 + 5);
    }

    public final String toString() {
        return String.format("%s bits=%d bytes=%d", d.f87a[this.f94a], Integer.valueOf(this.f97d), Integer.valueOf(this.f96c));
    }
}
