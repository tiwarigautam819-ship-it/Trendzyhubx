package androidx.lifecycle;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class p0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w0.a f731a = new w0.a();

    public final void a() {
        w0.a aVar = this.f731a;
        if (aVar != null && !aVar.f5716d) {
            aVar.f5716d = true;
            synchronized (aVar.f5713a) {
                try {
                    Iterator it = aVar.f5714b.values().iterator();
                    while (it.hasNext()) {
                        w0.a.a((AutoCloseable) it.next());
                    }
                    Iterator it2 = aVar.f5715c.iterator();
                    while (it2.hasNext()) {
                        w0.a.a((AutoCloseable) it2.next());
                    }
                    aVar.f5715c.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        b();
    }

    public void b() {
    }
}
