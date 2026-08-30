package androidx.fragment.app;

import android.view.View;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f488a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ o f489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l1 f490c;

    public /* synthetic */ d(o oVar, l1 l1Var, int i6) {
        this.f488a = i6;
        this.f489b = oVar;
        this.f490c = l1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f488a) {
            case 0:
                o oVar = this.f489b;
                d7.g.f("this$0", oVar);
                l1 l1Var = this.f490c;
                d7.g.f("$operation", l1Var);
                oVar.a(l1Var);
                break;
            case 1:
                o oVar2 = this.f489b;
                ArrayList arrayList = oVar2.f590b;
                l1 l1Var2 = this.f490c;
                if (arrayList.contains(l1Var2)) {
                    int i6 = l1Var2.f572a;
                    View view = l1Var2.f574c.P;
                    d7.g.e("operation.fragment.mView", view);
                    m1.a(i6, view, oVar2.f589a);
                }
                break;
            default:
                o oVar3 = this.f489b;
                ArrayList arrayList2 = oVar3.f590b;
                l1 l1Var3 = this.f490c;
                arrayList2.remove(l1Var3);
                oVar3.f591c.remove(l1Var3);
                break;
        }
    }
}
