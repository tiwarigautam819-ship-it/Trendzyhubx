package t0;

import android.util.Log;
import androidx.fragment.app.c0;
import androidx.fragment.app.y0;
import d7.g;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f5298a = b.f5297a;

    public static b a(c0 c0Var) {
        while (c0Var != null) {
            if (c0Var.k()) {
                c0Var.g();
            }
            c0Var = c0Var.E;
        }
        return f5298a;
    }

    public static void b(e eVar) {
        if (y0.J(3)) {
            Log.d("FragmentManager", "StrictMode violation in ".concat(eVar.f5299a.getClass().getName()), eVar);
        }
    }

    public static final void c(c0 c0Var, String str) {
        g.f("previousFragmentId", str);
        b(new a(c0Var, "Attempting to reuse fragment " + c0Var + " with previous ID " + str));
        a(c0Var).getClass();
    }
}
