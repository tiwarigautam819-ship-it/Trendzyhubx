package t5;

import q5.x;
import q5.y;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class p implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5377a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Class f5378b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ x f5379c;

    public /* synthetic */ p(Class cls, x xVar, int i6) {
        this.f5377a = i6;
        this.f5378b = cls;
        this.f5379c = xVar;
    }

    @Override // q5.y
    public final x a(q5.l lVar, w5.a aVar) {
        switch (this.f5377a) {
            case 0:
                if (aVar.f5756a == this.f5378b) {
                    return this.f5379c;
                }
                return null;
            default:
                if (this.f5378b.isAssignableFrom(aVar.f5756a)) {
                    return new d(this);
                }
                return null;
        }
    }

    public final String toString() {
        switch (this.f5377a) {
            case 0:
                return "Factory[type=" + this.f5378b.getName() + ",adapter=" + this.f5379c + "]";
            default:
                return "Factory[typeHierarchy=" + this.f5378b.getName() + ",adapter=" + this.f5379c + "]";
        }
    }
}
