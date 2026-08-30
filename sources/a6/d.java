package a6;

import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f87a = {"UPPER", "LOWER", "DIGIT", "MIXED", "PUNCT"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[][] f88b = {new int[]{0, 327708, 327710, 327709, 656318}, new int[]{590318, 0, 327710, 327709, 656318}, new int[]{262158, 590300, 0, 590301, 932798}, new int[]{327709, 327708, 656318, 0, 327710}, new int[]{327711, 656380, 656382, 656381, 0}};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[][] f89c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[][] f90d;

    static {
        Class cls = Integer.TYPE;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) cls, 5, 256);
        f89c = iArr;
        iArr[0][32] = 1;
        for (int i6 = 65; i6 <= 90; i6++) {
            f89c[0][i6] = i6 - 63;
        }
        f89c[1][32] = 1;
        for (int i9 = 97; i9 <= 122; i9++) {
            f89c[1][i9] = i9 - 95;
        }
        f89c[2][32] = 1;
        for (int i10 = 48; i10 <= 57; i10++) {
            f89c[2][i10] = i10 - 46;
        }
        int[] iArr2 = f89c[2];
        iArr2[44] = 12;
        iArr2[46] = 13;
        int[] iArr3 = {0, 32, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 27, 28, 29, 30, 31, 64, 92, 94, 95, 96, 124, 126, ModuleDescriptor.MODULE_VERSION};
        for (int i11 = 0; i11 < 28; i11++) {
            f89c[3][iArr3[i11]] = i11;
        }
        int[] iArr4 = {0, 13, 0, 0, 0, 0, 33, 39, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 58, 59, 60, 61, 62, 63, 91, 93, 123, 125};
        for (int i12 = 0; i12 < 31; i12++) {
            int i13 = iArr4[i12];
            if (i13 > 0) {
                f89c[4][i13] = i12;
            }
        }
        int[][] iArr5 = (int[][]) Array.newInstance((Class<?>) cls, 6, 6);
        f90d = iArr5;
        for (int[] iArr6 : iArr5) {
            Arrays.fill(iArr6, -1);
        }
        int[][] iArr7 = f90d;
        iArr7[0][4] = 0;
        int[] iArr8 = iArr7[1];
        iArr8[4] = 0;
        iArr8[0] = 28;
        iArr7[3][4] = 0;
        int[] iArr9 = iArr7[2];
        iArr9[4] = 0;
        iArr9[0] = 15;
    }

    public static LinkedList a(LinkedList linkedList) {
        LinkedList linkedList2 = new LinkedList();
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            f fVar = (f) it.next();
            Iterator it2 = linkedList2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    linkedList2.add(fVar);
                    break;
                }
                f fVar2 = (f) it2.next();
                if (fVar2.c(fVar)) {
                    break;
                }
                if (fVar.c(fVar2)) {
                    it2.remove();
                }
            }
        }
        return linkedList2;
    }
}
