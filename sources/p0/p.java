package p0;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f4597a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s f4598b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public s f4599c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public s f4600d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4601e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4602f;

    public p(s sVar) {
        this.f4598b = sVar;
        this.f4599c = sVar;
    }

    public final void a() {
        this.f4597a = 1;
        this.f4599c = this.f4598b;
        this.f4602f = 0;
    }

    public final boolean b() {
        q0.a aVarB = this.f4599c.f4615b.b();
        int iA = aVarB.a(6);
        return !(iA == 0 || ((ByteBuffer) aVarB.f3249d).get(iA + aVarB.f3246a) == 0) || this.f4601e == 65039;
    }
}
