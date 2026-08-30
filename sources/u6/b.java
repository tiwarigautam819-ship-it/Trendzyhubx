package u6;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k[] f5496a;

    public b(k[] kVarArr) {
        this.f5496a = kVarArr;
    }

    private final Object readResolve() {
        k[] kVarArr = this.f5496a;
        k kVarS = l.f5505a;
        for (k kVar : kVarArr) {
            kVarS = kVarS.s(kVar);
        }
        return kVarS;
    }
}
