package e8;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final r f2481a = new r(new byte[0], 0, 0, false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f2482b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicReference[] f2483c;

    static {
        int iHighestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        f2482b = iHighestOneBit;
        AtomicReference[] atomicReferenceArr = new AtomicReference[iHighestOneBit];
        for (int i6 = 0; i6 < iHighestOneBit; i6++) {
            atomicReferenceArr[i6] = new AtomicReference();
        }
        f2483c = atomicReferenceArr;
    }

    public static final void a(r rVar) {
        d7.g.f("segment", rVar);
        if (rVar.f2479f != null || rVar.f2480g != null) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (rVar.f2477d) {
            return;
        }
        AtomicReference atomicReference = f2483c[(int) (Thread.currentThread().getId() & (((long) f2482b) - 1))];
        r rVar2 = f2481a;
        r rVar3 = (r) atomicReference.getAndSet(rVar2);
        if (rVar3 == rVar2) {
            return;
        }
        int i6 = rVar3 != null ? rVar3.f2476c : 0;
        if (i6 >= 65536) {
            atomicReference.set(rVar3);
            return;
        }
        rVar.f2479f = rVar3;
        rVar.f2475b = 0;
        rVar.f2476c = i6 + 8192;
        atomicReference.set(rVar);
    }

    public static final r b() {
        AtomicReference atomicReference = f2483c[(int) (Thread.currentThread().getId() & (((long) f2482b) - 1))];
        r rVar = f2481a;
        r rVar2 = (r) atomicReference.getAndSet(rVar);
        if (rVar2 == rVar) {
            return new r();
        }
        if (rVar2 == null) {
            atomicReference.set(null);
            return new r();
        }
        atomicReference.set(rVar2.f2479f);
        rVar2.f2479f = null;
        rVar2.f2476c = 0;
        return rVar2;
    }
}
