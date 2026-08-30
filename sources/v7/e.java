package v7;

import java.io.IOException;
import r7.x;
import y7.b0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final m f5655a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final r7.a f5656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final i f5657c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public g.j f5658d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public k2.n f5659e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5660f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5661g;
    public int h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public x f5662i;

    public e(m mVar, r7.a aVar, i iVar) {
        d7.g.f("connectionPool", mVar);
        this.f5655a = mVar;
        this.f5656b = aVar;
        this.f5657c = iVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0128  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final v7.l a(int r12, int r13, int r14, boolean r15, boolean r16) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 406
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: v7.e.a(int, int, int, boolean, boolean):v7.l");
    }

    public final boolean b(r7.m mVar) {
        d7.g.f("url", mVar);
        r7.m mVar2 = this.f5656b.h;
        return mVar.f5084e == mVar2.f5084e && d7.g.a(mVar.f5083d, mVar2.f5083d);
    }

    public final void c(IOException iOException) {
        d7.g.f("e", iOException);
        this.f5662i = null;
        if ((iOException instanceof b0) && ((b0) iOException).f6278a == 8) {
            this.f5660f++;
        } else if (iOException instanceof y7.a) {
            this.f5661g++;
        } else {
            this.h++;
        }
    }
}
