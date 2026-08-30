package c6;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f1078a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f1079b;

    public b(a aVar, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.f1078a = aVar;
        int length = iArr.length;
        int i6 = 1;
        if (length <= 1 || iArr[0] != 0) {
            this.f1079b = iArr;
            return;
        }
        while (i6 < length && iArr[i6] == 0) {
            i6++;
        }
        if (i6 == length) {
            this.f1079b = new int[]{0};
            return;
        }
        int i9 = length - i6;
        int[] iArr2 = new int[i9];
        this.f1079b = iArr2;
        System.arraycopy(iArr, i6, iArr2, 0, i9);
    }

    public final b a(b bVar) {
        a aVar = bVar.f1078a;
        a aVar2 = this.f1078a;
        if (!aVar2.equals(aVar)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        int[] iArr = this.f1079b;
        if (iArr[0] == 0) {
            return bVar;
        }
        int[] iArr2 = bVar.f1079b;
        if (iArr2[0] == 0) {
            return this;
        }
        if (iArr.length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i6 = length; i6 < iArr.length; i6++) {
            iArr3[i6] = iArr2[i6 - length] ^ iArr[i6];
        }
        return new b(aVar2, iArr3);
    }

    public final int b() {
        return this.f1079b.length - 1;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(b() * 8);
        for (int iB = b(); iB >= 0; iB--) {
            int[] iArr = this.f1079b;
            int i6 = iArr[(iArr.length - 1) - iB];
            if (i6 != 0) {
                if (i6 < 0) {
                    sb.append(" - ");
                    i6 = -i6;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (iB == 0 || i6 != 1) {
                    a aVar = this.f1078a;
                    if (i6 == 0) {
                        aVar.getClass();
                        throw new IllegalArgumentException();
                    }
                    int i9 = aVar.f1073b[i6];
                    if (i9 == 0) {
                        sb.append('1');
                    } else if (i9 == 1) {
                        sb.append('a');
                    } else {
                        sb.append("a^");
                        sb.append(i9);
                    }
                }
                if (iB != 0) {
                    if (iB == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(iB);
                    }
                }
            }
        }
        return sb.toString();
    }
}
