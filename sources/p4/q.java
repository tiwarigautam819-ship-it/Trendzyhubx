package p4;

import com.google.android.gms.common.internal.d0;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f4657a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p f4658b = new p();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4659c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile boolean f4660d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f4661e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Exception f4662f;

    @Override // p4.i
    public final q a(Executor executor, d dVar) {
        this.f4658b.d(new n(executor, dVar));
        p();
        return this;
    }

    @Override // p4.i
    public final q b(Executor executor, e eVar) {
        this.f4658b.d(new n(executor, eVar));
        p();
        return this;
    }

    @Override // p4.i
    public final q c(Executor executor, f fVar) {
        this.f4658b.d(new n(executor, fVar));
        p();
        return this;
    }

    @Override // p4.i
    public final Exception d() {
        Exception exc;
        synchronized (this.f4657a) {
            exc = this.f4662f;
        }
        return exc;
    }

    @Override // p4.i
    public final Object e() {
        Object obj;
        synchronized (this.f4657a) {
            try {
                d0.j("Task is not yet complete", this.f4659c);
                if (this.f4660d) {
                    throw new CancellationException("Task is already canceled.");
                }
                Exception exc = this.f4662f;
                if (exc != null) {
                    throw new g(exc);
                }
                obj = this.f4661e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    @Override // p4.i
    public final boolean f() {
        boolean z5;
        synchronized (this.f4657a) {
            z5 = this.f4659c;
        }
        return z5;
    }

    @Override // p4.i
    public final boolean g() {
        boolean z5;
        synchronized (this.f4657a) {
            try {
                z5 = false;
                if (this.f4659c && !this.f4660d && this.f4662f == null) {
                    z5 = true;
                }
            } finally {
            }
        }
        return z5;
    }

    public final q h(d dVar) {
        this.f4658b.d(new n(k.f4642a, dVar));
        p();
        return this;
    }

    public final q i(Executor executor, a aVar) {
        q qVar = new q();
        this.f4658b.d(new m(executor, aVar, qVar, 0));
        p();
        return qVar;
    }

    public final q j(Executor executor, a aVar) {
        q qVar = new q();
        this.f4658b.d(new m(executor, aVar, qVar, 1));
        p();
        return qVar;
    }

    public final q k(Executor executor, h hVar) {
        q qVar = new q();
        this.f4658b.d(new n(executor, hVar, qVar));
        p();
        return qVar;
    }

    public final void l(Exception exc) {
        d0.i("Exception must not be null", exc);
        synchronized (this.f4657a) {
            o();
            this.f4659c = true;
            this.f4662f = exc;
        }
        this.f4658b.e(this);
    }

    public final void m(Object obj) {
        synchronized (this.f4657a) {
            o();
            this.f4659c = true;
            this.f4661e = obj;
        }
        this.f4658b.e(this);
    }

    public final void n() {
        synchronized (this.f4657a) {
            try {
                if (this.f4659c) {
                    return;
                }
                this.f4659c = true;
                this.f4660d = true;
                this.f4658b.e(this);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void o() {
        if (this.f4659c) {
            int i6 = b.f4640a;
            if (!f()) {
                throw new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
            }
            Exception excD = d();
        }
    }

    public final void p() {
        synchronized (this.f4657a) {
            try {
                if (this.f4659c) {
                    this.f4658b.e(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
