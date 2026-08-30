package e1;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.c0;
import androidx.fragment.app.h0;
import androidx.lifecycle.h;
import androidx.lifecycle.j0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m;
import androidx.lifecycle.p0;
import androidx.lifecycle.r;
import androidx.lifecycle.s0;
import androidx.lifecycle.t;
import androidx.lifecycle.t0;
import b.p;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2305a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f2306b;

    public /* synthetic */ b(int i6, Object obj) {
        this.f2305a = i6;
        this.f2306b = obj;
    }

    @Override // androidx.lifecycle.r
    public final void a(t tVar, m mVar) {
        View view;
        switch (this.f2305a) {
            case 0:
                g gVar = (g) this.f2306b;
                if (mVar != m.ON_CREATE) {
                    throw new AssertionError("Next event must be ON_CREATE");
                }
                tVar.getLifecycle().b(this);
                Bundle bundleA = gVar.getSavedStateRegistry().a("androidx.savedstate.Restarter");
                if (bundleA == null) {
                    return;
                }
                ArrayList<String> stringArrayList = bundleA.getStringArrayList("classes_to_restore");
                if (stringArrayList == null) {
                    throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
                }
                int size = stringArrayList.size();
                int i6 = 0;
                while (i6 < size) {
                    String str = stringArrayList.get(i6);
                    i6++;
                    String str2 = str;
                    try {
                        Class<? extends U> clsAsSubclass = Class.forName(str2, false, b.class.getClassLoader()).asSubclass(c.class);
                        d7.g.e("{\n                Class.…class.java)\n            }", clsAsSubclass);
                        try {
                            Constructor declaredConstructor = clsAsSubclass.getDeclaredConstructor(null);
                            declaredConstructor.setAccessible(true);
                            try {
                                Object objNewInstance = declaredConstructor.newInstance(null);
                                d7.g.e("{\n                constr…wInstance()\n            }", objNewInstance);
                                if (!(gVar instanceof t0)) {
                                    throw new IllegalStateException("Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner");
                                }
                                s0 viewModelStore = ((t0) gVar).getViewModelStore();
                                e savedStateRegistry = gVar.getSavedStateRegistry();
                                viewModelStore.getClass();
                                LinkedHashMap linkedHashMap = viewModelStore.f736a;
                                for (String str3 : new HashSet(linkedHashMap.keySet())) {
                                    d7.g.f("key", str3);
                                    p0 p0Var = (p0) linkedHashMap.get(str3);
                                    d7.g.c(p0Var);
                                    j0.a(p0Var, savedStateRegistry, gVar.getLifecycle());
                                }
                                if (!new HashSet(linkedHashMap.keySet()).isEmpty()) {
                                    savedStateRegistry.d();
                                }
                            } catch (Exception e9) {
                                throw new RuntimeException(x.k("Failed to instantiate ", str2), e9);
                            }
                        } catch (NoSuchMethodException e10) {
                            throw new IllegalStateException("Class " + clsAsSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e10);
                        }
                    } catch (ClassNotFoundException e11) {
                        throw new RuntimeException(x.g("Class ", str2, " wasn't found"), e11);
                    }
                }
                return;
            case 1:
                if (mVar != m.ON_STOP || (view = ((c0) this.f2306b).P) == null) {
                    return;
                }
                view.cancelPendingInputEvents();
                return;
            case 2:
                new HashMap();
                h[] hVarArr = (h[]) this.f2306b;
                if (hVarArr.length > 0) {
                    h hVar = hVarArr[0];
                    throw null;
                }
                if (hVarArr.length <= 0) {
                    return;
                }
                h hVar2 = hVarArr[0];
                throw null;
            case 3:
                if (mVar != m.ON_CREATE) {
                    throw new IllegalStateException(("Next event must be ON_CREATE, it was " + mVar).toString());
                }
                tVar.getLifecycle().b(this);
                ((l0) this.f2306b).b();
                return;
            default:
                h0 h0Var = (h0) this.f2306b;
                p.access$ensureViewModelStore(h0Var);
                h0Var.getLifecycle().b(this);
                return;
        }
    }
}
