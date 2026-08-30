package l2;

import i2.t;
import java.util.HashMap;
import q2.x;
import s6.r;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final HashMap f3753m = r.r(new r6.d("embedding.weight", "embed.weight"), new r6.d("dense1.weight", "fc1.weight"), new r6.d("dense2.weight", "fc2.weight"), new r6.d("dense3.weight", "fc3.weight"), new r6.d("dense1.bias", "fc1.bias"), new r6.d("dense2.bias", "fc2.bias"), new r6.d("dense3.bias", "fc3.bias"));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f3754a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f3755b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a f3756c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final a f3757d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final a f3758e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final a f3759f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final a f3760g;
    public final a h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final a f3761i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final a f3762j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final a f3763k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final HashMap f3764l;

    public b(HashMap map) {
        Object obj = map.get("embed.weight");
        if (obj == null) {
            throw new IllegalStateException("Required value was null.");
        }
        this.f3754a = (a) obj;
        Object obj2 = map.get("convs.0.weight");
        if (obj2 == null) {
            throw new IllegalStateException("Required value was null.");
        }
        this.f3755b = e.z((a) obj2);
        Object obj3 = map.get("convs.1.weight");
        if (obj3 == null) {
            throw new IllegalStateException("Required value was null.");
        }
        this.f3756c = e.z((a) obj3);
        Object obj4 = map.get("convs.2.weight");
        if (obj4 == null) {
            throw new IllegalStateException("Required value was null.");
        }
        this.f3757d = e.z((a) obj4);
        Object obj5 = map.get("convs.0.bias");
        if (obj5 == null) {
            throw new IllegalStateException("Required value was null.");
        }
        this.f3758e = (a) obj5;
        Object obj6 = map.get("convs.1.bias");
        if (obj6 == null) {
            throw new IllegalStateException("Required value was null.");
        }
        this.f3759f = (a) obj6;
        Object obj7 = map.get("convs.2.bias");
        if (obj7 == null) {
            throw new IllegalStateException("Required value was null.");
        }
        this.f3760g = (a) obj7;
        Object obj8 = map.get("fc1.weight");
        if (obj8 == null) {
            throw new IllegalStateException("Required value was null.");
        }
        this.h = e.y((a) obj8);
        Object obj9 = map.get("fc2.weight");
        if (obj9 == null) {
            throw new IllegalStateException("Required value was null.");
        }
        this.f3761i = e.y((a) obj9);
        Object obj10 = map.get("fc1.bias");
        if (obj10 == null) {
            throw new IllegalStateException("Required value was null.");
        }
        this.f3762j = (a) obj10;
        Object obj11 = map.get("fc2.bias");
        if (obj11 == null) {
            throw new IllegalStateException("Required value was null.");
        }
        this.f3763k = (a) obj11;
        this.f3764l = new HashMap();
        for (String str : t.p(a1.a.b(1), a1.a.b(2))) {
            String strF = x.f(str, ".weight");
            String strF2 = x.f(str, ".bias");
            a aVar = (a) map.get(strF);
            a aVar2 = (a) map.get(strF2);
            if (aVar != null) {
                this.f3764l.put(strF, e.y(aVar));
            }
            if (aVar2 != null) {
                this.f3764l.put(strF2, aVar2);
            }
        }
    }

    public final a a(a aVar, String[] strArr, String str) {
        HashMap map = this.f3764l;
        if (!v2.a.b(this)) {
            try {
                a aVarG = e.g(e.k(strArr, this.f3754a), this.f3755b);
                e.a(aVarG, this.f3758e);
                e.s(aVarG);
                a aVarG2 = e.g(aVarG, this.f3756c);
                e.a(aVarG2, this.f3759f);
                e.s(aVarG2);
                a aVarO = e.o(aVarG2, 2);
                a aVarG3 = e.g(aVarO, this.f3757d);
                e.a(aVarG3, this.f3760g);
                e.s(aVarG3);
                a aVarO2 = e.o(aVarG, aVarG.f3750a[1]);
                a aVarO3 = e.o(aVarO, aVarO.f3750a[1]);
                a aVarO4 = e.o(aVarG3, aVarG3.f3750a[1]);
                e.l(aVarO2);
                e.l(aVarO3);
                e.l(aVarO4);
                a aVarH = e.h(e.f(new a[]{aVarO2, aVarO3, aVarO4, aVar}), this.h, this.f3762j);
                e.s(aVarH);
                a aVarH2 = e.h(aVarH, this.f3761i, this.f3763k);
                e.s(aVarH2);
                a aVar2 = (a) map.get(str.concat(".weight"));
                a aVar3 = (a) map.get(str.concat(".bias"));
                if (aVar2 != null && aVar3 != null) {
                    a aVarH3 = e.h(aVarH2, aVar2, aVar3);
                    e.u(aVarH3);
                    return aVarH3;
                }
            } catch (Throwable th) {
                v2.a.a(th, this);
                return null;
            }
        }
        return null;
    }
}
