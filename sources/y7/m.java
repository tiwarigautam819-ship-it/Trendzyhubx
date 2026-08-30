package y7;

import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m extends u7.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f6311e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ o f6312f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f6313g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(String str, o oVar, int i6, List list) {
        super(str, true);
        this.f6312f = oVar;
        this.f6313g = i6;
    }

    private final long b() {
        this.f6312f.f6326k.getClass();
        try {
            this.f6312f.E.u(this.f6313g, 9);
            synchronized (this.f6312f) {
                this.f6312f.G.remove(Integer.valueOf(this.f6313g));
            }
            return -1L;
        } catch (IOException unused) {
            return -1L;
        }
    }

    @Override // u7.a
    public final long a() {
        switch (this.f6311e) {
            case 0:
                return b();
            default:
                this.f6312f.f6326k.getClass();
                try {
                    this.f6312f.E.u(this.f6313g, 9);
                    synchronized (this.f6312f) {
                        this.f6312f.G.remove(Integer.valueOf(this.f6313g));
                    }
                    return -1L;
                } catch (IOException unused) {
                    return -1L;
                }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(String str, o oVar, int i6, List list, boolean z5) {
        super(str, true);
        this.f6312f = oVar;
        this.f6313g = i6;
    }
}
