package u6;

import c7.p;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends d7.h implements p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k[] f5500b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d7.j f5501c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(k[] kVarArr, d7.j jVar) {
        super(2);
        this.f5500b = kVarArr;
        this.f5501c = jVar;
    }

    @Override // c7.p
    public final Object f(Object obj, Object obj2) {
        d7.g.f("<anonymous parameter 0>", (r6.j) obj);
        d7.j jVar = this.f5501c;
        int i6 = jVar.f2296a;
        jVar.f2296a = i6 + 1;
        this.f5500b[i6] = (i) obj2;
        return r6.j.f5000a;
    }
}
