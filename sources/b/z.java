package b;

import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class z extends d7.h implements c7.l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i0 f838c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ z(i0 i0Var, int i6) {
        super(1);
        this.f837b = i6;
        this.f838c = i0Var;
    }

    @Override // c7.l
    public final Object g(Object obj) {
        Object objPrevious;
        Object objPrevious2;
        switch (this.f837b) {
            case 0:
                b bVar = (b) obj;
                d7.g.f("backEvent", bVar);
                i0 i0Var = this.f838c;
                s6.e eVar = i0Var.f803b;
                eVar.getClass();
                ListIterator listIterator = eVar.listIterator(eVar.f5280c);
                while (true) {
                    if (listIterator.hasPrevious()) {
                        objPrevious = listIterator.previous();
                        if (((y) objPrevious).f834a) {
                        }
                    } else {
                        objPrevious = null;
                    }
                }
                y yVar = (y) objPrevious;
                if (i0Var.f804c != null) {
                    i0Var.b();
                }
                i0Var.f804c = yVar;
                if (yVar != null) {
                    yVar.d(bVar);
                }
                break;
            default:
                b bVar2 = (b) obj;
                d7.g.f("backEvent", bVar2);
                i0 i0Var2 = this.f838c;
                y yVar2 = i0Var2.f804c;
                if (yVar2 == null) {
                    s6.e eVar2 = i0Var2.f803b;
                    eVar2.getClass();
                    ListIterator listIterator2 = eVar2.listIterator(eVar2.f5280c);
                    while (true) {
                        if (listIterator2.hasPrevious()) {
                            objPrevious2 = listIterator2.previous();
                            if (((y) objPrevious2).f834a) {
                            }
                        } else {
                            objPrevious2 = null;
                        }
                    }
                    yVar2 = (y) objPrevious2;
                }
                if (yVar2 != null) {
                    yVar2.c(bVar2);
                }
                break;
        }
        return r6.j.f5000a;
    }
}
