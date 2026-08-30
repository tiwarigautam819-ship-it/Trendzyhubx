package j0;

import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Runnable f3291a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CopyOnWriteArrayList f3292b = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f3293c = new HashMap();

    public l(Runnable runnable) {
        this.f3291a = runnable;
    }

    public final boolean a() {
        Iterator it = this.f3292b.iterator();
        while (it.hasNext()) {
            if (((androidx.fragment.app.q0) ((m) it.next())).f603a.p()) {
                return true;
            }
        }
        return false;
    }

    public final void b(m mVar) {
        this.f3292b.remove(mVar);
        k kVar = (k) this.f3293c.remove(mVar);
        if (kVar != null) {
            kVar.f3284a.b(kVar.f3285b);
            kVar.f3285b = null;
        }
        this.f3291a.run();
    }
}
