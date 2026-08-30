package y7;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class n extends u7.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ o f6314e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f6315f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ long f6316g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(String str, o oVar, int i6, long j3) {
        super(str, true);
        this.f6314e = oVar;
        this.f6315f = i6;
        this.f6316g = j3;
    }

    @Override // u7.a
    public final long a() {
        o oVar = this.f6314e;
        try {
            oVar.E.w(this.f6315f, this.f6316g);
            return -1L;
        } catch (IOException e9) {
            oVar.a(2, 2, e9);
            return -1L;
        }
    }
}
