package e6;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final e[] f2419i = {new e(false, 3, 5, 8, 8, 1, 3, 5), new e(false, 5, 7, 10, 10, 1, 5, 7), new e(true, 5, 7, 16, 6, 1, 5, 7), new e(false, 8, 10, 12, 12, 1, 8, 10), new e(true, 10, 11, 14, 6, 2, 10, 11), new e(false, 12, 12, 14, 14, 1, 12, 12), new e(true, 16, 14, 24, 10, 1, 16, 14), new e(false, 18, 14, 16, 16, 1, 18, 14), new e(false, 22, 18, 18, 18, 1, 22, 18), new e(true, 22, 18, 16, 10, 2, 22, 18), new e(false, 30, 20, 20, 20, 1, 30, 20), new e(true, 32, 24, 16, 14, 2, 32, 24), new e(false, 36, 24, 22, 22, 1, 36, 24), new e(false, 44, 28, 24, 24, 1, 44, 28), new e(true, 49, 28, 22, 14, 2, 49, 28), new e(false, 62, 36, 14, 14, 4, 62, 36), new e(false, 86, 42, 16, 16, 4, 86, 42), new e(false, 114, 48, 18, 18, 4, 114, 48), new e(false, 144, 56, 20, 20, 4, 144, 56), new e(false, 174, 68, 22, 22, 4, 174, 68), new e(false, 204, 84, 24, 24, 4, 102, 42), new e(false, 280, 112, 14, 14, 16, 140, 56), new e(false, 368, 144, 16, 16, 16, 92, 36), new e(false, 456, 192, 18, 18, 16, 114, 48), new e(false, 576, 224, 20, 20, 16, 144, 56), new e(false, 696, 272, 22, 22, 16, 174, 68), new e(false, 816, 336, 24, 24, 16, 136, 56), new e(false, 1050, 408, 18, 18, 36, 175, 68), new e(false, 1304, 496, 20, 20, 36, 163, 62), new a(false, 1558, 620, 22, 22, 36, -1, 62)};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f2420a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2421b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2422c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2423d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2424e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f2425f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f2426g;
    public final int h;

    public e(boolean z5, int i6, int i9, int i10, int i11, int i12, int i13, int i14) {
        this.f2420a = z5;
        this.f2421b = i6;
        this.f2422c = i9;
        this.f2423d = i10;
        this.f2424e = i11;
        this.f2425f = i12;
        this.f2426g = i13;
        this.h = i14;
    }

    public static e e(int i6, f fVar) {
        for (int i9 = 0; i9 < 30; i9++) {
            e eVar = f2419i[i9];
            if (!(fVar == f.f2428b && eVar.f2420a) && ((fVar != f.f2429c || eVar.f2420a) && i6 <= eVar.f2421b)) {
                return eVar;
            }
        }
        throw new IllegalArgumentException("Can't find a symbol arrangement that matches the message. Data codewords: ".concat(String.valueOf(i6)));
    }

    public int a(int i6) {
        return this.f2426g;
    }

    public final int b() {
        int i6 = this.f2425f;
        int i9 = 1;
        if (i6 != 1) {
            i9 = 2;
            if (i6 != 2 && i6 != 4) {
                if (i6 == 16) {
                    return 4;
                }
                if (i6 == 36) {
                    return 6;
                }
                throw new IllegalStateException("Cannot handle this number of data regions");
            }
        }
        return i9;
    }

    public int c() {
        return this.f2421b / this.f2426g;
    }

    public final int d() {
        int i6 = this.f2425f;
        if (i6 == 1 || i6 == 2) {
            return 1;
        }
        if (i6 == 4) {
            return 2;
        }
        if (i6 == 16) {
            return 4;
        }
        if (i6 == 36) {
            return 6;
        }
        throw new IllegalStateException("Cannot handle this number of data regions");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f2420a ? "Rectangular Symbol:" : "Square Symbol:");
        sb.append(" data region ");
        int i6 = this.f2423d;
        sb.append(i6);
        sb.append('x');
        int i9 = this.f2424e;
        sb.append(i9);
        sb.append(", symbol size ");
        sb.append((b() * i6) + (b() << 1));
        sb.append('x');
        sb.append((d() * i9) + (d() << 1));
        sb.append(", symbol data size ");
        sb.append(b() * i6);
        sb.append('x');
        sb.append(d() * i9);
        sb.append(", codewords ");
        sb.append(this.f2421b);
        sb.append('+');
        sb.append(this.f2422c);
        return sb.toString();
    }
}
