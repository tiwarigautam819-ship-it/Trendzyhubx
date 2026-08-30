package m0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f4178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4179b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f4180c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f4181d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f4182e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f4183f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f4184g;
    public float h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4185i;

    public final float a(long j3) {
        if (j3 < this.f4182e) {
            return 0.0f;
        }
        long j8 = this.f4184g;
        if (j8 < 0 || j3 < j8) {
            return d.b((j3 - r0) / this.f4178a, 0.0f, 1.0f) * 0.5f;
        }
        float f9 = this.h;
        return (d.b((j3 - j8) / this.f4185i, 0.0f, 1.0f) * f9) + (1.0f - f9);
    }
}
