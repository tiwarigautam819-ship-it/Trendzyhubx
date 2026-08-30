package h6;

import g.j;
import java.lang.reflect.Array;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j[] f3006a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3007b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3008c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3009d;

    public a(int i6, int i9) {
        this.f3006a = new j[i6];
        for (int i10 = 0; i10 < i6; i10++) {
            this.f3006a[i10] = new j(((i9 + 4) * 17) + 1, 2);
        }
        this.f3009d = i9 * 17;
        this.f3008c = i6;
        this.f3007b = -1;
    }

    public final j a() {
        return this.f3006a[this.f3007b];
    }

    public final byte[][] b(int i6, int i9) {
        int i10 = this.f3008c;
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i10 * i9, this.f3009d * i6);
        int i11 = i10 * i9;
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = (i11 - i12) - 1;
            byte[] bArr2 = (byte[]) this.f3006a[i12 / i9].f2743b;
            int length = bArr2.length * i6;
            byte[] bArr3 = new byte[length];
            for (int i14 = 0; i14 < length; i14++) {
                bArr3[i14] = bArr2[i14 / i6];
            }
            bArr[i13] = bArr3;
        }
        return bArr;
    }
}
