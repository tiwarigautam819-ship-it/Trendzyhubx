package l7;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f3848c = AtomicIntegerFieldUpdater.newUpdater(d.class, "_resumed");
    private volatile int _resumed;

    public d(c cVar, Throwable th) {
        super(th);
        this._resumed = 0;
    }
}
