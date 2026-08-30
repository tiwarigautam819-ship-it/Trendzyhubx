package androidx.lifecycle;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.b1;
import com.YaarWin.app.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e5.e f707a = new e5.e(3);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final e5.e f708b = new e5.e(4);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final e5.e f709c = new e5.e(2);

    public static final void a(p0 p0Var, e1.e eVar, o oVar) {
        AutoCloseable autoCloseable;
        d7.g.f("registry", eVar);
        d7.g.f("lifecycle", oVar);
        w0.a aVar = p0Var.f731a;
        if (aVar != null) {
            synchronized (aVar.f5713a) {
                autoCloseable = (AutoCloseable) aVar.f5714b.get("androidx.lifecycle.savedstate.vm.tag");
            }
        } else {
            autoCloseable = null;
        }
        i0 i0Var = (i0) autoCloseable;
        if (i0Var == null || i0Var.f706c) {
            return;
        }
        i0Var.c(eVar, oVar);
        n nVar = ((v) oVar).f741c;
        if (nVar == n.f719b || nVar.compareTo(n.f721d) >= 0) {
            eVar.d();
        } else {
            oVar.a(new f(oVar, 1, eVar));
        }
    }

    public static h0 b(Bundle bundle, Bundle bundle2) {
        if (bundle == null) {
            if (bundle2 == null) {
                return new h0();
            }
            HashMap map = new HashMap();
            for (String str : bundle2.keySet()) {
                d7.g.e("key", str);
                map.put(str, bundle2.get(str));
            }
            return new h0(map);
        }
        ClassLoader classLoader = h0.class.getClassLoader();
        d7.g.c(classLoader);
        bundle.setClassLoader(classLoader);
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("keys");
        ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("values");
        if (parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) {
            throw new IllegalStateException("Invalid bundle passed as restored state");
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int size = parcelableArrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            Object obj = parcelableArrayList.get(i6);
            d7.g.d("null cannot be cast to non-null type kotlin.String", obj);
            linkedHashMap.put((String) obj, parcelableArrayList2.get(i6));
        }
        return new h0(linkedHashMap);
    }

    public static final h0 c(v0.c cVar) {
        LinkedHashMap linkedHashMap = cVar.f5530a;
        e1.g gVar = (e1.g) linkedHashMap.get(f707a);
        if (gVar == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`");
        }
        t0 t0Var = (t0) linkedHashMap.get(f708b);
        if (t0Var == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`");
        }
        Bundle bundle = (Bundle) linkedHashMap.get(f709c);
        String str = (String) linkedHashMap.get(w0.b.f5717a);
        if (str == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_KEY`");
        }
        e1.d dVarB = gVar.getSavedStateRegistry().b();
        l0 l0Var = dVarB instanceof l0 ? (l0) dVarB : null;
        if (l0Var == null) {
            throw new IllegalStateException("enableSavedStateHandles() wasn't called prior to createSavedStateHandle() call");
        }
        LinkedHashMap linkedHashMap2 = e(t0Var).f717b;
        h0 h0Var = (h0) linkedHashMap2.get(str);
        if (h0Var != null) {
            return h0Var;
        }
        Class[] clsArr = h0.f698f;
        l0Var.b();
        Bundle bundle2 = l0Var.f715c;
        Bundle bundle3 = bundle2 != null ? bundle2.getBundle(str) : null;
        Bundle bundle4 = l0Var.f715c;
        if (bundle4 != null) {
            bundle4.remove(str);
        }
        Bundle bundle5 = l0Var.f715c;
        if (bundle5 != null && bundle5.isEmpty()) {
            l0Var.f715c = null;
        }
        h0 h0VarB = b(bundle3, bundle);
        linkedHashMap2.put(str, h0VarB);
        return h0VarB;
    }

    public static final void d(e1.g gVar) {
        n nVar = ((v) gVar.getLifecycle()).f741c;
        if (nVar != n.f719b && nVar != n.f720c) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (gVar.getSavedStateRegistry().b() == null) {
            l0 l0Var = new l0(gVar.getSavedStateRegistry(), (t0) gVar);
            gVar.getSavedStateRegistry().c("androidx.lifecycle.internal.SavedStateHandlesProvider", l0Var);
            gVar.getLifecycle().a(new e1.b(3, l0Var));
        }
    }

    public static final m0 e(t0 t0Var) {
        b1 b1Var = new b1(1);
        s0 viewModelStore = t0Var.getViewModelStore();
        v0.b defaultViewModelCreationExtras = t0Var instanceof i ? ((i) t0Var).getDefaultViewModelCreationExtras() : v0.a.f5529b;
        d7.g.f("store", viewModelStore);
        d7.g.f("defaultCreationExtras", defaultViewModelCreationExtras);
        return (m0) new c5.h(viewModelStore, b1Var, defaultViewModelCreationExtras).n(d7.l.a(m0.class), "androidx.lifecycle.internal.SavedStateHandlesVM");
    }

    public static final void f(View view, t tVar) {
        d7.g.f("<this>", view);
        view.setTag(R.id.view_tree_lifecycle_owner, tVar);
    }
}
