package u6;

import c7.p;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends d7.h implements p {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c f5497c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final c f5498d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5499b;

    static {
        int i6 = 2;
        f5497c = new c(i6, 0);
        f5498d = new c(i6, 1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c(int i6, int i9) {
        super(i6);
        this.f5499b = i9;
    }

    @Override // c7.p
    public final Object f(Object obj, Object obj2) {
        e eVar;
        switch (this.f5499b) {
            case 0:
                String str = (String) obj;
                i iVar = (i) obj2;
                d7.g.f("acc", str);
                if (str.length() == 0) {
                    return iVar.toString();
                }
                return str + ", " + iVar;
            default:
                k kVar = (k) obj;
                i iVar2 = (i) obj2;
                d7.g.f("acc", kVar);
                k kVarO = kVar.o(iVar2.getKey());
                l lVar = l.f5505a;
                if (kVarO == lVar) {
                    return iVar2;
                }
                g gVar = g.f5504a;
                h hVar = (h) kVarO.g(gVar);
                if (hVar == null) {
                    eVar = new e(iVar2, kVarO);
                } else {
                    k kVarO2 = kVarO.o(gVar);
                    if (kVarO2 == lVar) {
                        return new e(hVar, iVar2);
                    }
                    eVar = new e(hVar, new e(iVar2, kVarO2));
                }
                return eVar;
        }
    }
}
