package p7;

import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q {
    private volatile AtomicReferenceArray<Object> array;

    public q(int i6) {
        this.array = new AtomicReferenceArray<>(i6);
    }

    public final int a() {
        return this.array.length();
    }

    public final Object b(int i6) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.array;
        if (i6 < atomicReferenceArray.length()) {
            return atomicReferenceArray.get(i6);
        }
        return null;
    }

    public final void c(int i6, q7.a aVar) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.array;
        int length = atomicReferenceArray.length();
        if (i6 < length) {
            atomicReferenceArray.set(i6, aVar);
            return;
        }
        int i9 = i6 + 1;
        int i10 = length * 2;
        if (i9 < i10) {
            i9 = i10;
        }
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(i9);
        for (int i11 = 0; i11 < length; i11++) {
            atomicReferenceArray2.set(i11, atomicReferenceArray.get(i11));
        }
        atomicReferenceArray2.set(i6, aVar);
        this.array = atomicReferenceArray2;
    }
}
