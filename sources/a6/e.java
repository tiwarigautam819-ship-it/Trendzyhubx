package a6;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final short f91c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final short f92d;

    public e(g gVar, int i6, int i9) {
        super(gVar);
        this.f91c = (short) i6;
        this.f92d = (short) i9;
    }

    @Override // a6.g
    public final void a(b6.a aVar, byte[] bArr) {
        aVar.b(this.f91c, this.f92d);
    }

    public final String toString() {
        short s3 = this.f92d;
        return "<" + Integer.toBinaryString((1 << s3) | (((1 << s3) - 1) & this.f91c) | (1 << s3)).substring(1) + '>';
    }
}
