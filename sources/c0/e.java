package c0;

import android.graphics.Path;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public char f994a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float[] f995b;

    public e(char c8, float[] fArr) {
        this.f994a = c8;
        this.f995b = fArr;
    }

    public static void a(Path path, float f9, float f10, float f11, float f12, float f13, float f14, float f15, boolean z5, boolean z8) {
        double d6;
        double d9;
        double radians = Math.toRadians(f15);
        double dCos = Math.cos(radians);
        double dSin = Math.sin(radians);
        double d10 = f9;
        double d11 = f10;
        double d12 = f13;
        double d13 = ((d11 * dSin) + (d10 * dCos)) / d12;
        double d14 = f14;
        double d15 = ((d11 * dCos) + (((double) (-f9)) * dSin)) / d14;
        double d16 = f12;
        double d17 = ((d16 * dSin) + (((double) f11) * dCos)) / d12;
        double d18 = ((d16 * dCos) + (((double) (-f11)) * dSin)) / d14;
        double d19 = d13 - d17;
        double d20 = d15 - d18;
        double d21 = (d13 + d17) / 2.0d;
        double d22 = (d15 + d18) / 2.0d;
        double d23 = (d20 * d20) + (d19 * d19);
        if (d23 == 0.0d) {
            Log.w("PathParser", " Points are coincident");
            return;
        }
        double d24 = (1.0d / d23) - 0.25d;
        if (d24 < 0.0d) {
            Log.w("PathParser", "Points are too far apart " + d23);
            float fSqrt = (float) (Math.sqrt(d23) / 1.99999d);
            a(path, f9, f10, f11, f12, f13 * fSqrt, fSqrt * f14, f15, z5, z8);
            return;
        }
        double dSqrt = Math.sqrt(d24);
        double d25 = dSqrt * d19;
        double d26 = dSqrt * d20;
        if (z5 == z8) {
            d6 = d21 - d26;
            d9 = d22 + d25;
        } else {
            d6 = d21 + d26;
            d9 = d22 - d25;
        }
        double dAtan2 = Math.atan2(d15 - d9, d13 - d6);
        double dAtan22 = Math.atan2(d18 - d9, d17 - d6) - dAtan2;
        if (z8 != (dAtan22 >= 0.0d)) {
            dAtan22 = dAtan22 > 0.0d ? dAtan22 - 6.283185307179586d : dAtan22 + 6.283185307179586d;
        }
        double d27 = d6 * d12;
        double d28 = d9 * d14;
        double d29 = (d27 * dCos) - (d28 * dSin);
        double d30 = (d28 * dCos) + (d27 * dSin);
        int iCeil = (int) Math.ceil(Math.abs((dAtan22 * 4.0d) / 3.141592653589793d));
        double dCos2 = Math.cos(radians);
        double dSin2 = Math.sin(radians);
        double dCos3 = Math.cos(dAtan2);
        double dSin3 = Math.sin(dAtan2);
        double d31 = -d12;
        double d32 = d31 * dCos2;
        double d33 = d14 * dSin2;
        double d34 = (d32 * dSin3) - (d33 * dCos3);
        double d35 = d31 * dSin2;
        double d36 = d14 * dCos2;
        double d37 = dAtan22 / ((double) iCeil);
        double d38 = (dCos3 * d36) + (dSin3 * d35);
        double d39 = d10;
        double d40 = d11;
        int i6 = 0;
        double d41 = dAtan2;
        while (i6 < iCeil) {
            double d42 = d41 + d37;
            double dSin4 = Math.sin(d42);
            double dCos4 = Math.cos(d42);
            int i9 = iCeil;
            double d43 = (((d12 * dCos2) * dCos4) + d29) - (d33 * dSin4);
            double d44 = (d36 * dSin4) + (d12 * dSin2 * dCos4) + d30;
            double d45 = (d32 * dSin4) - (d33 * dCos4);
            double d46 = (dCos4 * d36) + (dSin4 * d35);
            double d47 = d42 - d41;
            double dTan = Math.tan(d47 / 2.0d);
            double dSqrt2 = ((Math.sqrt(((dTan * 3.0d) * dTan) + 4.0d) - 1.0d) * Math.sin(d47)) / 3.0d;
            path.rLineTo(0.0f, 0.0f);
            path.cubicTo((float) ((d34 * dSqrt2) + d39), (float) ((d38 * dSqrt2) + d40), (float) (d43 - (dSqrt2 * d45)), (float) (d44 - (dSqrt2 * d46)), (float) d43, (float) d44);
            i6++;
            d40 = d44;
            dCos2 = dCos2;
            d35 = d35;
            d41 = d42;
            d38 = d46;
            d39 = d43;
            iCeil = i9;
            d34 = d45;
            d37 = d37;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void b(e[] eVarArr, Path path) {
        int i6;
        float[] fArr;
        int i9;
        e eVar;
        int i10;
        char c8;
        float f9;
        float f10;
        e eVar2;
        boolean z5;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        e[] eVarArr2 = eVarArr;
        Path path2 = path;
        float[] fArr2 = new float[6];
        int length = eVarArr2.length;
        int i11 = 0;
        int i12 = 0;
        char c9 = 'm';
        while (i12 < length) {
            e eVar3 = eVarArr2[i12];
            char c10 = eVar3.f994a;
            float[] fArr3 = eVar3.f995b;
            float f19 = fArr2[i11];
            float f20 = fArr2[1];
            float f21 = fArr2[2];
            float f22 = fArr2[3];
            float f23 = fArr2[4];
            int i13 = i11;
            float f24 = fArr2[5];
            switch (c10) {
                case 'A':
                case 'a':
                    i6 = 7;
                    break;
                case 'C':
                case 'c':
                    i6 = 6;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i6 = 1;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i6 = 4;
                    break;
                case 'Z':
                case 'z':
                    path2.close();
                    path2.moveTo(f23, f24);
                    f19 = f23;
                    f21 = f19;
                    f20 = f24;
                    f22 = f20;
                default:
                    i6 = 2;
                    break;
            }
            float f25 = f23;
            float f26 = f24;
            float f27 = f19;
            float f28 = f20;
            int i14 = i13;
            while (i14 < fArr3.length) {
                if (c10 == 'A') {
                    fArr = fArr3;
                    i9 = i14;
                    eVar = eVar3;
                    float f29 = f27;
                    float f30 = f28;
                    i10 = i12;
                    c8 = c10;
                    int i15 = i9 + 5;
                    int i16 = i9 + 6;
                    a(path, f29, f30, fArr[i15], fArr[i16], fArr[i9], fArr[i9 + 1], fArr[i9 + 2], fArr[i9 + 3] != 0.0f ? 1 : i13, fArr[i9 + 4] != 0.0f ? 1 : i13);
                    f21 = fArr[i15];
                    f9 = fArr[i16];
                    f22 = f9;
                    f10 = f21;
                } else if (c10 == 'C') {
                    fArr = fArr3;
                    i9 = i14;
                    i10 = i12;
                    eVar = eVar3;
                    c8 = c10;
                    int i17 = i9 + 2;
                    int i18 = i9 + 3;
                    int i19 = i9 + 4;
                    int i20 = i9 + 5;
                    path2.cubicTo(fArr[i9], fArr[i9 + 1], fArr[i17], fArr[i18], fArr[i19], fArr[i20]);
                    float f31 = fArr[i19];
                    float f32 = fArr[i20];
                    f21 = fArr[i17];
                    f22 = fArr[i18];
                    f9 = f32;
                    f10 = f31;
                } else if (c10 == 'H') {
                    fArr = fArr3;
                    i9 = i14;
                    eVar = eVar3;
                    c8 = c10;
                    f9 = f28;
                    i10 = i12;
                    path2.lineTo(fArr[i9], f9);
                    f10 = fArr[i9];
                } else if (c10 == 'Q') {
                    fArr = fArr3;
                    i9 = i14;
                    i10 = i12;
                    eVar = eVar3;
                    c8 = c10;
                    int i21 = i9 + 1;
                    int i22 = i9 + 2;
                    int i23 = i9 + 3;
                    path2.quadTo(fArr[i9], fArr[i21], fArr[i22], fArr[i23]);
                    float f33 = fArr[i9];
                    float f34 = fArr[i21];
                    float f35 = fArr[i22];
                    float f36 = fArr[i23];
                    f21 = f33;
                    f22 = f34;
                    f10 = f35;
                    f9 = f36;
                } else if (c10 == 'V') {
                    fArr = fArr3;
                    i9 = i14;
                    i10 = i12;
                    eVar = eVar3;
                    f10 = f27;
                    c8 = c10;
                    path2.lineTo(f10, fArr[i9]);
                    f9 = fArr[i9];
                } else if (c10 != 'a') {
                    if (c10 == 'c') {
                        fArr = fArr3;
                        i9 = i14;
                        int i24 = i9 + 2;
                        int i25 = i9 + 3;
                        int i26 = i9 + 4;
                        int i27 = i9 + 5;
                        path2.rCubicTo(fArr[i9], fArr[i9 + 1], fArr[i24], fArr[i25], fArr[i26], fArr[i27]);
                        float f37 = fArr[i24] + f27;
                        float f38 = fArr[i25] + f28;
                        f27 += fArr[i26];
                        f28 += fArr[i27];
                        f21 = f37;
                        f22 = f38;
                    } else if (c10 != 'h') {
                        if (c10 != 'q') {
                            if (c10 != 'v') {
                                if (c10 == 'L') {
                                    fArr = fArr3;
                                    i9 = i14;
                                    int i28 = i9 + 1;
                                    path2.lineTo(fArr[i9], fArr[i28]);
                                    f10 = fArr[i9];
                                    f9 = fArr[i28];
                                } else if (c10 == 'M') {
                                    fArr = fArr3;
                                    i9 = i14;
                                    f10 = fArr[i9];
                                    f9 = fArr[i9 + 1];
                                    if (i9 > 0) {
                                        path2.lineTo(f10, f9);
                                    } else {
                                        path2.moveTo(f10, f9);
                                        f25 = f10;
                                        f26 = f9;
                                    }
                                } else if (c10 != 'S') {
                                    if (c10 == 'T') {
                                        fArr = fArr3;
                                        i9 = i14;
                                        if (c9 == 'q' || c9 == 't' || c9 == 'Q' || c9 == 'T') {
                                            f27 = (f27 * 2.0f) - f21;
                                            f28 = (f28 * 2.0f) - f22;
                                        }
                                        int i29 = i9 + 1;
                                        path2.quadTo(f27, f28, fArr[i9], fArr[i29]);
                                        f10 = fArr[i9];
                                        f9 = fArr[i29];
                                        eVar = eVar3;
                                        f21 = f27;
                                        f22 = f28;
                                    } else if (c10 == 'l') {
                                        fArr = fArr3;
                                        i9 = i14;
                                        int i30 = i9 + 1;
                                        path2.rLineTo(fArr[i9], fArr[i30]);
                                        f27 += fArr[i9];
                                        f14 = fArr[i30];
                                    } else if (c10 == 'm') {
                                        fArr = fArr3;
                                        i9 = i14;
                                        float f39 = fArr[i9];
                                        f27 += f39;
                                        float f40 = fArr[i9 + 1];
                                        f28 += f40;
                                        if (i9 > 0) {
                                            path2.rLineTo(f39, f40);
                                        } else {
                                            path2.rMoveTo(f39, f40);
                                            eVar = eVar3;
                                            f10 = f27;
                                            f25 = f10;
                                            f9 = f28;
                                            f26 = f9;
                                        }
                                    } else if (c10 != 's') {
                                        if (c10 != 't') {
                                            fArr = fArr3;
                                            i9 = i14;
                                            eVar = eVar3;
                                            f10 = f27;
                                        } else {
                                            if (c9 == 'q' || c9 == 't' || c9 == 'Q' || c9 == 'T') {
                                                f17 = f27 - f21;
                                                f18 = f28 - f22;
                                            } else {
                                                f18 = 0.0f;
                                                f17 = 0.0f;
                                            }
                                            int i31 = i14 + 1;
                                            path2.rQuadTo(f17, f18, fArr3[i14], fArr3[i31]);
                                            float f41 = f17 + f27;
                                            float f42 = f18 + f28;
                                            float f43 = f27 + fArr3[i14];
                                            f28 += fArr3[i31];
                                            f22 = f42;
                                            fArr = fArr3;
                                            i9 = i14;
                                            eVar = eVar3;
                                            f10 = f43;
                                            f21 = f41;
                                        }
                                        f9 = f28;
                                    } else {
                                        if (c9 == 'c' || c9 == 's' || c9 == 'C' || c9 == 'S') {
                                            f15 = f28 - f22;
                                            f16 = f27 - f21;
                                        } else {
                                            f16 = 0.0f;
                                            f15 = 0.0f;
                                        }
                                        int i32 = i14;
                                        int i33 = i32 + 1;
                                        int i34 = i32 + 2;
                                        int i35 = i32 + 3;
                                        fArr = fArr3;
                                        i9 = i32;
                                        path2.rCubicTo(f16, f15, fArr3[i32], fArr3[i33], fArr3[i34], fArr3[i35]);
                                        f11 = fArr[i9] + f27;
                                        f12 = fArr[i33] + f28;
                                        f27 += fArr[i34];
                                        f13 = fArr[i35];
                                    }
                                    i10 = i12;
                                    c8 = c10;
                                } else {
                                    fArr = fArr3;
                                    i9 = i14;
                                    if (c9 == 'c' || c9 == 's' || c9 == 'C' || c9 == 'S') {
                                        f27 = (f27 * 2.0f) - f21;
                                        f28 = (f28 * 2.0f) - f22;
                                    }
                                    float f44 = f27;
                                    float f45 = f28;
                                    int i36 = i9 + 1;
                                    int i37 = i9 + 2;
                                    int i38 = i9 + 3;
                                    path2.cubicTo(f44, f45, fArr[i9], fArr[i36], fArr[i37], fArr[i38]);
                                    f21 = fArr[i9];
                                    f22 = fArr[i36];
                                    f10 = fArr[i37];
                                    f9 = fArr[i38];
                                }
                                i10 = i12;
                                eVar = eVar3;
                                c8 = c10;
                            } else {
                                fArr = fArr3;
                                i9 = i14;
                                path2.rLineTo(0.0f, fArr[i9]);
                                f14 = fArr[i9];
                            }
                            f28 += f14;
                        } else {
                            fArr = fArr3;
                            i9 = i14;
                            int i39 = i9 + 1;
                            int i40 = i9 + 2;
                            int i41 = i9 + 3;
                            path2.rQuadTo(fArr[i9], fArr[i39], fArr[i40], fArr[i41]);
                            f11 = fArr[i9] + f27;
                            f12 = fArr[i39] + f28;
                            f27 += fArr[i40];
                            f13 = fArr[i41];
                        }
                        f28 += f13;
                        f21 = f11;
                        f22 = f12;
                    } else {
                        fArr = fArr3;
                        i9 = i14;
                        path2.rLineTo(fArr[i9], 0.0f);
                        f27 += fArr[i9];
                    }
                    eVar = eVar3;
                    f10 = f27;
                    f9 = f28;
                    i10 = i12;
                    c8 = c10;
                } else {
                    fArr = fArr3;
                    i9 = i14;
                    int i42 = i9 + 5;
                    float f46 = fArr[i42] + f27;
                    int i43 = i9 + 6;
                    float f47 = fArr[i43] + f28;
                    float f48 = fArr[i9];
                    float f49 = fArr[i9 + 1];
                    float f50 = fArr[i9 + 2];
                    if (fArr[i9 + 3] != 0.0f) {
                        eVar2 = eVar3;
                        z5 = 1;
                    } else {
                        eVar2 = eVar3;
                        z5 = i13;
                    }
                    eVar = eVar2;
                    float f51 = f27;
                    c8 = c10;
                    float f52 = f28;
                    i10 = i12;
                    a(path, f51, f52, f46, f47, f48, f49, f50, z5, fArr[i9 + 4] != 0.0f ? 1 : i13);
                    f10 = f51 + fArr[i42];
                    f9 = f52 + fArr[i43];
                    f21 = f10;
                    f22 = f9;
                }
                i14 = i9 + i6;
                path2 = path;
                eVar3 = eVar;
                c10 = c8;
                i12 = i10;
                f27 = f10;
                f28 = f9;
                c9 = c10;
                fArr3 = fArr;
            }
            fArr2[i13] = f27;
            fArr2[1] = f28;
            fArr2[2] = f21;
            fArr2[3] = f22;
            fArr2[4] = f25;
            fArr2[5] = f26;
            c9 = eVar3.f994a;
            i12++;
            eVarArr2 = eVarArr;
            path2 = path;
            i11 = i13;
        }
    }

    public e(e eVar) {
        this.f994a = eVar.f994a;
        float[] fArr = eVar.f995b;
        this.f995b = t4.b.b(fArr, fArr.length);
    }
}
