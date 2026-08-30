package y7;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l extends u7.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ o f6308e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f6309f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ e8.g f6310g;
    public final /* synthetic */ int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(String str, o oVar, int i6, e8.g gVar, int i9, boolean z5) {
        super(str, true);
        this.f6308e = oVar;
        this.f6309f = i6;
        this.f6310g = gVar;
        this.h = i9;
    }

    @Override // u7.a
    public final long a() {
        try {
            z zVar = this.f6308e.f6326k;
            e8.g gVar = this.f6310g;
            int i6 = this.h;
            zVar.getClass();
            gVar.skip(i6);
            this.f6308e.E.u(this.f6309f, 9);
            synchronized (this.f6308e) {
                this.f6308e.G.remove(Integer.valueOf(this.f6309f));
            }
            return -1L;
        } catch (IOException unused) {
            return -1L;
        }
    }
}
