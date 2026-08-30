package b0;

import android.graphics.Color;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f839a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f840b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f841c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f842d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f843e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f844f;

    public a(float f9, float f10, float f11, float f12, float f13, float f14) {
        this.f839a = f9;
        this.f840b = f10;
        this.f841c = f11;
        this.f842d = f12;
        this.f843e = f13;
        this.f844f = f14;
    }

    public static a a(int i6) {
        m mVar = m.f877k;
        float fE = b.e(Color.red(i6));
        float fE2 = b.e(Color.green(i6));
        float fE3 = b.e(Color.blue(i6));
        float[][] fArr = b.f848d;
        float[] fArr2 = fArr[0];
        float f9 = (fArr2[2] * fE3) + (fArr2[1] * fE2) + (fArr2[0] * fE);
        float[] fArr3 = fArr[1];
        float f10 = (fArr3[2] * fE3) + (fArr3[1] * fE2) + (fArr3[0] * fE);
        float[] fArr4 = fArr[2];
        float f11 = (fE3 * fArr4[2]) + (fE2 * fArr4[1]) + (fE * fArr4[0]);
        float[][] fArr5 = b.f845a;
        float[] fArr6 = fArr5[0];
        float f12 = (fArr6[2] * f11) + (fArr6[1] * f10) + (fArr6[0] * f9);
        float[] fArr7 = fArr5[1];
        float f13 = (fArr7[2] * f11) + (fArr7[1] * f10) + (fArr7[0] * f9);
        float[] fArr8 = fArr5[2];
        float f14 = (f11 * fArr8[2]) + (f10 * fArr8[1]) + (f9 * fArr8[0]);
        float[] fArr9 = mVar.f884g;
        float f15 = mVar.f885i;
        float f16 = mVar.f881d;
        float f17 = mVar.f878a;
        float f18 = fArr9[0] * f12;
        float f19 = fArr9[1] * f13;
        float f20 = fArr9[2] * f14;
        float f21 = mVar.h;
        float fPow = (float) Math.pow(((double) (Math.abs(f18) * f21)) / 100.0d, 0.42d);
        float fPow2 = (float) Math.pow(((double) (Math.abs(f19) * f21)) / 100.0d, 0.42d);
        float fPow3 = (float) Math.pow(((double) (Math.abs(f20) * f21)) / 100.0d, 0.42d);
        float fSignum = ((Math.signum(f18) * 400.0f) * fPow) / (fPow + 27.13f);
        float fSignum2 = ((Math.signum(f19) * 400.0f) * fPow2) / (fPow2 + 27.13f);
        float fSignum3 = ((Math.signum(f20) * 400.0f) * fPow3) / (fPow3 + 27.13f);
        double d6 = fSignum3;
        float f22 = ((float) (((((double) fSignum2) * (-12.0d)) + (((double) fSignum) * 11.0d)) + d6)) / 11.0f;
        float f23 = ((float) (((double) (fSignum + fSignum2)) - (d6 * 2.0d))) / 9.0f;
        float f24 = fSignum2 * 20.0f;
        float f25 = ((21.0f * fSignum3) + ((fSignum * 20.0f) + f24)) / 20.0f;
        float f26 = (((fSignum * 40.0f) + f24) + fSignum3) / 20.0f;
        float fAtan2 = (((float) Math.atan2(f23, f22)) * 180.0f) / 3.1415927f;
        if (fAtan2 < 0.0f) {
            fAtan2 += 360.0f;
        } else if (fAtan2 >= 360.0f) {
            fAtan2 -= 360.0f;
        }
        float f27 = (3.1415927f * fAtan2) / 180.0f;
        float fPow4 = ((float) Math.pow((f26 * mVar.f879b) / f17, mVar.f886j * f16)) * 100.0f;
        Math.sqrt(fPow4 / 100.0f);
        float f28 = f17 + 4.0f;
        float fPow5 = ((float) Math.pow(1.64d - Math.pow(0.29d, mVar.f883f), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos(((((double) (((double) fAtan2) < 20.14d ? 360.0f + fAtan2 : fAtan2)) * 3.141592653589793d) / 180.0d) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * mVar.f882e) * mVar.f880c) * ((float) Math.sqrt((f23 * f23) + (f22 * f22)))) / (f25 + 0.305f), 0.9d)) * ((float) Math.sqrt(((double) fPow4) / 100.0d));
        Math.sqrt((r0 * f16) / f28);
        float f29 = (1.7f * fPow4) / ((0.007f * fPow4) + 1.0f);
        float fLog = ((float) Math.log((f15 * fPow5 * 0.0228f) + 1.0f)) * 43.85965f;
        double d9 = f27;
        return new a(fAtan2, fPow5, fPow4, f29, fLog * ((float) Math.cos(d9)), fLog * ((float) Math.sin(d9)));
    }

    public static a b(float f9, float f10, float f11) {
        m mVar = m.f877k;
        float f12 = mVar.f881d;
        Math.sqrt(((double) f9) / 100.0d);
        float f13 = mVar.f878a + 4.0f;
        float f14 = mVar.f885i * f10;
        Math.sqrt(((f10 / ((float) Math.sqrt(r1))) * mVar.f881d) / f13);
        float f15 = (1.7f * f9) / ((0.007f * f9) + 1.0f);
        float fLog = ((float) Math.log((((double) f14) * 0.0228d) + 1.0d)) * 43.85965f;
        double d6 = (3.1415927f * f11) / 180.0f;
        return new a(f11, f10, f9, f15, fLog * ((float) Math.cos(d6)), fLog * ((float) Math.sin(d6)));
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int c(b0.m r20) {
        /*
            Method dump skipped, instruction units count: 388
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: b0.a.c(b0.m):int");
    }
}
