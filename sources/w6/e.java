package w6;

import d7.g;
import d7.l;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import l7.u0;
import l7.y;
import u6.f;
import u6.i;
import u6.k;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class e implements d7.e, f, b, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f5762a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final k f5763b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public transient f f5764c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f5765d;

    public e(f fVar) {
        k context = fVar != null ? fVar.getContext() : null;
        this.f5762a = fVar;
        this.f5763b = context;
        this.f5765d = 2;
    }

    @Override // w6.b
    public final b a() {
        f fVar = this.f5762a;
        if (fVar instanceof b) {
            return (b) fVar;
        }
        return null;
    }

    public abstract f c(f fVar);

    @Override // d7.e
    public final int d() {
        return this.f5765d;
    }

    @Override // u6.f
    public final void e(Object obj) {
        f fVar = this;
        while (true) {
            e eVar = (e) fVar;
            f fVar2 = eVar.f5762a;
            g.c(fVar2);
            try {
                obj = eVar.h(obj);
                if (obj == v6.a.f5635a) {
                    return;
                }
            } catch (Throwable th) {
                obj = k2.e.c(th);
            }
            f fVar3 = eVar.f5764c;
            if (fVar3 != null && fVar3 != eVar) {
                k kVar = eVar.f5763b;
                g.c(kVar);
                i iVarG = kVar.g(u6.g.f5504a);
                g.c(iVarG);
                p7.g gVar = (p7.g) fVar3;
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = p7.g.h;
                while (atomicReferenceFieldUpdater.get(gVar) == p7.a.f4666c) {
                }
                Object obj2 = atomicReferenceFieldUpdater.get(gVar);
                l7.c cVar = obj2 instanceof l7.c ? (l7.c) obj2 : null;
                if (cVar != null) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = l7.c.h;
                    y yVar = (y) atomicReferenceFieldUpdater2.get(cVar);
                    if (yVar != null) {
                        yVar.c();
                        atomicReferenceFieldUpdater2.set(cVar, u0.f3899a);
                    }
                }
            }
            eVar.f5764c = a.f5759a;
            if (!(fVar2 instanceof e)) {
                fVar2.e(obj);
                return;
            }
            fVar = fVar2;
        }
    }

    @Override // u6.f
    public final k getContext() {
        k kVar = this.f5763b;
        g.c(kVar);
        return kVar;
    }

    public abstract Object h(Object obj);

    public final String i() {
        int iIntValue;
        String strC;
        StringBuilder sb = new StringBuilder("Continuation at ");
        c cVar = (c) getClass().getAnnotation(c.class);
        Object name = null;
        str = null;
        str = null;
        str = null;
        String str = null;
        if (cVar != null) {
            int iV = cVar.v();
            if (iV > 1) {
                throw new IllegalStateException(("Debug metadata version mismatch. Expected: 1, got " + iV + ". Please update the Kotlin standard library.").toString());
            }
            try {
                Field declaredField = getClass().getDeclaredField("label");
                declaredField.setAccessible(true);
                Object obj = declaredField.get(this);
                Integer num = obj instanceof Integer ? (Integer) obj : null;
                iIntValue = (num != null ? num.intValue() : 0) - 1;
            } catch (Exception unused) {
                iIntValue = -1;
            }
            int i6 = iIntValue >= 0 ? cVar.l()[iIntValue] : -1;
            a8.i iVar = d.f5761b;
            a8.i iVar2 = d.f5760a;
            if (iVar == null) {
                try {
                    a8.i iVar3 = new a8.i(Class.class.getDeclaredMethod("getModule", null), getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", null), getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", null));
                    d.f5761b = iVar3;
                    iVar = iVar3;
                } catch (Exception unused2) {
                    d.f5761b = iVar2;
                    iVar = iVar2;
                }
            }
            if (iVar != iVar2) {
                Method method = iVar.f112a;
                Object objInvoke = method != null ? method.invoke(getClass(), null) : null;
                if (objInvoke != null) {
                    Method method2 = iVar.f113b;
                    Object objInvoke2 = method2 != null ? method2.invoke(objInvoke, null) : null;
                    if (objInvoke2 != null) {
                        Method method3 = iVar.f114c;
                        Object objInvoke3 = method3 != null ? method3.invoke(objInvoke2, null) : null;
                        if (objInvoke3 instanceof String) {
                            str = (String) objInvoke3;
                        }
                    }
                }
            }
            if (str == null) {
                strC = cVar.c();
            } else {
                strC = str + '/' + cVar.c();
            }
            name = new StackTraceElement(strC, cVar.m(), cVar.f(), i6);
        }
        if (name == null) {
            name = getClass().getName();
        }
        sb.append(name);
        return sb.toString();
    }

    public final String toString() {
        if (this.f5762a != null) {
            return i();
        }
        l.f2299a.getClass();
        String string = getClass().getGenericInterfaces()[0].toString();
        if (string.startsWith("kotlin.jvm.functions.")) {
            string = string.substring(21);
        }
        g.e("renderLambdaToString(...)", string);
        return string;
    }
}
