package b6;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f975a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f976b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f977c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f978d;

    public b(int i6, int i9) {
        if (i6 <= 0 || i9 <= 0) {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        }
        this.f975a = i6;
        this.f976b = i9;
        int i10 = (i6 + 31) / 32;
        this.f977c = i10;
        this.f978d = new int[i10 * i9];
    }

    public final boolean a(int i6, int i9) {
        return ((this.f978d[(i6 / 32) + (i9 * this.f977c)] >>> (i6 & 31)) & 1) != 0;
    }

    public final void b(int i6, int i9) {
        int i10 = (i6 / 32) + (i9 * this.f977c);
        int[] iArr = this.f978d;
        iArr[i10] = (1 << (i6 & 31)) | iArr[i10];
    }

    public final void c(int i6, int i9, int i10, int i11) {
        if (i9 < 0 || i6 < 0) {
            throw new IllegalArgumentException("Left and top must be nonnegative");
        }
        if (i11 <= 0 || i10 <= 0) {
            throw new IllegalArgumentException("Height and width must be at least 1");
        }
        int i12 = i10 + i6;
        int i13 = i11 + i9;
        if (i13 > this.f976b || i12 > this.f975a) {
            throw new IllegalArgumentException("The region must fit inside the matrix");
        }
        while (i9 < i13) {
            int i14 = this.f977c * i9;
            for (int i15 = i6; i15 < i12; i15++) {
                int i16 = (i15 / 32) + i14;
                int[] iArr = this.f978d;
                iArr[i16] = iArr[i16] | (1 << (i15 & 31));
            }
            i9++;
        }
    }

    public final Object clone() {
        return new b(this.f975a, this.f976b, this.f977c, (int[]) this.f978d.clone());
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f975a == bVar.f975a && this.f976b == bVar.f976b && this.f977c == bVar.f977c && Arrays.equals(this.f978d, bVar.f978d);
    }

    public final int hashCode() {
        int i6 = this.f975a;
        return Arrays.hashCode(this.f978d) + (((((((i6 * 31) + i6) * 31) + this.f976b) * 31) + this.f977c) * 31);
    }

    public final String toString() {
        int i6 = this.f975a;
        int i9 = this.f976b;
        StringBuilder sb = new StringBuilder((i6 + 1) * i9);
        for (int i10 = 0; i10 < i9; i10++) {
            for (int i11 = 0; i11 < i6; i11++) {
                sb.append(a(i11, i10) ? "X " : "  ");
            }
            sb.append("\n");
        }
        return sb.toString();
    }

    public b(int i6, int i9, int i10, int[] iArr) {
        this.f975a = i6;
        this.f976b = i9;
        this.f977c = i10;
        this.f978d = iArr;
    }
}
