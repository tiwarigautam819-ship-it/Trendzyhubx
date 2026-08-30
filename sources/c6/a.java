package c6;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f1067g = new a(4201, 4096, 1);
    public static final a h = new a(1033, 1024, 1);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f1068i = new a(67, 64, 1);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final a f1069j = new a(19, 16, 1);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f1070k = new a(285, 256, 0);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final a f1071l = new a(301, 256, 1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f1072a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f1073b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final b f1074c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1075d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1076e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f1077f;

    public a(int i6, int i9, int i10) {
        this.f1076e = i6;
        this.f1075d = i9;
        this.f1077f = i10;
        this.f1072a = new int[i9];
        this.f1073b = new int[i9];
        int i11 = 1;
        for (int i12 = 0; i12 < i9; i12++) {
            this.f1072a[i12] = i11;
            i11 <<= 1;
            if (i11 >= i9) {
                i11 = (i11 ^ i6) & (i9 - 1);
            }
        }
        for (int i13 = 0; i13 < i9 - 1; i13++) {
            this.f1073b[this.f1072a[i13]] = i13;
        }
        this.f1074c = new b(this, new int[]{0});
    }

    public final int a(int i6, int i9) {
        if (i6 == 0 || i9 == 0) {
            return 0;
        }
        int[] iArr = this.f1073b;
        return this.f1072a[(iArr[i6] + iArr[i9]) % (this.f1075d - 1)];
    }

    public final String toString() {
        return "GF(0x" + Integer.toHexString(this.f1076e) + ',' + this.f1075d + ')';
    }
}
