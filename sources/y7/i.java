package y7;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i extends u7.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f6300e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f6301f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Object f6302g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ i(String str, Object obj, Object obj2, int i6) {
        super(str, true);
        this.f6300e = i6;
        this.f6301f = obj;
        this.f6302g = obj2;
    }

    @Override // u7.a
    public final long a() {
        long jA;
        int i6;
        w[] wVarArr;
        switch (this.f6300e) {
            case 0:
                o oVar = (o) this.f6301f;
                oVar.f6317a.a(oVar, (a0) ((d7.k) this.f6302g).f2298b);
                return -1L;
            case 1:
                try {
                    ((o) this.f6301f).f6317a.b((w) this.f6302g);
                    break;
                } catch (IOException e9) {
                    z7.n nVar = z7.n.f6440a;
                    z7.n nVar2 = z7.n.f6440a;
                    String str = "Http2Connection.Listener failure for " + ((o) this.f6301f).f6319c;
                    nVar2.getClass();
                    z7.n.i(str, 4, e9);
                    try {
                        ((w) this.f6302g).c(2, e9);
                        break;
                    } catch (IOException unused) {
                    }
                }
                return -1L;
            default:
                k kVar = (k) this.f6301f;
                a0 a0Var = (a0) this.f6302g;
                d7.k kVar2 = new d7.k();
                o oVar2 = kVar.f6307b;
                synchronized (oVar2.E) {
                    synchronized (oVar2) {
                        try {
                            a0 a0Var2 = oVar2.f6332y;
                            a0 a0Var3 = new a0();
                            a0Var3.b(a0Var2);
                            a0Var3.b(a0Var);
                            kVar2.f2298b = a0Var3;
                            jA = ((long) a0Var3.a()) - ((long) a0Var2.a());
                            i6 = 0;
                            wVarArr = (jA == 0 || oVar2.f6318b.isEmpty()) ? null : (w[]) oVar2.f6318b.values().toArray(new w[0]);
                            a0 a0Var4 = (a0) kVar2.f2298b;
                            d7.g.f("<set-?>", a0Var4);
                            oVar2.f6332y = a0Var4;
                            oVar2.f6325j.c(new i(oVar2.f6319c + " onSettings", oVar2, kVar2, i6), 0L);
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    try {
                        oVar2.E.a((a0) kVar2.f2298b);
                    } catch (IOException e10) {
                        oVar2.a(2, 2, e10);
                    }
                    break;
                }
                if (wVarArr != null) {
                    int length = wVarArr.length;
                    while (i6 < length) {
                        w wVar = wVarArr[i6];
                        synchronized (wVar) {
                            wVar.f6367f += jA;
                            if (jA > 0) {
                                wVar.notifyAll();
                            }
                        }
                        i6++;
                    }
                }
                return -1L;
        }
    }
}
