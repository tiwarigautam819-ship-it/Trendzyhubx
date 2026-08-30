package c5;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i implements z4.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1063a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f1064b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public z4.c f1065c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final f f1066d;

    public i(f fVar) {
        this.f1066d = fVar;
    }

    @Override // z4.g
    public final z4.g c(String str) {
        if (this.f1063a) {
            throw new z4.b("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f1063a = true;
        this.f1066d.d(this.f1065c, str, this.f1064b);
        return this;
    }

    @Override // z4.g
    public final z4.g d(boolean z5) {
        if (this.f1063a) {
            throw new z4.b("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f1063a = true;
        this.f1066d.c(this.f1065c, z5 ? 1 : 0, this.f1064b);
        return this;
    }
}
