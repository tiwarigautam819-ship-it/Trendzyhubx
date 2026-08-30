package p7;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f4689e = AtomicReferenceFieldUpdater.newUpdater(m.class, Object.class, "_next");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final AtomicLongFieldUpdater f4690f = AtomicLongFieldUpdater.newUpdater(m.class, "_state");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final n6.d f4691g = new n6.d("REMOVE_FROZEN", 2);
    private volatile Object _next;
    private volatile long _state;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4692a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f4693b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4694c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AtomicReferenceArray f4695d;

    public m(int i6, boolean z5) {
        this.f4692a = i6;
        this.f4693b = z5;
        int i9 = i6 - 1;
        this.f4694c = i9;
        this.f4695d = new AtomicReferenceArray(i6);
        if (i9 > 1073741823) {
            throw new IllegalStateException("Check failed.");
        }
        if ((i6 & i9) != 0) {
            throw new IllegalStateException("Check failed.");
        }
    }

    public final int a(Object obj) {
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f4690f;
            long j3 = atomicLongFieldUpdater.get(this);
            if ((3458764513820540928L & j3) != 0) {
                return (2305843009213693952L & j3) != 0 ? 2 : 1;
            }
            int i6 = (int) (1073741823 & j3);
            int i9 = (int) ((1152921503533105152L & j3) >> 30);
            int i10 = this.f4694c;
            if (((i9 + 2) & i10) == (i6 & i10)) {
                return 1;
            }
            boolean z5 = this.f4693b;
            AtomicReferenceArray atomicReferenceArray = this.f4695d;
            if (z5 || atomicReferenceArray.get(i9 & i10) == null) {
                if (f4690f.compareAndSet(this, j3, ((-1152921503533105153L) & j3) | (((long) ((i9 + 1) & 1073741823)) << 30))) {
                    atomicReferenceArray.set(i9 & i10, obj);
                    m mVarC = this;
                    while ((atomicLongFieldUpdater.get(mVarC) & 1152921504606846976L) != 0) {
                        mVarC = mVarC.c();
                        AtomicReferenceArray atomicReferenceArray2 = mVarC.f4695d;
                        int i11 = mVarC.f4694c & i9;
                        Object obj2 = atomicReferenceArray2.get(i11);
                        if ((obj2 instanceof l) && ((l) obj2).f4688a == i9) {
                            atomicReferenceArray2.set(i11, obj);
                        } else {
                            mVarC = null;
                        }
                        if (mVarC == null) {
                            return 0;
                        }
                    }
                    return 0;
                }
            } else {
                int i12 = this.f4692a;
                if (i12 < 1024 || ((i9 - i6) & 1073741823) > (i12 >> 1)) {
                    return 1;
                }
            }
        }
    }

    public final boolean b() {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j3;
        do {
            atomicLongFieldUpdater = f4690f;
            j3 = atomicLongFieldUpdater.get(this);
            if ((j3 & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j3) != 0) {
                return false;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j3, 2305843009213693952L | j3));
        return true;
    }

    public final m c() {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j3;
        m mVar;
        while (true) {
            atomicLongFieldUpdater = f4690f;
            j3 = atomicLongFieldUpdater.get(this);
            if ((j3 & 1152921504606846976L) != 0) {
                mVar = this;
                break;
            }
            long j8 = 1152921504606846976L | j3;
            mVar = this;
            if (atomicLongFieldUpdater.compareAndSet(mVar, j3, j8)) {
                j3 = j8;
                break;
            }
        }
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4689e;
            m mVar2 = (m) atomicReferenceFieldUpdater.get(this);
            if (mVar2 != null) {
                return mVar2;
            }
            m mVar3 = new m(mVar.f4692a * 2, mVar.f4693b);
            int i6 = (int) (1073741823 & j3);
            int i9 = (int) ((1152921503533105152L & j3) >> 30);
            while (true) {
                int i10 = mVar.f4694c;
                int i11 = i6 & i10;
                if (i11 == (i10 & i9)) {
                    break;
                }
                Object lVar = mVar.f4695d.get(i11);
                if (lVar == null) {
                    lVar = new l(i6);
                }
                mVar3.f4695d.set(mVar3.f4694c & i6, lVar);
                i6++;
            }
            atomicLongFieldUpdater.set(mVar3, (-1152921504606846977L) & j3);
            while (!atomicReferenceFieldUpdater.compareAndSet(this, null, mVar3) && atomicReferenceFieldUpdater.get(this) == null) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0041, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object d() {
        /*
            r30 = this;
            r1 = r30
        L2:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r6 = p7.m.f4690f
            long r2 = r6.get(r1)
            r7 = 1152921504606846976(0x1000000000000000, double:1.2882297539194267E-231)
            long r4 = r2 & r7
            r9 = 0
            int r0 = (r4 > r9 ? 1 : (r4 == r9 ? 0 : -1))
            if (r0 == 0) goto L15
            n6.d r0 = p7.m.f4691g
            return r0
        L15:
            r11 = 1073741823(0x3fffffff, double:5.304989472E-315)
            long r4 = r2 & r11
            int r0 = (int) r4
            r4 = 1152921503533105152(0xfffffffc0000000, double:1.2882296003504729E-231)
            long r4 = r4 & r2
            r13 = 30
            long r4 = r4 >> r13
            int r4 = (int) r4
            int r5 = r1.f4694c
            r4 = r4 & r5
            r13 = r0 & r5
            r14 = 0
            if (r4 != r13) goto L2e
            goto L41
        L2e:
            java.util.concurrent.atomic.AtomicReferenceArray r15 = r1.f4695d
            java.lang.Object r4 = r15.get(r13)
            boolean r5 = r1.f4693b
            if (r4 != 0) goto L3b
            if (r5 == 0) goto L2
            goto L41
        L3b:
            r16 = r7
            boolean r7 = r4 instanceof p7.l
            if (r7 == 0) goto L42
        L41:
            return r14
        L42:
            int r0 = r0 + 1
            r7 = 1073741823(0x3fffffff, float:1.9999999)
            r0 = r0 & r7
            r7 = -1073741824(0xffffffffc0000000, double:NaN)
            long r18 = r2 & r7
            r20 = r7
            long r7 = (long) r0
            long r18 = r18 | r7
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = p7.m.f4690f
            r28 = r18
            r18 = r4
            r19 = r5
            r4 = r28
            boolean r0 = r0.compareAndSet(r1, r2, r4)
            if (r0 == 0) goto L66
            r15.set(r13, r14)
            return r18
        L66:
            r1 = r30
            if (r19 == 0) goto L2
        L6a:
            long r24 = r6.get(r1)
            long r2 = r24 & r11
            int r0 = (int) r2
            long r2 = r24 & r16
            int r2 = (r2 > r9 ? 1 : (r2 == r9 ? 0 : -1))
            if (r2 == 0) goto L7d
            p7.m r0 = r1.c()
            r1 = r0
            goto L96
        L7d:
            long r2 = r24 & r20
            long r26 = r2 | r7
            java.util.concurrent.atomic.AtomicLongFieldUpdater r22 = p7.m.f4690f
            r23 = r1
            boolean r1 = r22.compareAndSet(r23, r24, r26)
            r2 = r23
            if (r1 == 0) goto L99
            java.util.concurrent.atomic.AtomicReferenceArray r1 = r2.f4695d
            int r2 = r2.f4694c
            r0 = r0 & r2
            r1.set(r0, r14)
            r1 = r14
        L96:
            if (r1 != 0) goto L6a
            return r18
        L99:
            r1 = r2
            goto L6a
        */
        throw new UnsupportedOperationException("Method not decompiled: p7.m.d():java.lang.Object");
    }
}
