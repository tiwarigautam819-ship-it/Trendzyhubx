package l7;

import androidx.fragment.app.m1;
import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final n6.d f3882a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final n6.d f3883b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final n6.d f3884c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final n6.d f3885d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final n6.d f3886e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final n6.d f3887f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final z f3888g = new z(false);
    public static final z h = new z(true);

    static {
        int i6 = 2;
        f3882a = new n6.d("CLOSED_EMPTY", i6);
        f3883b = new n6.d("COMPLETING_ALREADY", i6);
        f3884c = new n6.d("COMPLETING_WAITING_CHILDREN", i6);
        f3885d = new n6.d("COMPLETING_RETRY", i6);
        f3886e = new n6.d("TOO_LATE_TO_CANCEL", i6);
        f3887f = new n6.d("SEALED", i6);
    }

    public static final p7.d a(u6.k kVar) {
        if (kVar.g(o.f3873b) == null) {
            kVar = kVar.s(new n0());
        }
        return new p7.d(kVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static u b(p7.d dVar, c7.p pVar) {
        u6.k kVarS;
        u6.k kVar = dVar.f4671a;
        Boolean bool = Boolean.FALSE;
        boolean zBooleanValue = ((Boolean) kVar.c(bool, k.f3864d)).booleanValue();
        boolean zBooleanValue2 = bool.booleanValue();
        int i6 = 2;
        u6.l lVar = u6.l.f5505a;
        if (zBooleanValue || zBooleanValue2) {
            u6.k kVar2 = (u6.k) kVar.c(lVar, new k(i6, 2));
            Object objC = lVar;
            if (zBooleanValue2) {
                objC = lVar.c(lVar, k.f3863c);
            }
            kVarS = kVar2.s((u6.k) objC);
        } else {
            kVarS = kVar.s(lVar);
        }
        q7.d dVar2 = x.f3901a;
        if (kVarS != dVar2 && kVarS.g(u6.g.f5504a) == null) {
            kVarS = kVarS.s(dVar2);
        }
        u uVar = new u(kVarS, true);
        int iE = m1.e(1);
        if (iE == 0) {
            try {
                p7.a.c(a2.c.g(((w6.e) pVar).c(uVar)));
                return uVar;
            } finally {
                uVar.e(k2.e.c(th));
            }
        }
        if (iE != 1) {
            if (iE == 2) {
                a2.c.g(((w6.e) pVar).c(uVar)).e(r6.j.f5000a);
            } else {
                if (iE != 3) {
                    throw new androidx.fragment.app.a0();
                }
                try {
                    u6.k kVar3 = uVar.f3898c;
                    Object objF = p7.a.f(kVar3, null);
                    try {
                        w6.e eVar = (w6.e) pVar;
                        if (!d7.o.b(2, eVar)) {
                            d7.o.c("kotlin.jvm.functions.Function2", eVar);
                            throw null;
                        }
                        Object objF2 = pVar.f(uVar, uVar);
                        if (objF2 != v6.a.f5635a) {
                            uVar.e(objF2);
                            return uVar;
                        }
                    } finally {
                        p7.a.b(kVar3, objF);
                    }
                } catch (Throwable th) {
                    return uVar;
                }
            }
        }
        return uVar;
    }

    public static final void c(u6.k kVar, CancellationException cancellationException) {
        k0 k0Var = (k0) kVar.g(o.f3873b);
        if (k0Var != null) {
            ((s0) k0Var).d(cancellationException);
        }
    }

    public static final String d(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static final void e(u6.k kVar, Throwable th) {
        try {
            m7.b bVar = (m7.b) kVar.g(o.f3872a);
            if (bVar != null) {
                bVar.t(th);
            } else {
                p7.a.a(kVar, th);
            }
        } catch (Throwable th2) {
            if (th != th2) {
                RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                i2.t.a(runtimeException, th);
                th = runtimeException;
            }
            p7.a.a(kVar, th);
        }
    }

    public static final void g(c cVar, u6.f fVar, boolean z5) {
        Object obj = c.f3842g.get(cVar);
        Throwable thD = cVar.d(obj);
        Object objC = thD != null ? k2.e.c(thD) : cVar.f(obj);
        if (!z5) {
            fVar.e(objC);
            return;
        }
        d7.g.d("null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>", fVar);
        p7.g gVar = (p7.g) fVar;
        w6.e eVar = gVar.f4675e;
        Object obj2 = gVar.f4677g;
        u6.k kVar = eVar.f5763b;
        d7.g.c(kVar);
        Object objF = p7.a.f(kVar, obj2);
        if (objF != p7.a.f4668e) {
            i(eVar, kVar);
        }
        try {
            eVar.e(objC);
        } finally {
            p7.a.b(kVar, objF);
        }
    }

    public static final String h(u6.f fVar) {
        Object objC;
        if (fVar instanceof p7.g) {
            return fVar.toString();
        }
        try {
            objC = fVar + '@' + d(fVar);
        } catch (Throwable th) {
            objC = k2.e.c(th);
        }
        if (r6.f.a(objC) != null) {
            objC = fVar.getClass().getName() + '@' + d(fVar);
        }
        return (String) objC;
    }

    public static final void i(u6.f fVar, u6.k kVar) {
        if ((fVar instanceof w6.b) && kVar.g(z0.f3906a) != null) {
            w6.b bVarA = (w6.b) fVar;
            do {
                bVarA = bVarA.a();
            } while (bVarA != null);
        }
    }
}
