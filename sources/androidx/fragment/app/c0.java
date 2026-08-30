package androidx.fragment.app;

import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.YaarWin.app.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c0 implements ComponentCallbacks, View.OnCreateContextMenuListener, androidx.lifecycle.t, androidx.lifecycle.t0, androidx.lifecycle.i, e1.g {

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static final Object f460e0 = new Object();
    public int A;
    public y0 B;
    public g0 C;
    public c0 E;
    public int F;
    public int G;
    public String H;
    public boolean I;
    public boolean J;
    public boolean K;
    public boolean L;
    public boolean N;
    public ViewGroup O;
    public View P;
    public boolean Q;
    public z S;
    public boolean T;
    public boolean U;
    public String V;
    public androidx.lifecycle.n W;
    public androidx.lifecycle.v X;
    public i1 Y;
    public final androidx.lifecycle.y Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public e1.f f462a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Bundle f463b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final AtomicInteger f464b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SparseArray f465c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final ArrayList f466c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Bundle f467d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final w f468d0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Bundle f470f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public c0 f471g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f472i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f474k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f475l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f476m;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f477v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f478w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f479x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f480y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f481z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f461a = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f469e = UUID.randomUUID().toString();
    public String h = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Boolean f473j = null;
    public z0 D = new z0();
    public final boolean M = true;
    public boolean R = true;

    public c0() {
        new p(1, this);
        this.W = androidx.lifecycle.n.f722e;
        this.Z = new androidx.lifecycle.y();
        this.f464b0 = new AtomicInteger();
        this.f466c0 = new ArrayList();
        this.f468d0 = new w(this);
        i();
    }

    public void A() {
        this.N = true;
    }

    public void B(Bundle bundle) {
        this.N = true;
    }

    public void C(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.D.P();
        this.f481z = true;
        this.Y = new i1(this, getViewModelStore(), new u(0, this));
        View viewR = r(layoutInflater, viewGroup, bundle);
        this.P = viewR;
        if (viewR == null) {
            if (this.Y.f555d != null) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.Y = null;
            return;
        }
        this.Y.b();
        if (y0.J(3)) {
            Log.d("FragmentManager", "Setting ViewLifecycleOwner on View " + this.P + " for Fragment " + this);
        }
        androidx.lifecycle.j0.f(this.P, this.Y);
        View view = this.P;
        i1 i1Var = this.Y;
        d7.g.f("<this>", view);
        view.setTag(R.id.view_tree_view_model_store_owner, i1Var);
        f4.f.d(this.P, this.Y);
        this.Z.d(this.Y);
    }

    public final d.c D(e.a aVar, d.b bVar) {
        o5.c cVar = new o5.c(1, this);
        if (this.f461a > 1) {
            throw new IllegalStateException(m1.c("Fragment ", this, " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate())."));
        }
        AtomicReference atomicReference = new AtomicReference();
        y yVar = new y(this, cVar, atomicReference, aVar, bVar);
        if (this.f461a >= 0) {
            yVar.a();
        } else {
            this.f466c0.add(yVar);
        }
        return new v(atomicReference);
    }

    public final h0 E() {
        h0 h0VarC = c();
        if (h0VarC != null) {
            return h0VarC;
        }
        throw new IllegalStateException(m1.c("Fragment ", this, " not attached to an activity."));
    }

    public final Context F() {
        Context contextE = e();
        if (contextE != null) {
            return contextE;
        }
        throw new IllegalStateException(m1.c("Fragment ", this, " not attached to a context."));
    }

    public final View G() {
        View view = this.P;
        if (view != null) {
            return view;
        }
        throw new IllegalStateException(m1.c("Fragment ", this, " did not return a View from onCreateView() or this was called before onCreateView()."));
    }

    public final void H(int i6, int i9, int i10, int i11) {
        if (this.S == null && i6 == 0 && i9 == 0 && i10 == 0 && i11 == 0) {
            return;
        }
        b().f666b = i6;
        b().f667c = i9;
        b().f668d = i10;
        b().f669e = i11;
    }

    public final void I() {
        t0.b bVar = t0.c.f5298a;
        t0.c.b(new t0.d(this, "Attempting to set retain instance for fragment " + this));
        t0.c.a(this).getClass();
        this.K = true;
        y0 y0Var = this.B;
        if (y0Var != null) {
            y0Var.O.c(this);
        } else {
            this.L = true;
        }
    }

    public final void J(Intent intent, int i6, Bundle bundle) {
        if (this.C == null) {
            throw new IllegalStateException(m1.c("Fragment ", this, " not attached to Activity"));
        }
        y0 y0VarG = g();
        if (y0VarG.C != null) {
            y0VarG.F.addLast(new u0(this.f469e, i6));
            if (bundle != null) {
                intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
            }
            y0VarG.C.a(intent);
            return;
        }
        g0 g0Var = y0VarG.f661w;
        g0Var.getClass();
        d7.g.f("intent", intent);
        if (i6 != -1) {
            throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
        }
        g0Var.f522b.startActivity(intent, bundle);
    }

    public h8.b a() {
        return new x(this);
    }

    public final z b() {
        if (this.S == null) {
            z zVar = new z();
            Object obj = f460e0;
            zVar.f671g = obj;
            zVar.h = obj;
            zVar.f672i = obj;
            zVar.f673j = 1.0f;
            zVar.f674k = null;
            this.S = zVar;
        }
        return this.S;
    }

    public final h0 c() {
        g0 g0Var = this.C;
        if (g0Var == null) {
            return null;
        }
        return g0Var.f521a;
    }

    public final y0 d() {
        if (this.C != null) {
            return this.D;
        }
        throw new IllegalStateException(m1.c("Fragment ", this, " has not been attached yet."));
    }

    public final Context e() {
        g0 g0Var = this.C;
        if (g0Var == null) {
            return null;
        }
        return g0Var.f522b;
    }

    public final int f() {
        androidx.lifecycle.n nVar = this.W;
        return (nVar == androidx.lifecycle.n.f719b || this.E == null) ? nVar.ordinal() : Math.min(nVar.ordinal(), this.E.f());
    }

    public final y0 g() {
        y0 y0Var = this.B;
        if (y0Var != null) {
            return y0Var;
        }
        throw new IllegalStateException(m1.c("Fragment ", this, " not associated with a fragment manager."));
    }

    @Override // androidx.lifecycle.i
    public final v0.b getDefaultViewModelCreationExtras() {
        Application application;
        Context applicationContext = F().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        if (application == null && y0.J(3)) {
            Log.d("FragmentManager", "Could not find Application instance from Context " + F().getApplicationContext() + ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory");
        }
        v0.c cVar = new v0.c(0);
        LinkedHashMap linkedHashMap = cVar.f5530a;
        if (application != null) {
            linkedHashMap.put(androidx.lifecycle.q0.f734e, application);
        }
        linkedHashMap.put(androidx.lifecycle.j0.f707a, this);
        linkedHashMap.put(androidx.lifecycle.j0.f708b, this);
        Bundle bundle = this.f470f;
        if (bundle != null) {
            linkedHashMap.put(androidx.lifecycle.j0.f709c, bundle);
        }
        return cVar;
    }

    @Override // androidx.lifecycle.t
    public final androidx.lifecycle.o getLifecycle() {
        return this.X;
    }

    @Override // e1.g
    public final e1.e getSavedStateRegistry() {
        return this.f462a0.f2314b;
    }

    @Override // androidx.lifecycle.t0
    public final androidx.lifecycle.s0 getViewModelStore() {
        if (this.B == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (f() == 1) {
            throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
        }
        HashMap map = this.B.O.f484d;
        androidx.lifecycle.s0 s0Var = (androidx.lifecycle.s0) map.get(this.f469e);
        if (s0Var != null) {
            return s0Var;
        }
        androidx.lifecycle.s0 s0Var2 = new androidx.lifecycle.s0();
        map.put(this.f469e, s0Var2);
        return s0Var2;
    }

    public final Resources h() {
        return F().getResources();
    }

    public final void i() {
        this.X = new androidx.lifecycle.v(this);
        this.f462a0 = new e1.f(this);
        ArrayList arrayList = this.f466c0;
        w wVar = this.f468d0;
        if (arrayList.contains(wVar)) {
            return;
        }
        if (this.f461a >= 0) {
            wVar.a();
        } else {
            arrayList.add(wVar);
        }
    }

    public final void j() {
        i();
        this.V = this.f469e;
        this.f469e = UUID.randomUUID().toString();
        this.f474k = false;
        this.f475l = false;
        this.f477v = false;
        this.f478w = false;
        this.f480y = false;
        this.A = 0;
        this.B = null;
        this.D = new z0();
        this.C = null;
        this.F = 0;
        this.G = 0;
        this.H = null;
        this.I = false;
        this.J = false;
    }

    public final boolean k() {
        return this.C != null && this.f474k;
    }

    public final boolean l() {
        if (this.I) {
            return true;
        }
        y0 y0Var = this.B;
        if (y0Var != null) {
            c0 c0Var = this.E;
            y0Var.getClass();
            if (c0Var == null ? false : c0Var.l()) {
                return true;
            }
        }
        return false;
    }

    public final boolean m() {
        return this.A > 0;
    }

    public void n() {
        this.N = true;
    }

    public void o(int i6, int i9, Intent intent) {
        if (y0.J(2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in onActivityResult(): requestCode: " + i6 + " resultCode: " + i9 + " data: " + intent);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.N = true;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        E().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        this.N = true;
    }

    public void p(Context context) {
        this.N = true;
        g0 g0Var = this.C;
        if ((g0Var == null ? null : g0Var.f521a) != null) {
            this.N = true;
        }
    }

    public void q(Bundle bundle) {
        Bundle bundle2;
        this.N = true;
        Bundle bundle3 = this.f463b;
        if (bundle3 != null && (bundle2 = bundle3.getBundle("childFragmentManager")) != null) {
            this.D.U(bundle2);
            z0 z0Var = this.D;
            z0Var.H = false;
            z0Var.I = false;
            z0Var.O.f487g = false;
            z0Var.u(1);
        }
        z0 z0Var2 = this.D;
        if (z0Var2.f660v >= 1) {
            return;
        }
        z0Var2.H = false;
        z0Var2.I = false;
        z0Var2.O.f487g = false;
        z0Var2.u(1);
    }

    public View r(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return null;
    }

    public void s() {
        this.N = true;
    }

    public void t() {
        this.N = true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} (");
        sb.append(this.f469e);
        if (this.F != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.F));
        }
        if (this.H != null) {
            sb.append(" tag=");
            sb.append(this.H);
        }
        sb.append(")");
        return sb.toString();
    }

    public void u() {
        this.N = true;
    }

    public LayoutInflater v(Bundle bundle) {
        g0 g0Var = this.C;
        if (g0Var == null) {
            throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
        }
        h0 h0Var = g0Var.f525e;
        LayoutInflater layoutInflaterCloneInContext = h0Var.getLayoutInflater().cloneInContext(h0Var);
        layoutInflaterCloneInContext.setFactory2(this.D.f645f);
        return layoutInflaterCloneInContext;
    }

    public void w() {
        this.N = true;
    }

    public void x() {
        this.N = true;
    }

    public abstract void y(Bundle bundle);

    public void z() {
        this.N = true;
    }
}
