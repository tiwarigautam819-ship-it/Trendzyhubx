package q7;

import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f4925b = AtomicReferenceFieldUpdater.newUpdater(l.class, Object.class, "lastScheduledTask");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f4926c = AtomicIntegerFieldUpdater.newUpdater(l.class, "producerIndex");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f4927d = AtomicIntegerFieldUpdater.newUpdater(l.class, "consumerIndex");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f4928e = AtomicIntegerFieldUpdater.newUpdater(l.class, "blockingTasksInBuffer");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReferenceArray f4929a = new AtomicReferenceArray(128);
    private volatile int blockingTasksInBuffer;
    private volatile int consumerIndex;
    private volatile Object lastScheduledTask;
    private volatile int producerIndex;

    public final h a() {
        h hVar;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f4927d;
            int i6 = atomicIntegerFieldUpdater.get(this);
            if (i6 - f4926c.get(this) == 0) {
                return null;
            }
            int i9 = i6 & ModuleDescriptor.MODULE_VERSION;
            if (atomicIntegerFieldUpdater.compareAndSet(this, i6, i6 + 1) && (hVar = (h) this.f4929a.getAndSet(i9, null)) != null) {
                if (hVar.f4915b.f2610a == 1) {
                    f4928e.decrementAndGet(this);
                }
                return hVar;
            }
        }
    }

    public final h b(int i6, boolean z5) {
        int i9 = i6 & ModuleDescriptor.MODULE_VERSION;
        AtomicReferenceArray atomicReferenceArray = this.f4929a;
        h hVar = (h) atomicReferenceArray.get(i9);
        if (hVar != null) {
            if ((hVar.f4915b.f2610a == 1) == z5) {
                while (!atomicReferenceArray.compareAndSet(i9, hVar, null)) {
                    if (atomicReferenceArray.get(i9) != hVar) {
                    }
                }
                if (z5) {
                    f4928e.decrementAndGet(this);
                }
                return hVar;
            }
        }
        return null;
    }
}
