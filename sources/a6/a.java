package a6;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final short f83c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final short f84d;

    public a(g gVar, int i6, int i9) {
        super(gVar);
        this.f83c = (short) i6;
        this.f84d = (short) i9;
    }

    @Override // a6.g
    public final void a(b6.a aVar, byte[] bArr) {
        int i6 = 0;
        while (true) {
            short s3 = this.f84d;
            if (i6 >= s3) {
                return;
            }
            if (i6 == 0 || (i6 == 31 && s3 <= 62)) {
                aVar.b(31, 5);
                if (s3 > 62) {
                    aVar.b(s3 - 31, 16);
                } else if (i6 == 0) {
                    aVar.b(Math.min((int) s3, 31), 5);
                } else {
                    aVar.b(s3 - 31, 5);
                }
            }
            aVar.b(bArr[this.f83c + i6], 8);
            i6++;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sb.append((int) this.f83c);
        sb.append("::");
        sb.append((r1 + this.f84d) - 1);
        sb.append('>');
        return sb.toString();
    }
}
