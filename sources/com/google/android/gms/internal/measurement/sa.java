package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class sa extends j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f1903c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f1904d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ g6 f1905e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sa(g6 g6Var, boolean z5, boolean z8) {
        super("log");
        this.f1905e = g6Var;
        this.f1903c = z5;
        this.f1904d = z8;
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final n e(com.google.firebase.messaging.y yVar, List list) {
        p4.n(1, "log", list);
        int size = list.size();
        ra raVar = ra.f1891c;
        t tVar = n.f1743n;
        g6 g6Var = this.f1905e;
        if (size == 1) {
            ((ta) g6Var.f1655d).zza(raVar, ((y4) yVar.f2163b).G(yVar, (n) list.get(0)).zzf(), Collections.EMPTY_LIST, this.f1903c, this.f1904d);
            return tVar;
        }
        n nVar = (n) list.get(0);
        y4 y4Var = (y4) yVar.f2163b;
        y4 y4Var2 = (y4) yVar.f2163b;
        int iM = p4.m(y4Var.G(yVar, nVar).c().doubleValue());
        if (iM == 2) {
            raVar = ra.f1892d;
        } else if (iM == 3) {
            raVar = ra.f1889a;
        } else if (iM == 5) {
            raVar = ra.f1893e;
        } else if (iM == 6) {
            raVar = ra.f1890b;
        }
        ra raVar2 = raVar;
        String strZzf = y4Var2.G(yVar, (n) list.get(1)).zzf();
        if (list.size() == 2) {
            ((ta) g6Var.f1655d).zza(raVar2, strZzf, Collections.EMPTY_LIST, this.f1903c, this.f1904d);
            return tVar;
        }
        ArrayList arrayList = new ArrayList();
        for (int i6 = 2; i6 < Math.min(list.size(), 5); i6++) {
            arrayList.add(y4Var2.G(yVar, (n) list.get(i6)).zzf());
        }
        ((ta) g6Var.f1655d).zza(raVar2, strZzf, arrayList, this.f1903c, this.f1904d);
        return tVar;
    }
}
