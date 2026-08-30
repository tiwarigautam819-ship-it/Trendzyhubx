package v4;

import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m implements g5.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile Set f5616a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile Set f5617b;

    public final synchronized void a() {
        try {
            Iterator it = this.f5616a.iterator();
            while (it.hasNext()) {
                this.f5617b.add(((g5.a) it.next()).get());
            }
            this.f5616a = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // g5.a
    public final Object get() {
        if (this.f5617b == null) {
            synchronized (this) {
                try {
                    if (this.f5617b == null) {
                        this.f5617b = Collections.newSetFromMap(new ConcurrentHashMap());
                        a();
                    }
                } finally {
                }
            }
        }
        return Collections.unmodifiableSet(this.f5617b);
    }
}
