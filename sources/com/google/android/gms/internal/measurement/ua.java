package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class ua extends j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final o6 f1951c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f1952d;

    public ua(o6 o6Var) {
        super("require");
        this.f1952d = new HashMap();
        this.f1951c = o6Var;
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final n e(com.google.firebase.messaging.y yVar, List list) {
        n nVar;
        p4.g(1, "require", list);
        String strZzf = ((y4) yVar.f2163b).G(yVar, (n) list.get(0)).zzf();
        HashMap map = this.f1952d;
        if (map.containsKey(strZzf)) {
            return (n) map.get(strZzf);
        }
        HashMap map2 = (HashMap) this.f1951c.f1792a;
        if (map2.containsKey(strZzf)) {
            try {
                nVar = (n) ((Callable) map2.get(strZzf)).call();
            } catch (Exception unused) {
                throw new IllegalStateException(q2.x.k("Failed to create API implementation: ", strZzf));
            }
        } else {
            nVar = n.f1743n;
        }
        if (nVar instanceof j) {
            map.put(strZzf, (j) nVar);
        }
        return nVar;
    }
}
