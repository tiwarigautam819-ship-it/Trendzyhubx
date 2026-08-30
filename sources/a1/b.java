package a1;

import c7.l;
import d7.g;
import d7.h;
import java.util.concurrent.CancellationException;
import l7.g0;
import l7.h0;
import l7.u;
import r6.j;
import u.i;
import u.k;
import x1.r;
import y2.o;
import y2.q;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends h implements l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f7c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f8d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b(Object obj, int i6, Object obj2) {
        super(1);
        this.f6b = i6;
        this.f7c = obj;
        this.f8d = obj2;
    }

    @Override // c7.l
    public final Object g(Object obj) {
        g0 g0Var;
        int i6 = this.f6b;
        j jVar = j.f5000a;
        Object obj2 = this.f8d;
        Object obj3 = this.f7c;
        switch (i6) {
            case 0:
                Throwable th = (Throwable) obj;
                i iVar = (i) obj3;
                if (th == null) {
                    Object objN = ((u) obj2).n();
                    if (objN instanceof g0) {
                        throw new IllegalStateException("This job has not completed yet");
                    }
                    if (objN instanceof l7.i) {
                        throw ((l7.i) objN).f3859a;
                    }
                    h0 h0Var = objN instanceof h0 ? (h0) objN : null;
                    if (h0Var != null && (g0Var = h0Var.f3857a) != null) {
                        objN = g0Var;
                    }
                    iVar.f5439d = true;
                    k kVar = iVar.f5437b;
                    if (kVar != null && kVar.f5441b.j(objN)) {
                        iVar.f5436a = null;
                        iVar.f5437b = null;
                        iVar.f5438c = null;
                    }
                } else if (th instanceof CancellationException) {
                    iVar.f5439d = true;
                    k kVar2 = iVar.f5437b;
                    if (kVar2 != null && kVar2.f5441b.cancel(true)) {
                        iVar.f5436a = null;
                        iVar.f5437b = null;
                        iVar.f5438c = null;
                    }
                } else {
                    iVar.f5439d = true;
                    k kVar3 = iVar.f5437b;
                    if (kVar3 != null && kVar3.f5441b.k(th)) {
                        iVar.f5436a = null;
                        iVar.f5437b = null;
                        iVar.f5438c = null;
                    }
                }
                return jVar;
            default:
                d.a aVar = (d.a) obj;
                g.f("result", aVar);
                int i9 = aVar.f2190a;
                if (i9 == -1) {
                    o oVarK = ((q) obj3).K();
                    r rVar = r.f5918a;
                    q2.g.k();
                    oVarK.i(r.f5925i, i9, aVar.f2191b);
                } else {
                    ((androidx.fragment.app.h0) obj2).finish();
                }
                return jVar;
        }
    }
}
