package w4;

import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h extends u.h implements ScheduledFuture {
    public final ScheduledFuture h;

    public h(g gVar) {
        this.h = gVar.b(new o5.c(27, this));
    }

    @Override // u.h
    public final void c() {
        ScheduledFuture scheduledFuture = this.h;
        Object obj = this.f5433a;
        scheduledFuture.cancel((obj instanceof u.a) && ((u.a) obj).f5414a);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Delayed delayed) {
        return this.h.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.h.getDelay(timeUnit);
    }
}
