package y7;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k implements c7.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s f6306a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ o f6307b;

    public k(o oVar, s sVar) {
        this.f6307b = oVar;
        this.f6306a = sVar;
    }

    @Override // c7.a
    public final Object b() {
        o oVar = this.f6307b;
        s sVar = this.f6306a;
        try {
        } catch (IOException e9) {
            oVar.a(2, 2, e9);
        } catch (Throwable th) {
            oVar.a(3, 3, null);
            s7.b.d(sVar);
            throw th;
        }
        if (!sVar.a(true, this)) {
            throw new IOException("Required SETTINGS preface not received");
        }
        while (sVar.a(false, this)) {
        }
        oVar.a(1, 9, null);
        s7.b.d(sVar);
        return r6.j.f5000a;
    }
}
