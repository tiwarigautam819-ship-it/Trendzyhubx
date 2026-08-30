package androidx.lifecycle;

import android.os.Looper;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class v extends o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f739a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o.a f740b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public n f741c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final WeakReference f742d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f743e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f744f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f745g;
    public final ArrayList h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final n7.b f746i;

    public v(t tVar) {
        new AtomicReference(null);
        this.f739a = true;
        this.f740b = new o.a();
        n nVar = n.f719b;
        this.f741c = nVar;
        this.h = new ArrayList();
        this.f742d = new WeakReference(tVar);
        this.f746i = new n7.b(nVar);
    }

    @Override // androidx.lifecycle.o
    public final void a(s sVar) {
        r fVar;
        Object obj;
        t tVar;
        d("addObserver");
        n nVar = this.f741c;
        n nVar2 = n.f718a;
        if (nVar != nVar2) {
            nVar2 = n.f719b;
        }
        u uVar = new u();
        HashMap map = w.f747a;
        boolean z5 = sVar instanceof r;
        boolean z8 = sVar instanceof l6.a;
        int i6 = 2;
        Object obj2 = null;
        if (z5 && z8) {
            fVar = new f((l6.a) sVar, i, (r) sVar);
        } else if (z8) {
            fVar = new f((l6.a) sVar, i, obj2);
        } else if (z5) {
            fVar = (r) sVar;
        } else {
            Class<?> cls = sVar.getClass();
            if (w.b(cls) == 2) {
                Object obj3 = w.f748b.get(cls);
                d7.g.c(obj3);
                List list = (List) obj3;
                if (list.size() == 1) {
                    w.a((Constructor) list.get(0), sVar);
                    throw null;
                }
                int size = list.size();
                h[] hVarArr = new h[size];
                if (size > 0) {
                    w.a((Constructor) list.get(0), sVar);
                    throw null;
                }
                fVar = new e1.b(i6, hVarArr);
            } else {
                fVar = new f(sVar);
            }
        }
        uVar.f738b = fVar;
        uVar.f737a = nVar2;
        o.a aVar = this.f740b;
        o.c cVarA = aVar.a(sVar);
        if (cVarA != null) {
            obj = cVarA.f4384b;
        } else {
            HashMap map2 = aVar.f4379e;
            o.c cVar = new o.c(sVar, uVar);
            aVar.f4393d++;
            o.c cVar2 = aVar.f4391b;
            if (cVar2 == null) {
                aVar.f4390a = cVar;
                aVar.f4391b = cVar;
            } else {
                cVar2.f4385c = cVar;
                cVar.f4386d = cVar2;
                aVar.f4391b = cVar;
            }
            map2.put(sVar, cVar);
            obj = null;
        }
        if (((u) obj) == null && (tVar = (t) this.f742d.get()) != null) {
            i = (this.f743e != 0 || this.f744f) ? 1 : 0;
            n nVarC = c(sVar);
            this.f743e++;
            while (uVar.f737a.compareTo(nVarC) < 0 && this.f740b.f4379e.containsKey(sVar)) {
                n nVar3 = uVar.f737a;
                ArrayList arrayList = this.h;
                arrayList.add(nVar3);
                k kVar = m.Companion;
                n nVar4 = uVar.f737a;
                kVar.getClass();
                d7.g.f("state", nVar4);
                int iOrdinal = nVar4.ordinal();
                m mVar = iOrdinal != 1 ? iOrdinal != 2 ? iOrdinal != 3 ? null : m.ON_RESUME : m.ON_START : m.ON_CREATE;
                if (mVar == null) {
                    throw new IllegalStateException("no event up from " + uVar.f737a);
                }
                uVar.a(tVar, mVar);
                arrayList.remove(arrayList.size() - 1);
                nVarC = c(sVar);
            }
            if (i == 0) {
                h();
            }
            this.f743e--;
        }
    }

    @Override // androidx.lifecycle.o
    public final void b(s sVar) {
        d7.g.f("observer", sVar);
        d("removeObserver");
        this.f740b.b(sVar);
    }

    public final n c(s sVar) {
        u uVar;
        HashMap map = this.f740b.f4379e;
        o.c cVar = map.containsKey(sVar) ? ((o.c) map.get(sVar)).f4386d : null;
        n nVar = (cVar == null || (uVar = (u) cVar.f4384b) == null) ? null : uVar.f737a;
        ArrayList arrayList = this.h;
        n nVar2 = arrayList.isEmpty() ? null : (n) arrayList.get(arrayList.size() - 1);
        n nVar3 = this.f741c;
        d7.g.f("state1", nVar3);
        if (nVar == null || nVar.compareTo(nVar3) >= 0) {
            nVar = nVar3;
        }
        return (nVar2 == null || nVar2.compareTo(nVar) >= 0) ? nVar : nVar2;
    }

    public final void d(String str) {
        if (this.f739a) {
            n.a.n().f4310a.getClass();
            if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
                throw new IllegalStateException(q2.x.g("Method ", str, " must be called on the main thread").toString());
            }
        }
    }

    public final void e(m mVar) {
        d7.g.f("event", mVar);
        d("handleLifecycleEvent");
        f(mVar.a());
    }

    public final void f(n nVar) {
        n nVar2 = this.f741c;
        if (nVar2 == nVar) {
            return;
        }
        n nVar3 = n.f719b;
        n nVar4 = n.f718a;
        if (nVar2 == nVar3 && nVar == nVar4) {
            throw new IllegalStateException(("State must be at least CREATED to move to " + nVar + ", but was " + this.f741c + " in component " + this.f742d.get()).toString());
        }
        this.f741c = nVar;
        if (this.f744f || this.f743e != 0) {
            this.f745g = true;
            return;
        }
        this.f744f = true;
        h();
        this.f744f = false;
        if (this.f741c == nVar4) {
            this.f740b = new o.a();
        }
    }

    public final void g() {
        d("setCurrentState");
        f(n.f720c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0030, code lost:
    
        r12.f745g = false;
        r12.f746i.a(r12.f741c);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void h() {
        /*
            Method dump skipped, instruction units count: 411
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.v.h():void");
    }
}
