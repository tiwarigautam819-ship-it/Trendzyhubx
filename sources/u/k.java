package u;

import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k implements s4.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f5440a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final j f5441b = new j(this);

    public k(i iVar) {
        this.f5440a = new WeakReference(iVar);
    }

    @Override // s4.c
    public final void a(s4.b bVar, Executor executor) {
        this.f5441b.a(bVar, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z5) {
        i iVar = (i) this.f5440a.get();
        boolean zCancel = this.f5441b.cancel(z5);
        if (zCancel && iVar != null) {
            iVar.f5436a = null;
            iVar.f5437b = null;
            iVar.f5438c.j(null);
        }
        return zCancel;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.f5441b.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f5441b.f5433a instanceof a;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f5441b.isDone();
    }

    public final String toString() {
        return this.f5441b.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j3, TimeUnit timeUnit) {
        return this.f5441b.get(j3, timeUnit);
    }
}
