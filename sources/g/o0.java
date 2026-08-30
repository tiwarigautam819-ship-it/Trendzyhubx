package g;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static o0 f2760d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f2761a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f2762b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2763c;

    public final void a(long j3, double d6, double d9) {
        double d10 = (0.01720197f * ((j3 - 946728000000L) / 8.64E7f)) + 6.24006f;
        double dSin = (Math.sin(r3 * 3.0f) * 5.236000106378924E-6d) + (Math.sin(2.0f * r3) * 3.4906598739326E-4d) + (Math.sin(d10) * 0.03341960161924362d) + d10 + 1.796593063d + 3.141592653589793d;
        double dSin2 = (Math.sin(2.0d * dSin) * (-0.0069d)) + (Math.sin(d10) * 0.0053d) + ((double) (Math.round(((double) (r2 - 9.0E-4f)) - r6) + 9.0E-4f)) + ((-d9) / 360.0d);
        double dAsin = Math.asin(Math.sin(0.4092797040939331d) * Math.sin(dSin));
        double d11 = 0.01745329238474369d * d6;
        double dSin3 = (Math.sin(-0.10471975803375244d) - (Math.sin(dAsin) * Math.sin(d11))) / (Math.cos(dAsin) * Math.cos(d11));
        if (dSin3 >= 1.0d) {
            this.f2763c = 1;
            this.f2761a = -1L;
            this.f2762b = -1L;
        } else {
            if (dSin3 <= -1.0d) {
                this.f2763c = 0;
                this.f2761a = -1L;
                this.f2762b = -1L;
                return;
            }
            double dAcos = (float) (Math.acos(dSin3) / 6.283185307179586d);
            this.f2761a = Math.round((dSin2 + dAcos) * 8.64E7d) + 946728000000L;
            long jRound = Math.round((dSin2 - dAcos) * 8.64E7d) + 946728000000L;
            this.f2762b = jRound;
            if (jRound >= j3 || this.f2761a <= j3) {
                this.f2763c = 1;
            } else {
                this.f2763c = 0;
            }
        }
    }
}
