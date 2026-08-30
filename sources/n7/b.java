package n7;

import d7.g;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends o7.a implements a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f4377c = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_state");
    private volatile Object _state;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4378b;

    public b(Object obj) {
        this._state = obj;
    }

    public final void a(Object obj) {
        int i6;
        if (obj == null) {
            obj = o7.a.f4447a;
        }
        synchronized (this) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4377c;
            if (g.a(atomicReferenceFieldUpdater.get(this), obj)) {
                return;
            }
            atomicReferenceFieldUpdater.set(this, obj);
            int i9 = this.f4378b;
            if ((i9 & 1) != 0) {
                this.f4378b = i9 + 2;
                return;
            }
            int i10 = i9 + 1;
            this.f4378b = i10;
            while (true) {
                synchronized (this) {
                    i6 = this.f4378b;
                    if (i6 == i10) {
                        this.f4378b = i10 + 1;
                        return;
                    }
                }
                i10 = i6;
            }
        }
    }
}
