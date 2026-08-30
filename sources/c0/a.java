package c0;

import android.graphics.Color;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f987a = 0;

    static {
        new ThreadLocal();
    }

    public static int a(double d6, double d9, double d10) {
        double d11 = (((-0.4986d) * d10) + (((-1.5372d) * d9) + (3.2406d * d6))) / 100.0d;
        double d12 = ((0.0415d * d10) + ((1.8758d * d9) + ((-0.9689d) * d6))) / 100.0d;
        double d13 = ((1.057d * d10) + (((-0.204d) * d9) + (0.0557d * d6))) / 100.0d;
        double dPow = d11 > 0.0031308d ? (Math.pow(d11, 0.4166666666666667d) * 1.055d) - 0.055d : d11 * 12.92d;
        double dPow2 = d12 > 0.0031308d ? (Math.pow(d12, 0.4166666666666667d) * 1.055d) - 0.055d : d12 * 12.92d;
        double dPow3 = d13 > 0.0031308d ? (Math.pow(d13, 0.4166666666666667d) * 1.055d) - 0.055d : d13 * 12.92d;
        int iRound = (int) Math.round(dPow * 255.0d);
        int iMin = iRound < 0 ? 0 : Math.min(iRound, 255);
        int iRound2 = (int) Math.round(dPow2 * 255.0d);
        int iMin2 = iRound2 < 0 ? 0 : Math.min(iRound2, 255);
        int iRound3 = (int) Math.round(dPow3 * 255.0d);
        return Color.rgb(iMin, iMin2, iRound3 >= 0 ? Math.min(iRound3, 255) : 0);
    }

    public static int b(int i6, int i9) {
        int iAlpha = Color.alpha(i9);
        int iAlpha2 = Color.alpha(i6);
        int i10 = 255 - (((255 - iAlpha2) * (255 - iAlpha)) / 255);
        return Color.argb(i10, c(Color.red(i6), iAlpha2, Color.red(i9), iAlpha, i10), c(Color.green(i6), iAlpha2, Color.green(i9), iAlpha, i10), c(Color.blue(i6), iAlpha2, Color.blue(i9), iAlpha, i10));
    }

    public static int c(int i6, int i9, int i10, int i11, int i12) {
        if (i12 == 0) {
            return 0;
        }
        return (((255 - i9) * (i10 * i11)) + ((i6 * 255) * i9)) / (i12 * 255);
    }
}
