package a6;

import com.google.android.gms.internal.measurement.y4;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f85a = {4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    public static void a(b6.b bVar, int i6, int i9) {
        for (int i10 = 0; i10 < i9; i10 += 2) {
            int i11 = i6 - i10;
            int i12 = i11;
            while (true) {
                int i13 = i6 + i10;
                if (i12 <= i13) {
                    bVar.b(i12, i11);
                    bVar.b(i12, i13);
                    bVar.b(i11, i12);
                    bVar.b(i13, i12);
                    i12++;
                }
            }
        }
        int i14 = i6 - i9;
        bVar.b(i14, i14);
        int i15 = i14 + 1;
        bVar.b(i15, i14);
        bVar.b(i14, i15);
        int i16 = i6 + i9;
        bVar.b(i16, i14);
        bVar.b(i16, i15);
        bVar.b(i16, i16 - 1);
    }

    public static b6.a b(b6.a aVar, int i6, int i9) {
        c6.a aVar2;
        int i10 = aVar.f974b / i9;
        if (i9 == 4) {
            aVar2 = c6.a.f1069j;
        } else if (i9 == 6) {
            aVar2 = c6.a.f1068i;
        } else if (i9 == 8) {
            aVar2 = c6.a.f1071l;
        } else if (i9 == 10) {
            aVar2 = c6.a.h;
        } else {
            if (i9 != 12) {
                throw new IllegalArgumentException("Unsupported word size ".concat(String.valueOf(i9)));
            }
            aVar2 = c6.a.f1067g;
        }
        y4 y4Var = new y4(aVar2);
        int i11 = i6 / i9;
        int[] iArr = new int[i11];
        int i12 = aVar.f974b / i9;
        for (int i13 = 0; i13 < i12; i13++) {
            int i14 = 0;
            for (int i15 = 0; i15 < i9; i15++) {
                i14 |= aVar.d((i13 * i9) + i15) ? 1 << ((i9 - i15) - 1) : 0;
            }
            iArr[i13] = i14;
        }
        y4Var.w(iArr, i11 - i10);
        b6.a aVar3 = new b6.a();
        aVar3.b(0, i6 % i9);
        for (int i16 = 0; i16 < i11; i16++) {
            aVar3.b(iArr[i16], i9);
        }
        return aVar3;
    }

    public static b6.a c(b6.a aVar, int i6) {
        b6.a aVar2 = new b6.a();
        int i9 = aVar.f974b;
        int i10 = (1 << i6) - 2;
        int i11 = 0;
        while (i11 < i9) {
            int i12 = 0;
            for (int i13 = 0; i13 < i6; i13++) {
                int i14 = i11 + i13;
                if (i14 >= i9 || aVar.d(i14)) {
                    i12 |= 1 << ((i6 - 1) - i13);
                }
            }
            int i15 = i12 & i10;
            if (i15 == i10) {
                aVar2.b(i15, i6);
            } else if (i15 == 0) {
                aVar2.b(i12 | 1, i6);
            } else {
                aVar2.b(i12, i6);
                i11 += i6;
            }
            i11--;
            i11 += i6;
        }
        return aVar2;
    }
}
