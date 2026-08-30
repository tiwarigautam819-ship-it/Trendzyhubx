package e8;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends y {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public y f2455e;

    public k(y yVar) {
        d7.g.f("delegate", yVar);
        this.f2455e = yVar;
    }

    @Override // e8.y
    public final y a() {
        return this.f2455e.a();
    }

    @Override // e8.y
    public final y b() {
        return this.f2455e.b();
    }

    @Override // e8.y
    public final long c() {
        return this.f2455e.c();
    }

    @Override // e8.y
    public final y d(long j3) {
        return this.f2455e.d(j3);
    }

    @Override // e8.y
    public final boolean e() {
        return this.f2455e.e();
    }

    @Override // e8.y
    public final void f() throws InterruptedIOException {
        this.f2455e.f();
    }

    @Override // e8.y
    public final y g(long j3) {
        d7.g.f("unit", TimeUnit.MILLISECONDS);
        return this.f2455e.g(j3);
    }
}
