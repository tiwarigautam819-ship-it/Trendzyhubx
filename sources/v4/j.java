package v4;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j implements d5.d, d5.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f5610a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayDeque f5611b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final w4.j f5612c;

    public j() {
        w4.j jVar = w4.j.f5753a;
        this.f5610a = new HashMap();
        this.f5611b = new ArrayDeque();
        this.f5612c = jVar;
    }

    public final synchronized void a(Executor executor, d5.b bVar) {
        try {
            executor.getClass();
            if (!this.f5610a.containsKey(t4.b.class)) {
                this.f5610a.put(t4.b.class, new ConcurrentHashMap());
            }
            ((ConcurrentHashMap) this.f5610a.get(t4.b.class)).put(bVar, executor);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b(com.getcapacitor.n nVar) {
        nVar.getClass();
        if (this.f5610a.containsKey(t4.b.class)) {
            ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.f5610a.get(t4.b.class);
            concurrentHashMap.remove(nVar);
            if (concurrentHashMap.isEmpty()) {
                this.f5610a.remove(t4.b.class);
            }
        }
    }
}
