package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class y implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j f1983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.google.firebase.messaging.y f1984b;

    public y(j jVar, com.google.firebase.messaging.y yVar) {
        this.f1983a = jVar;
        this.f1984b = yVar;
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        n nVar = (n) obj;
        n nVar2 = (n) obj2;
        if (nVar instanceof t) {
            return !(nVar2 instanceof t) ? 1 : 0;
        }
        if (nVar2 instanceof t) {
            return -1;
        }
        j jVar = this.f1983a;
        return jVar == null ? nVar.zzf().compareTo(nVar2.zzf()) : (int) p4.a(jVar.e(this.f1984b, Arrays.asList(nVar, nVar2)).c().doubleValue());
    }
}
