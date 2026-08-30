package com.google.android.gms.internal.measurement;

import com.google.android.gms.measurement.internal.zzhk;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g6 extends j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f1654c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f1655d;

    public /* synthetic */ g6(String str) {
        super(str);
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final n e(com.google.firebase.messaging.y yVar, List list) {
        TreeMap treeMap;
        switch (this.f1654c) {
            case 0:
                p4.g(3, this.f1682a, list);
                String strZzf = ((y4) yVar.f2163b).G(yVar, (n) list.get(0)).zzf();
                n nVar = (n) list.get(1);
                y4 y4Var = (y4) yVar.f2163b;
                long jA = (long) p4.a(y4Var.G(yVar, nVar).c().doubleValue());
                n nVarG = y4Var.G(yVar, (n) list.get(2));
                HashMap mapF = nVarG instanceof m ? p4.f((m) nVarG) : new HashMap();
                c5.h hVar = (c5.h) this.f1655d;
                hVar.getClass();
                HashMap map = new HashMap();
                for (String str : mapF.keySet()) {
                    HashMap map2 = ((c) hVar.f1060b).f1542c;
                    map.put(str, c.a(str, map2.containsKey(str) ? map2.get(str) : null, mapF.get(str)));
                }
                ((ArrayList) hVar.f1062d).add(new c(strZzf, jA, map));
                return n.f1743n;
            case 1:
                p4.g(2, "getValue", list);
                n nVarG2 = yVar.G((n) list.get(0));
                n nVarG3 = yVar.G((n) list.get(1));
                String strZza = ((j8) this.f1655d).zza(nVarG2.zzf());
                return strZza != null ? new p(strZza) : nVarG3;
            case 2:
                return n.f1743n;
            case 3:
                p4.g(3, this.f1682a, list);
                ((y4) yVar.f2163b).G(yVar, (n) list.get(0)).zzf();
                n nVar2 = (n) list.get(1);
                y4 y4Var2 = (y4) yVar.f2163b;
                n nVarG4 = y4Var2.G(yVar, nVar2);
                if (!(nVarG4 instanceof o)) {
                    throw new IllegalArgumentException("Invalid callback type");
                }
                n nVarG5 = y4Var2.G(yVar, (n) list.get(2));
                if (!(nVarG5 instanceof m)) {
                    throw new IllegalArgumentException("Invalid callback params");
                }
                m mVar = (m) nVarG5;
                HashMap map3 = mVar.f1723a;
                if (!map3.containsKey("type")) {
                    throw new IllegalArgumentException("Undefined rule type");
                }
                String strZzf2 = mVar.zza("type").zzf();
                int iM = map3.containsKey("priority") ? p4.m(mVar.zza("priority").c().doubleValue()) : 1000;
                y4 y4Var3 = (y4) this.f1655d;
                o oVar = (o) nVarG4;
                y4Var3.getClass();
                if ("create".equals(strZzf2)) {
                    treeMap = (TreeMap) y4Var3.f1991c;
                } else {
                    if (!"edit".equals(strZzf2)) {
                        throw new IllegalStateException(q2.x.k("Unknown callback type: ", strZzf2));
                    }
                    treeMap = (TreeMap) y4Var3.f1990b;
                }
                if (treeMap.containsKey(Integer.valueOf(iM))) {
                    iM = ((Integer) treeMap.lastKey()).intValue() + 1;
                }
                treeMap.put(Integer.valueOf(iM), oVar);
                return n.f1743n;
            default:
                try {
                    return a5.b(((zzhk) this.f1655d).call());
                } catch (Exception unused) {
                    return n.f1743n;
                }
        }
    }

    public g6(ta taVar) {
        super("internal.logger");
        this.f1655d = taVar;
        this.f1683b.put("log", new sa(this, false, true));
        this.f1683b.put("silent", new b("silent", 2));
        ((j) this.f1683b.get("silent")).b("log", new sa(this, true, true));
        this.f1683b.put("unmonitored", new b("unmonitored", 3));
        ((j) this.f1683b.get("unmonitored")).b("log", new sa(this, false, false));
    }

    public g6(zzhk zzhkVar) {
        super("internal.appMetadata");
        this.f1655d = zzhkVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g6(j8 j8Var) {
        super("getValue");
        this.f1655d = j8Var;
    }

    public g6(c5.h hVar) {
        super("internal.eventLogger");
        this.f1655d = hVar;
    }
}
