package t5;

import q5.x;
import q5.y;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Class f5380a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Class f5381b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ x f5382c;

    public q(Class cls, Class cls2, x xVar) {
        this.f5380a = cls;
        this.f5381b = cls2;
        this.f5382c = xVar;
    }

    @Override // q5.y
    public final x a(q5.l lVar, w5.a aVar) {
        Class cls = aVar.f5756a;
        if (cls == this.f5380a || cls == this.f5381b) {
            return this.f5382c;
        }
        return null;
    }

    public final String toString() {
        return "Factory[type=" + this.f5381b.getName() + "+" + this.f5380a.getName() + ",adapter=" + this.f5382c + "]";
    }
}
