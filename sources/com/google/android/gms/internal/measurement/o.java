package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o extends j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f1770c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f1771d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.google.firebase.messaging.y f1772e;

    public o(o oVar) {
        super(oVar.f1682a);
        ArrayList arrayList = new ArrayList(oVar.f1770c.size());
        this.f1770c = arrayList;
        arrayList.addAll(oVar.f1770c);
        ArrayList arrayList2 = new ArrayList(oVar.f1771d.size());
        this.f1771d = arrayList2;
        arrayList2.addAll(oVar.f1771d);
        this.f1772e = oVar.f1772e;
    }

    @Override // com.google.android.gms.internal.measurement.j, com.google.android.gms.internal.measurement.n
    public final n a() {
        return new o(this);
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final n e(com.google.firebase.messaging.y yVar, List list) {
        t tVar;
        com.google.firebase.messaging.y yVarJ = this.f1772e.J();
        y4 y4Var = (y4) yVarJ.f2163b;
        int i6 = 0;
        int i9 = 0;
        while (true) {
            ArrayList arrayList = this.f1770c;
            int size = arrayList.size();
            tVar = n.f1743n;
            if (i9 >= size) {
                break;
            }
            if (i9 < list.size()) {
                yVarJ.K((String) arrayList.get(i9), ((y4) yVar.f2163b).G(yVar, (n) list.get(i9)));
            } else {
                yVarJ.K((String) arrayList.get(i9), tVar);
            }
            i9++;
        }
        ArrayList arrayList2 = this.f1771d;
        int size2 = arrayList2.size();
        while (i6 < size2) {
            Object obj = arrayList2.get(i6);
            i6++;
            n nVar = (n) obj;
            n nVarG = y4Var.G(yVarJ, nVar);
            if (nVarG instanceof q) {
                nVarG = y4Var.G(yVarJ, nVar);
            }
            if (nVarG instanceof h) {
                return ((h) nVarG).f1665a;
            }
        }
        return tVar;
    }

    public o(String str, ArrayList arrayList, List list, com.google.firebase.messaging.y yVar) {
        super(str);
        this.f1770c = new ArrayList();
        this.f1772e = yVar;
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            int i6 = 0;
            while (i6 < size) {
                Object obj = arrayList.get(i6);
                i6++;
                this.f1770c.add(((n) obj).zzf());
            }
        }
        this.f1771d = new ArrayList(list);
    }
}
