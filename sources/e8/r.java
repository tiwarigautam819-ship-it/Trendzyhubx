package e8;

import com.engagelab.privates.core.constants.MTCoreConstants;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f2474a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2475b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2476c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2477d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f2478e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public r f2479f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public r f2480g;

    public r() {
        this.f2474a = new byte[8192];
        this.f2478e = true;
        this.f2477d = false;
    }

    public final r a() {
        r rVar = this.f2479f;
        if (rVar == this) {
            rVar = null;
        }
        r rVar2 = this.f2480g;
        d7.g.c(rVar2);
        rVar2.f2479f = this.f2479f;
        r rVar3 = this.f2479f;
        d7.g.c(rVar3);
        rVar3.f2480g = this.f2480g;
        this.f2479f = null;
        this.f2480g = null;
        return rVar;
    }

    public final void b(r rVar) {
        d7.g.f("segment", rVar);
        rVar.f2480g = this;
        rVar.f2479f = this.f2479f;
        r rVar2 = this.f2479f;
        d7.g.c(rVar2);
        rVar2.f2480g = rVar;
        this.f2479f = rVar;
    }

    public final r c() {
        this.f2477d = true;
        return new r(this.f2474a, this.f2475b, this.f2476c, true);
    }

    public final void d(r rVar, int i6) {
        d7.g.f("sink", rVar);
        byte[] bArr = rVar.f2474a;
        if (!rVar.f2478e) {
            throw new IllegalStateException("only owner can write");
        }
        int i9 = rVar.f2476c;
        int i10 = i9 + i6;
        if (i10 > 8192) {
            if (rVar.f2477d) {
                throw new IllegalArgumentException();
            }
            int i11 = rVar.f2475b;
            if (i10 - i11 > 8192) {
                throw new IllegalArgumentException();
            }
            s6.f.j(0, i11, i9, bArr, bArr);
            rVar.f2476c -= rVar.f2475b;
            rVar.f2475b = 0;
        }
        int i12 = rVar.f2476c;
        int i13 = this.f2475b;
        s6.f.j(i12, i13, i13 + i6, this.f2474a, bArr);
        rVar.f2476c += i6;
        this.f2475b += i6;
    }

    public r(byte[] bArr, int i6, int i9, boolean z5) {
        d7.g.f(MTCoreConstants.Protocol.KEY_DATA, bArr);
        this.f2474a = bArr;
        this.f2475b = i6;
        this.f2476c = i9;
        this.f2477d = z5;
        this.f2478e = false;
    }
}
