package y7;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f6268a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f6269b = new int[10];

    public final int a() {
        if ((this.f6268a & 128) != 0) {
            return this.f6269b[7];
        }
        return 65535;
    }

    public final void b(a0 a0Var) {
        d7.g.f("other", a0Var);
        for (int i6 = 0; i6 < 10; i6++) {
            if (((1 << i6) & a0Var.f6268a) != 0) {
                c(i6, a0Var.f6269b[i6]);
            }
        }
    }

    public final void c(int i6, int i9) {
        if (i6 >= 0) {
            int[] iArr = this.f6269b;
            if (i6 >= iArr.length) {
                return;
            }
            this.f6268a = (1 << i6) | this.f6268a;
            iArr[i6] = i9;
        }
    }
}
