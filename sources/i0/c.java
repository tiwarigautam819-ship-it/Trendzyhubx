package i0;

import g.j;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f3078c;

    public c() {
        super(12, 3);
        this.f3078c = new Object();
    }

    @Override // g.j
    public final Object a() {
        Object objA;
        synchronized (this.f3078c) {
            objA = super.a();
        }
        return objA;
    }

    @Override // g.j
    public final boolean d(Object obj) {
        boolean zD;
        synchronized (this.f3078c) {
            zD = super.d(obj);
        }
        return zD;
    }
}
