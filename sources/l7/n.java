package l7;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class n extends u6.a implements u6.h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final m f3870b = new m(u6.g.f5504a, l.f3866b);

    public n() {
        super(u6.g.f5504a);
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [c7.l, d7.h] */
    @Override // u6.a, u6.k
    public final u6.i g(u6.j jVar) {
        u6.i iVar;
        d7.g.f("key", jVar);
        if (!(jVar instanceof m)) {
            if (u6.g.f5504a == jVar) {
                return this;
            }
            return null;
        }
        m mVar = (m) jVar;
        u6.j jVar2 = this.f5495a;
        if ((jVar2 == mVar || mVar.f3869b == jVar2) && (iVar = (u6.i) mVar.f3868a.g(this)) != null) {
            return iVar;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001d, code lost:
    
        if (((u6.i) r3.f3868a.g(r2)) == null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0022, code lost:
    
        if (u6.g.f5504a == r3) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0026, code lost:
    
        return u6.l.f5505a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0027, code lost:
    
        return r2;
     */
    /* JADX WARN: Type inference failed for: r3v3, types: [c7.l, d7.h] */
    @Override // u6.a, u6.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final u6.k o(u6.j r3) {
        /*
            r2 = this;
            java.lang.String r0 = "key"
            d7.g.f(r0, r3)
            boolean r0 = r3 instanceof l7.m
            if (r0 == 0) goto L20
            l7.m r3 = (l7.m) r3
            u6.j r0 = r2.f5495a
            if (r0 == r3) goto L15
            u6.j r1 = r3.f3869b
            if (r1 != r0) goto L14
            goto L15
        L14:
            return r2
        L15:
            d7.h r3 = r3.f3868a
            java.lang.Object r3 = r3.g(r2)
            u6.i r3 = (u6.i) r3
            if (r3 == 0) goto L27
            goto L24
        L20:
            u6.g r0 = u6.g.f5504a
            if (r0 != r3) goto L27
        L24:
            u6.l r3 = u6.l.f5505a
            return r3
        L27:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: l7.n.o(u6.j):u6.k");
    }

    public abstract void t(u6.k kVar, Runnable runnable);

    public String toString() {
        return getClass().getSimpleName() + '@' + r.d(this);
    }

    public boolean u() {
        return !(this instanceof y0);
    }
}
