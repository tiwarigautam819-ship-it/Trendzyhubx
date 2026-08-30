package o;

import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f4379e = new HashMap();

    @Override // o.f
    public final c a(Object obj) {
        return (c) this.f4379e.get(obj);
    }

    @Override // o.f
    public final Object b(Object obj) {
        Object objB = super.b(obj);
        this.f4379e.remove(obj);
        return objB;
    }
}
