package t5;

import java.io.IOException;
import q5.w;
import q5.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i extends x {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f5355b = new a(w.f4888a);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final q5.l f5356a;

    public i(q5.l lVar) {
        this.f5356a = lVar;
    }

    @Override // q5.x
    public final void a(x5.a aVar, Object obj) throws IOException {
        if (obj == null) {
            aVar.w();
            return;
        }
        x xVarB = this.f5356a.b(new w5.a(obj.getClass()));
        if (!(xVarB instanceof i)) {
            xVarB.a(aVar, obj);
        } else {
            aVar.g();
            aVar.t();
        }
    }
}
