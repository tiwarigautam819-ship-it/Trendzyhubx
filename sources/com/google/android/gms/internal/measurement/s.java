package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f1895a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1896b;

    public s(int i6) {
        this.f1896b = i6;
    }

    public static n a(a0 a0Var, Iterator it, n nVar) {
        com.google.firebase.messaging.y yVarJ;
        if (it != null) {
            while (it.hasNext()) {
                n nVar2 = (n) it.next();
                switch (a0Var.f1511a) {
                    case 0:
                        yVarJ = a0Var.f1512b.J();
                        String str = a0Var.f1513c;
                        yVarJ.K(str, nVar2);
                        ((HashMap) yVarJ.f2165d).put(str, Boolean.TRUE);
                        break;
                    case 1:
                        yVarJ = a0Var.f1512b.J();
                        yVarJ.K(a0Var.f1513c, nVar2);
                        break;
                    default:
                        yVarJ = a0Var.f1512b;
                        yVarJ.K(a0Var.f1513c, nVar2);
                        break;
                }
                n nVarF = yVarJ.F((e) nVar);
                if (nVarF instanceof h) {
                    h hVar = (h) nVarF;
                    String str2 = hVar.f1666b;
                    if ("break".equals(str2)) {
                        return n.f1743n;
                    }
                    if ("return".equals(str2)) {
                        return hVar;
                    }
                }
            }
        }
        return n.f1743n;
    }

    public static o b(com.google.firebase.messaging.y yVar, List list) {
        p4.o(f0.FN, 2, list);
        n nVarG = ((y4) yVar.f2163b).G(yVar, (n) list.get(0));
        n nVarG2 = ((y4) yVar.f2163b).G(yVar, (n) list.get(1));
        if (!(nVarG2 instanceof e)) {
            throw new IllegalArgumentException(q2.x.k("FN requires an ArrayValue of parameter names found ", nVarG2.getClass().getCanonicalName()));
        }
        ArrayList arrayListM = ((e) nVarG2).m();
        List arrayList = new ArrayList();
        if (list.size() > 2) {
            arrayList = list.subList(2, list.size());
        }
        return new o(nVarG.zzf(), arrayListM, arrayList, yVar);
    }

    public static boolean d(n nVar, n nVar2) {
        n gVar;
        n gVar2;
        while (!nVar.getClass().equals(nVar2.getClass())) {
            if (((nVar instanceof t) || (nVar instanceof l)) && ((nVar2 instanceof t) || (nVar2 instanceof l))) {
                return true;
            }
            boolean z5 = nVar instanceof g;
            if (z5 && (nVar2 instanceof p)) {
                gVar2 = new g(nVar2.c());
            } else {
                boolean z8 = nVar instanceof p;
                if (z8 && (nVar2 instanceof g)) {
                    gVar = new g(nVar.c());
                } else if (nVar instanceof f) {
                    gVar = new g(nVar.c());
                } else if (nVar2 instanceof f) {
                    gVar2 = new g(nVar2.c());
                } else if ((z8 || z5) && (nVar2 instanceof i)) {
                    gVar2 = new p(nVar2.zzf());
                } else {
                    if (!(nVar instanceof i) || (!(nVar2 instanceof p) && !(nVar2 instanceof g))) {
                        return false;
                    }
                    gVar = new p(nVar.zzf());
                }
                nVar = gVar;
            }
            nVar2 = gVar2;
        }
        if ((nVar instanceof t) || (nVar instanceof l)) {
            return true;
        }
        return nVar instanceof g ? (Double.isNaN(nVar.c().doubleValue()) || Double.isNaN(nVar2.c().doubleValue()) || nVar.c().doubleValue() != nVar2.c().doubleValue()) ? false : true : nVar instanceof p ? nVar.zzf().equals(nVar2.zzf()) : nVar instanceof f ? nVar.zzd().equals(nVar2.zzd()) : nVar == nVar2;
    }

    public static n e(a0 a0Var, n nVar, n nVar2) {
        if (nVar instanceof Iterable) {
            return a(a0Var, ((Iterable) nVar).iterator(), nVar2);
        }
        throw new IllegalArgumentException("Non-iterable type in for...of loop.");
    }

    public static boolean f(n nVar, n nVar2) {
        if (nVar instanceof i) {
            nVar = new p(nVar.zzf());
        }
        if (nVar2 instanceof i) {
            nVar2 = new p(nVar2.zzf());
        }
        if ((nVar instanceof p) && (nVar2 instanceof p)) {
            return ((p) nVar).f1798a.compareTo(((p) nVar2).f1798a) < 0;
        }
        double dDoubleValue = nVar.c().doubleValue();
        double dDoubleValue2 = nVar2.c().doubleValue();
        return (Double.isNaN(dDoubleValue) || Double.isNaN(dDoubleValue2) || (dDoubleValue == 0.0d && dDoubleValue2 == -0.0d) || ((dDoubleValue == -0.0d && dDoubleValue2 == 0.0d) || Double.compare(dDoubleValue, dDoubleValue2) >= 0)) ? false : true;
    }

    public static boolean g(n nVar, n nVar2) {
        if (nVar instanceof i) {
            nVar = new p(nVar.zzf());
        }
        if (nVar2 instanceof i) {
            nVar2 = new p(nVar2.zzf());
        }
        return (((nVar instanceof p) && (nVar2 instanceof p)) || !(Double.isNaN(nVar.c().doubleValue()) || Double.isNaN(nVar2.c().doubleValue()))) && !f(nVar2, nVar);
    }

    public final void c(String str) {
        if (!this.f1895a.contains(p4.d(str))) {
            throw new IllegalArgumentException("Command not supported");
        }
        throw new UnsupportedOperationException(q2.x.k("Command not implemented: ", str));
    }
}
