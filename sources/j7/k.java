package j7;

import c7.l;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e f3421a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d7.h f3422b;

    /* JADX WARN: Multi-variable type inference failed */
    public k(e eVar, l lVar) {
        this.f3421a = eVar;
        this.f3422b = (d7.h) lVar;
    }

    @Override // j7.e
    public final Iterator iterator() {
        return new j(this);
    }
}
