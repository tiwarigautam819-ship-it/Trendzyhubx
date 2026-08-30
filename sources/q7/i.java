package q7;

import l7.r;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i extends h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Runnable f4916c;

    public i(Runnable runnable, long j3, f4.j jVar) {
        super(j3, jVar);
        this.f4916c = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f4916c.run();
        } finally {
            this.f4915b.getClass();
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Task[");
        Runnable runnable = this.f4916c;
        sb.append(runnable.getClass().getSimpleName());
        sb.append('@');
        sb.append(r.d(runnable));
        sb.append(", ");
        sb.append(this.f4914a);
        sb.append(", ");
        sb.append(this.f4915b);
        sb.append(']');
        return sb.toString();
    }
}
