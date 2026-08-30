package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j7 extends m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c5.h f1686b;

    public j7(c5.h hVar) {
        this.f1686b = hVar;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.google.android.gms.internal.measurement.m, com.google.android.gms.internal.measurement.n
    public final n d(String str, com.google.firebase.messaging.y yVar, ArrayList arrayList) {
        byte b3 = -1;
        switch (str.hashCode()) {
            case 21624207:
                if (str.equals("getEventName")) {
                    b3 = 0;
                }
                break;
            case 45521504:
                if (str.equals("getTimestamp")) {
                    b3 = 1;
                }
                break;
            case 146575578:
                if (str.equals("getParamValue")) {
                    b3 = 2;
                }
                break;
            case 700587132:
                if (str.equals("getParams")) {
                    b3 = 3;
                }
                break;
            case 920706790:
                if (str.equals("setParamValue")) {
                    b3 = 4;
                }
                break;
            case 1570616835:
                if (str.equals("setEventName")) {
                    b3 = 5;
                }
                break;
        }
        c5.h hVar = this.f1686b;
        switch (b3) {
            case 0:
                p4.g(0, "getEventName", arrayList);
                return new p(((c) hVar.f1061c).f1540a);
            case 1:
                p4.g(0, "getTimestamp", arrayList);
                return new g(Double.valueOf(((c) hVar.f1061c).f1541b));
            case 2:
                p4.g(1, "getParamValue", arrayList);
                String strZzf = ((y4) yVar.f2163b).G(yVar, (n) arrayList.get(0)).zzf();
                HashMap map = ((c) hVar.f1061c).f1542c;
                return a5.b(map.containsKey(strZzf) ? map.get(strZzf) : null);
            case 3:
                p4.g(0, "getParams", arrayList);
                HashMap map2 = ((c) hVar.f1061c).f1542c;
                m mVar = new m();
                for (String str2 : map2.keySet()) {
                    mVar.b(str2, a5.b(map2.get(str2)));
                }
                return mVar;
            case 4:
                p4.g(2, "setParamValue", arrayList);
                String strZzf2 = ((y4) yVar.f2163b).G(yVar, (n) arrayList.get(0)).zzf();
                n nVarG = ((y4) yVar.f2163b).G(yVar, (n) arrayList.get(1));
                c cVar = (c) hVar.f1061c;
                Object objE = p4.e(nVarG);
                HashMap map3 = cVar.f1542c;
                if (objE == null) {
                    map3.remove(strZzf2);
                    return nVarG;
                }
                map3.put(strZzf2, c.a(strZzf2, map3.get(strZzf2), objE));
                return nVarG;
            case 5:
                p4.g(1, "setEventName", arrayList);
                n nVarG2 = ((y4) yVar.f2163b).G(yVar, (n) arrayList.get(0));
                if (n.f1743n.equals(nVarG2) || n.f1744o.equals(nVarG2)) {
                    throw new IllegalArgumentException("Illegal event name");
                }
                ((c) hVar.f1061c).f1540a = nVarG2.zzf();
                return new p(nVarG2.zzf());
            default:
                return super.d(str, yVar, arrayList);
        }
    }
}
