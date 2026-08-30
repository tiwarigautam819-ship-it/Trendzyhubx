package l7;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class n0 extends s0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f3871c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n0() {
        super(true);
        boolean z5 = true;
        q(null);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = s0.f3896b;
        f fVar = (f) atomicReferenceFieldUpdater.get(this);
        g gVar = fVar instanceof g ? (g) fVar : null;
        if (gVar == null) {
            z5 = false;
            break;
        }
        s0 s0VarN = gVar.n();
        while (!s0VarN.l()) {
            f fVar2 = (f) atomicReferenceFieldUpdater.get(s0VarN);
            g gVar2 = fVar2 instanceof g ? (g) fVar2 : null;
            if (gVar2 == null) {
                z5 = false;
                break;
            }
            s0VarN = gVar2.n();
        }
        this.f3871c = z5;
    }

    @Override // l7.s0
    public final boolean l() {
        return this.f3871c;
    }
}
