package y7;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j extends u7.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f6303e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ o f6304f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f6305g;
    public final /* synthetic */ int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ j(String str, o oVar, int i6, int i9, int i10) {
        super(str, true);
        this.f6303e = i10;
        this.f6304f = oVar;
        this.f6305g = i6;
        this.h = i9;
    }

    @Override // u7.a
    public final long a() {
        switch (this.f6303e) {
            case 0:
                o oVar = this.f6304f;
                try {
                    oVar.E.t(this.f6305g, this.h, true);
                    return -1L;
                } catch (IOException e9) {
                    oVar.a(2, 2, e9);
                    return -1L;
                }
            case 1:
                z zVar = this.f6304f.f6326k;
                int i6 = this.h;
                zVar.getClass();
                a1.a.n(i6, "errorCode");
                synchronized (this.f6304f) {
                    this.f6304f.G.remove(Integer.valueOf(this.f6305g));
                }
                return -1L;
            default:
                o oVar2 = this.f6304f;
                try {
                    int i9 = this.f6305g;
                    int i10 = this.h;
                    a1.a.n(i10, "statusCode");
                    oVar2.E.u(i9, i10);
                    return -1L;
                } catch (IOException e10) {
                    oVar2.a(2, 2, e10);
                    return -1L;
                }
        }
    }
}
