package u6;

import c7.p;
import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e implements k, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k f5502a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final i f5503b;

    public e(i iVar, k kVar) {
        d7.g.f("left", kVar);
        this.f5502a = kVar;
        this.f5503b = iVar;
    }

    private final Object writeReplace() {
        int iB = b();
        k[] kVarArr = new k[iB];
        d7.j jVar = new d7.j();
        c(r6.j.f5000a, new d(kVarArr, jVar));
        if (jVar.f2296a == iB) {
            return new b(kVarArr);
        }
        throw new IllegalStateException("Check failed.");
    }

    public final int b() {
        int i6 = 2;
        e eVar = this;
        while (true) {
            k kVar = eVar.f5502a;
            eVar = kVar instanceof e ? (e) kVar : null;
            if (eVar == null) {
                return i6;
            }
            i6++;
        }
    }

    @Override // u6.k
    public final Object c(Object obj, p pVar) {
        return pVar.f(this.f5502a.c(obj, pVar), this.f5503b);
    }

    public final boolean equals(Object obj) {
        boolean zA;
        if (this == obj) {
            return true;
        }
        if (obj instanceof e) {
            e eVar = (e) obj;
            if (eVar.b() == b()) {
                e eVar2 = this;
                while (true) {
                    i iVar = eVar2.f5503b;
                    if (!d7.g.a(eVar.g(iVar.getKey()), iVar)) {
                        zA = false;
                        break;
                    }
                    k kVar = eVar2.f5502a;
                    if (!(kVar instanceof e)) {
                        d7.g.d("null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element", kVar);
                        i iVar2 = (i) kVar;
                        zA = d7.g.a(eVar.g(iVar2.getKey()), iVar2);
                        break;
                    }
                    eVar2 = (e) kVar;
                }
                if (zA) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // u6.k
    public final i g(j jVar) {
        d7.g.f("key", jVar);
        e eVar = this;
        while (true) {
            i iVarG = eVar.f5503b.g(jVar);
            if (iVarG != null) {
                return iVarG;
            }
            k kVar = eVar.f5502a;
            if (!(kVar instanceof e)) {
                return kVar.g(jVar);
            }
            eVar = (e) kVar;
        }
    }

    public final int hashCode() {
        return this.f5503b.hashCode() + this.f5502a.hashCode();
    }

    @Override // u6.k
    public final k o(j jVar) {
        d7.g.f("key", jVar);
        i iVar = this.f5503b;
        i iVarG = iVar.g(jVar);
        k kVar = this.f5502a;
        if (iVarG != null) {
            return kVar;
        }
        k kVarO = kVar.o(jVar);
        return kVarO == kVar ? this : kVarO == l.f5505a ? iVar : new e(iVar, kVarO);
    }

    @Override // u6.k
    public final k s(k kVar) {
        return t4.b.j(this, kVar);
    }

    public final String toString() {
        return "[" + ((String) c("", c.f5497c)) + ']';
    }
}
