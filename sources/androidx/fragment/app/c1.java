package androidx.fragment.app;

import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c1 extends androidx.lifecycle.p0 {
    public static final b1 h = new b1(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f485e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f482b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f483c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f484d = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f486f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f487g = false;

    public c1(boolean z5) {
        this.f485e = z5;
    }

    @Override // androidx.lifecycle.p0
    public final void b() {
        if (y0.J(3)) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.f486f = true;
    }

    public final void c(c0 c0Var) {
        if (this.f487g) {
            if (y0.J(2)) {
                Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
                return;
            }
            return;
        }
        String str = c0Var.f469e;
        HashMap map = this.f482b;
        if (map.containsKey(str)) {
            return;
        }
        map.put(c0Var.f469e, c0Var);
        if (y0.J(2)) {
            Log.v("FragmentManager", "Updating retained Fragments: Added " + c0Var);
        }
    }

    public final void d(c0 c0Var, boolean z5) {
        if (y0.J(3)) {
            Log.d("FragmentManager", "Clearing non-config state for " + c0Var);
        }
        f(c0Var.f469e, z5);
    }

    public final void e(String str, boolean z5) {
        if (y0.J(3)) {
            Log.d("FragmentManager", "Clearing non-config state for saved state of Fragment " + str);
        }
        f(str, z5);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && c1.class == obj.getClass()) {
            c1 c1Var = (c1) obj;
            if (this.f482b.equals(c1Var.f482b) && this.f483c.equals(c1Var.f483c) && this.f484d.equals(c1Var.f484d)) {
                return true;
            }
        }
        return false;
    }

    public final void f(String str, boolean z5) {
        HashMap map = this.f483c;
        c1 c1Var = (c1) map.get(str);
        if (c1Var != null) {
            if (z5) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(c1Var.f483c.keySet());
                int size = arrayList.size();
                int i6 = 0;
                while (i6 < size) {
                    Object obj = arrayList.get(i6);
                    i6++;
                    c1Var.e((String) obj, true);
                }
            }
            c1Var.b();
            map.remove(str);
        }
        HashMap map2 = this.f484d;
        androidx.lifecycle.s0 s0Var = (androidx.lifecycle.s0) map2.get(str);
        if (s0Var != null) {
            s0Var.a();
            map2.remove(str);
        }
    }

    public final void g(c0 c0Var) {
        if (this.f487g) {
            if (y0.J(2)) {
                Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
            }
        } else {
            if (this.f482b.remove(c0Var.f469e) == null || !y0.J(2)) {
                return;
            }
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + c0Var);
        }
    }

    public final int hashCode() {
        return this.f484d.hashCode() + ((this.f483c.hashCode() + (this.f482b.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator it = this.f482b.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator it2 = this.f483c.keySet().iterator();
        while (it2.hasNext()) {
            sb.append((String) it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator it3 = this.f484d.keySet().iterator();
        while (it3.hasNext()) {
            sb.append((String) it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
