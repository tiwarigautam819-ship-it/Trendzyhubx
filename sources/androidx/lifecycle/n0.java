package androidx.lifecycle;

import android.app.Application;
import android.os.Bundle;
import androidx.fragment.app.b1;
import java.lang.reflect.Constructor;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class n0 implements r0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Application f724a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final q0 f725b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Bundle f726c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final o f727d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final e1.e f728e;

    public n0(Application application, androidx.fragment.app.h0 h0Var, Bundle bundle) {
        q0 q0Var;
        this.f728e = h0Var.getSavedStateRegistry();
        this.f727d = h0Var.getLifecycle();
        this.f726c = bundle;
        this.f724a = application;
        if (application != null) {
            if (q0.f733d == null) {
                q0.f733d = new q0(application);
            }
            q0Var = q0.f733d;
            d7.g.c(q0Var);
        } else {
            q0Var = new q0(null);
        }
        this.f725b = q0Var;
    }

    @Override // androidx.lifecycle.r0
    public final p0 a(Class cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return d(cls, canonicalName);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Override // androidx.lifecycle.r0
    public final p0 b(Class cls, v0.c cVar) {
        LinkedHashMap linkedHashMap = cVar.f5530a;
        String str = (String) linkedHashMap.get(w0.b.f5717a);
        if (str == null) {
            throw new IllegalStateException("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
        }
        if (linkedHashMap.get(j0.f707a) == null || linkedHashMap.get(j0.f708b) == null) {
            if (this.f727d != null) {
                return d(cls, str);
            }
            throw new IllegalStateException("SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel.");
        }
        Application application = (Application) linkedHashMap.get(q0.f734e);
        boolean zIsAssignableFrom = a.class.isAssignableFrom(cls);
        Constructor constructorA = (!zIsAssignableFrom || application == null) ? o0.a(cls, o0.f730b) : o0.a(cls, o0.f729a);
        return constructorA == null ? this.f725b.b(cls, cVar) : (!zIsAssignableFrom || application == null) ? o0.b(cls, constructorA, j0.c(cVar)) : o0.b(cls, constructorA, application, j0.c(cVar));
    }

    @Override // androidx.lifecycle.r0
    public final /* synthetic */ p0 c(d7.d dVar, v0.c cVar) {
        return a1.a.a(this, dVar, cVar);
    }

    public final p0 d(Class cls, String str) {
        AutoCloseable autoCloseable;
        Application application;
        o oVar = this.f727d;
        if (oVar == null) {
            throw new UnsupportedOperationException("SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras).");
        }
        boolean zIsAssignableFrom = a.class.isAssignableFrom(cls);
        Constructor constructorA = (!zIsAssignableFrom || this.f724a == null) ? o0.a(cls, o0.f730b) : o0.a(cls, o0.f729a);
        if (constructorA == null) {
            if (this.f724a != null) {
                return this.f725b.a(cls);
            }
            if (b1.f456b == null) {
                b1.f456b = new b1(2);
            }
            b1 b1Var = b1.f456b;
            d7.g.c(b1Var);
            return b1Var.a(cls);
        }
        e1.e eVar = this.f728e;
        d7.g.c(eVar);
        Bundle bundle = this.f726c;
        Bundle bundleA = eVar.a(str);
        Class[] clsArr = h0.f698f;
        h0 h0VarB = j0.b(bundleA, bundle);
        i0 i0Var = new i0(str, h0VarB);
        i0Var.c(eVar, oVar);
        n nVar = ((v) oVar).f741c;
        int i6 = 1;
        if (nVar == n.f719b || nVar.compareTo(n.f721d) >= 0) {
            eVar.d();
        } else {
            oVar.a(new f(oVar, i6, eVar));
        }
        p0 p0VarB = (!zIsAssignableFrom || (application = this.f724a) == null) ? o0.b(cls, constructorA, h0VarB) : o0.b(cls, constructorA, application, h0VarB);
        p0VarB.getClass();
        w0.a aVar = p0VarB.f731a;
        if (aVar == null) {
            return p0VarB;
        }
        if (aVar.f5716d) {
            w0.a.a(i0Var);
            return p0VarB;
        }
        synchronized (aVar.f5713a) {
            autoCloseable = (AutoCloseable) aVar.f5714b.put("androidx.lifecycle.savedstate.vm.tag", i0Var);
        }
        w0.a.a(autoCloseable);
        return p0VarB;
    }
}
