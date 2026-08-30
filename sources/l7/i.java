package l7;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f3858b = AtomicIntegerFieldUpdater.newUpdater(i.class, "_handled");
    private volatile int _handled = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Throwable f3859a;

    public i(Throwable th) {
        this.f3859a = th;
    }

    public final String toString() {
        return getClass().getSimpleName() + '[' + this.f3859a + ']';
    }
}
