package l7;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c0 extends n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f3845c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f3846d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public s6.e f3847e;

    public abstract void shutdown();

    public final void v() {
        long j3 = this.f3845c - 4294967296L;
        this.f3845c = j3;
        if (j3 <= 0 && this.f3846d) {
            shutdown();
        }
    }

    public abstract Thread w();

    public final void x(boolean z5) {
        this.f3845c = (z5 ? 4294967296L : 1L) + this.f3845c;
        if (z5) {
            return;
        }
        this.f3846d = true;
    }

    public final boolean y() {
        s6.e eVar = this.f3847e;
        if (eVar == null) {
            return false;
        }
        w wVar = (w) (eVar.isEmpty() ? null : eVar.removeFirst());
        if (wVar == null) {
            return false;
        }
        wVar.run();
        return true;
    }
}
