package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.google.firebase.messaging.y f1953a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public com.google.firebase.messaging.y f1954b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c5.h f1955c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final y4 f1956d;

    public v() {
        com.google.firebase.messaging.y yVar = new com.google.firebase.messaging.y(2);
        this.f1953a = yVar;
        this.f1954b = ((com.google.firebase.messaging.y) yVar.f2163b).J();
        c5.h hVar = new c5.h(2);
        hVar.f1060b = new c("", 0L, null);
        hVar.f1061c = new c("", 0L, null);
        hVar.f1062d = new ArrayList();
        this.f1955c = hVar;
        this.f1956d = new y4(8);
        a aVar = new a(0);
        aVar.f1510b = this;
        o6 o6Var = (o6) yVar.f2165d;
        ((HashMap) o6Var.f1792a).put("internal.registerCallback", aVar);
        a aVar2 = new a(1);
        aVar2.f1510b = this;
        ((HashMap) o6Var.f1792a).put("internal.eventLogger", aVar2);
    }

    public final void a(k4 k4Var) throws k0 {
        j jVar;
        com.google.firebase.messaging.y yVar = this.f1953a;
        try {
            this.f1954b = ((com.google.firebase.messaging.y) yVar.f2163b).J();
            if (yVar.H(this.f1954b, (l4[]) k4Var.o().toArray(new l4[0])) instanceof h) {
                throw new IllegalStateException("Program loading failed");
            }
            for (j4 j4Var : k4Var.n().p()) {
                j6 j6VarO = j4Var.o();
                String strN = j4Var.n();
                Iterator it = j6VarO.iterator();
                while (it.hasNext()) {
                    n nVarH = yVar.H(this.f1954b, (l4) it.next());
                    if (!(nVarH instanceof m)) {
                        throw new IllegalArgumentException("Invalid rule definition");
                    }
                    com.google.firebase.messaging.y yVar2 = this.f1954b;
                    if (yVar2.L(strN)) {
                        n nVarI = yVar2.I(strN);
                        if (!(nVarI instanceof j)) {
                            throw new IllegalStateException("Invalid function name: " + strN);
                        }
                        jVar = (j) nVarI;
                    } else {
                        jVar = null;
                    }
                    if (jVar == null) {
                        throw new IllegalStateException("Rule function is undefined: " + strN);
                    }
                    jVar.e(this.f1954b, Collections.singletonList(nVarH));
                }
            }
        } catch (Throwable th) {
            throw new k0(th);
        }
    }

    public final boolean b(c cVar) {
        c5.h hVar = this.f1955c;
        try {
            hVar.f1060b = cVar;
            hVar.f1061c = (c) cVar.clone();
            ((ArrayList) hVar.f1062d).clear();
            ((com.google.firebase.messaging.y) this.f1953a.f2164c).M("runtime.counter", new g(Double.valueOf(0.0d)));
            this.f1956d.K(this.f1954b.J(), hVar);
            if (((c) hVar.f1061c).equals((c) hVar.f1060b)) {
                return !((ArrayList) hVar.f1062d).isEmpty();
            }
            return true;
        } catch (Throwable th) {
            throw new k0(th);
        }
    }
}
