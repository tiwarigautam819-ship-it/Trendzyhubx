package androidx.fragment.app;

import android.content.res.Resources;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.YaarWin.app.R;
import com.google.android.gms.internal.measurement.y4;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final y4 f526a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.google.firebase.messaging.y f527b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c0 f528c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f529d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f530e = -1;

    public g1(y4 y4Var, com.google.firebase.messaging.y yVar, c0 c0Var) {
        this.f526a = y4Var;
        this.f527b = yVar;
        this.f528c = c0Var;
    }

    public final void a() {
        boolean zJ = y0.J(3);
        c0 c0Var = this.f528c;
        if (zJ) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + c0Var);
        }
        Bundle bundle = c0Var.f463b;
        if (bundle != null) {
            bundle.getBundle("savedInstanceState");
        }
        c0Var.D.P();
        c0Var.f461a = 3;
        c0Var.N = false;
        c0Var.n();
        if (!c0Var.N) {
            throw new o1(m1.c("Fragment ", c0Var, " did not call through to super.onActivityCreated()"));
        }
        if (y0.J(3)) {
            Log.d("FragmentManager", "moveto RESTORE_VIEW_STATE: " + c0Var);
        }
        if (c0Var.P != null) {
            Bundle bundle2 = c0Var.f463b;
            Bundle bundle3 = bundle2 != null ? bundle2.getBundle("savedInstanceState") : null;
            SparseArray<Parcelable> sparseArray = c0Var.f465c;
            if (sparseArray != null) {
                c0Var.P.restoreHierarchyState(sparseArray);
                c0Var.f465c = null;
            }
            c0Var.N = false;
            c0Var.B(bundle3);
            if (!c0Var.N) {
                throw new o1(m1.c("Fragment ", c0Var, " did not call through to super.onViewStateRestored()"));
            }
            if (c0Var.P != null) {
                c0Var.Y.a(androidx.lifecycle.m.ON_CREATE);
            }
        }
        c0Var.f463b = null;
        z0 z0Var = c0Var.D;
        z0Var.H = false;
        z0Var.I = false;
        z0Var.O.f487g = false;
        z0Var.u(4);
        this.f526a.g(c0Var, false);
    }

    public final void b() {
        c0 c0Var;
        View view;
        View view2;
        c0 c0Var2 = this.f528c;
        View view3 = c0Var2.O;
        while (true) {
            c0Var = null;
            if (view3 == null) {
                break;
            }
            Object tag = view3.getTag(R.id.fragment_container_view_tag);
            c0 c0Var3 = tag instanceof c0 ? (c0) tag : null;
            if (c0Var3 != null) {
                c0Var = c0Var3;
                break;
            } else {
                Object parent = view3.getParent();
                view3 = parent instanceof View ? (View) parent : null;
            }
        }
        c0 c0Var4 = c0Var2.E;
        if (c0Var != null && !c0Var.equals(c0Var4)) {
            int i6 = c0Var2.G;
            t0.b bVar = t0.c.f5298a;
            t0.c.b(new t0.a(c0Var2, "Attempting to nest fragment " + c0Var2 + " within the view of parent fragment " + c0Var + " via container with ID " + i6 + " without using parent's childFragmentManager"));
            t0.c.a(c0Var2).getClass();
        }
        ArrayList arrayList = (ArrayList) this.f527b.f2162a;
        ViewGroup viewGroup = c0Var2.O;
        int iIndexOfChild = -1;
        if (viewGroup != null) {
            int iIndexOf = arrayList.indexOf(c0Var2);
            int i9 = iIndexOf - 1;
            while (true) {
                if (i9 < 0) {
                    while (true) {
                        iIndexOf++;
                        if (iIndexOf >= arrayList.size()) {
                            break;
                        }
                        c0 c0Var5 = (c0) arrayList.get(iIndexOf);
                        if (c0Var5.O == viewGroup && (view = c0Var5.P) != null) {
                            iIndexOfChild = viewGroup.indexOfChild(view);
                            break;
                        }
                    }
                } else {
                    c0 c0Var6 = (c0) arrayList.get(i9);
                    if (c0Var6.O == viewGroup && (view2 = c0Var6.P) != null) {
                        iIndexOfChild = viewGroup.indexOfChild(view2) + 1;
                        break;
                    }
                    i9--;
                }
            }
        }
        c0Var2.O.addView(c0Var2.P, iIndexOfChild);
    }

    public final void c() {
        boolean zJ = y0.J(3);
        c0 c0Var = this.f528c;
        if (zJ) {
            Log.d("FragmentManager", "moveto ATTACHED: " + c0Var);
        }
        c0 c0Var2 = c0Var.f471g;
        g1 g1Var = null;
        com.google.firebase.messaging.y yVar = this.f527b;
        if (c0Var2 != null) {
            g1 g1Var2 = (g1) ((HashMap) yVar.f2163b).get(c0Var2.f469e);
            if (g1Var2 == null) {
                throw new IllegalStateException("Fragment " + c0Var + " declared target fragment " + c0Var.f471g + " that does not belong to this FragmentManager!");
            }
            c0Var.h = c0Var.f471g.f469e;
            c0Var.f471g = null;
            g1Var = g1Var2;
        } else {
            String str = c0Var.h;
            if (str != null && (g1Var = (g1) ((HashMap) yVar.f2163b).get(str)) == null) {
                StringBuilder sb = new StringBuilder("Fragment ");
                sb.append(c0Var);
                sb.append(" declared target fragment ");
                throw new IllegalStateException(q2.x.h(sb, c0Var.h, " that does not belong to this FragmentManager!"));
            }
        }
        if (g1Var != null) {
            g1Var.k();
        }
        y0 y0Var = c0Var.B;
        c0Var.C = y0Var.f661w;
        c0Var.E = y0Var.f663y;
        y4 y4Var = this.f526a;
        y4Var.o(c0Var, false);
        ArrayList arrayList = c0Var.f466c0;
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayList.get(i6);
            i6++;
            ((b0) obj).a();
        }
        arrayList.clear();
        c0Var.D.b(c0Var.C, c0Var.a(), c0Var);
        c0Var.f461a = 0;
        c0Var.N = false;
        c0Var.p(c0Var.C.f522b);
        if (!c0Var.N) {
            throw new o1(m1.c("Fragment ", c0Var, " did not call through to super.onAttach()"));
        }
        Iterator it = c0Var.B.f654p.iterator();
        while (it.hasNext()) {
            ((d1) it.next()).a(c0Var);
        }
        z0 z0Var = c0Var.D;
        z0Var.H = false;
        z0Var.I = false;
        z0Var.O.f487g = false;
        z0Var.u(0);
        y4Var.j(c0Var, false);
    }

    public final int d() {
        c0 c0Var = this.f528c;
        if (c0Var.B == null) {
            return c0Var.f461a;
        }
        int iMin = this.f530e;
        int iOrdinal = c0Var.W.ordinal();
        if (iOrdinal == 1) {
            iMin = Math.min(iMin, 0);
        } else if (iOrdinal == 2) {
            iMin = Math.min(iMin, 1);
        } else if (iOrdinal == 3) {
            iMin = Math.min(iMin, 5);
        } else if (iOrdinal != 4) {
            iMin = Math.min(iMin, -1);
        }
        if (c0Var.f477v) {
            if (c0Var.f478w) {
                iMin = Math.max(this.f530e, 2);
                View view = c0Var.P;
                if (view != null && view.getParent() == null) {
                    iMin = Math.min(iMin, 2);
                }
            } else {
                iMin = this.f530e < 4 ? Math.min(iMin, c0Var.f461a) : Math.min(iMin, 1);
            }
        }
        if (c0Var.f479x && c0Var.O == null) {
            iMin = Math.min(iMin, 4);
        }
        if (!c0Var.f474k) {
            iMin = Math.min(iMin, 1);
        }
        ViewGroup viewGroup = c0Var.O;
        if (viewGroup != null) {
            o oVarI = o.i(viewGroup, c0Var.g());
            l1 l1VarF = oVarI.f(c0Var);
            int i6 = l1VarF != null ? l1VarF.f573b : 0;
            l1 l1VarG = oVarI.g(c0Var);
            i = l1VarG != null ? l1VarG.f573b : 0;
            int i9 = i6 == 0 ? -1 : n1.f588a[m1.e(i6)];
            if (i9 != -1 && i9 != 1) {
                i = i6;
            }
        }
        if (i == 2) {
            iMin = Math.min(iMin, 6);
        } else if (i == 3) {
            iMin = Math.max(iMin, 3);
        } else if (c0Var.f475l) {
            iMin = c0Var.m() ? Math.min(iMin, 1) : Math.min(iMin, -1);
        }
        if (c0Var.Q && c0Var.f461a < 5) {
            iMin = Math.min(iMin, 4);
        }
        if (c0Var.f476m) {
            iMin = Math.max(iMin, 3);
        }
        if (y0.J(2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + iMin + " for " + c0Var);
        }
        return iMin;
    }

    public final void e() {
        Bundle bundle;
        boolean zJ = y0.J(3);
        c0 c0Var = this.f528c;
        if (zJ) {
            Log.d("FragmentManager", "moveto CREATED: " + c0Var);
        }
        Bundle bundle2 = c0Var.f463b;
        Bundle bundle3 = bundle2 != null ? bundle2.getBundle("savedInstanceState") : null;
        if (c0Var.U) {
            c0Var.f461a = 1;
            Bundle bundle4 = c0Var.f463b;
            if (bundle4 == null || (bundle = bundle4.getBundle("childFragmentManager")) == null) {
                return;
            }
            c0Var.D.U(bundle);
            z0 z0Var = c0Var.D;
            z0Var.H = false;
            z0Var.I = false;
            z0Var.O.f487g = false;
            z0Var.u(1);
            return;
        }
        y4 y4Var = this.f526a;
        y4Var.p(c0Var, false);
        c0Var.D.P();
        c0Var.f461a = 1;
        c0Var.N = false;
        c0Var.X.a(new e1.b(1, c0Var));
        c0Var.q(bundle3);
        c0Var.U = true;
        if (!c0Var.N) {
            throw new o1(m1.c("Fragment ", c0Var, " did not call through to super.onCreate()"));
        }
        c0Var.X.e(androidx.lifecycle.m.ON_CREATE);
        y4Var.k(c0Var, false);
    }

    public final void f() {
        String resourceName;
        c0 c0Var = this.f528c;
        if (c0Var.f477v) {
            return;
        }
        if (y0.J(3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + c0Var);
        }
        Bundle bundle = c0Var.f463b;
        ViewGroup viewGroup = null;
        Bundle bundle2 = bundle != null ? bundle.getBundle("savedInstanceState") : null;
        LayoutInflater layoutInflaterV = c0Var.v(bundle2);
        ViewGroup viewGroup2 = c0Var.O;
        if (viewGroup2 != null) {
            viewGroup = viewGroup2;
        } else {
            int i6 = c0Var.G;
            if (i6 != 0) {
                if (i6 == -1) {
                    throw new IllegalArgumentException(m1.c("Cannot create fragment ", c0Var, " for a container view with no id"));
                }
                viewGroup = (ViewGroup) c0Var.B.f662x.n(i6);
                if (viewGroup == null) {
                    if (!c0Var.f480y && !c0Var.f479x) {
                        try {
                            resourceName = c0Var.h().getResourceName(c0Var.G);
                        } catch (Resources.NotFoundException unused) {
                            resourceName = "unknown";
                        }
                        throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(c0Var.G) + " (" + resourceName + ") for fragment " + c0Var);
                    }
                } else if (!(viewGroup instanceof j0)) {
                    t0.b bVar = t0.c.f5298a;
                    t0.c.b(new t0.a(c0Var, "Attempting to add fragment " + c0Var + " to container " + viewGroup + " which is not a FragmentContainerView"));
                    t0.c.a(c0Var).getClass();
                }
            }
        }
        c0Var.O = viewGroup;
        c0Var.C(layoutInflaterV, viewGroup, bundle2);
        if (c0Var.P != null) {
            if (y0.J(3)) {
                Log.d("FragmentManager", "moveto VIEW_CREATED: " + c0Var);
            }
            c0Var.P.setSaveFromParentEnabled(false);
            c0Var.P.setTag(R.id.fragment_container_view_tag, c0Var);
            if (viewGroup != null) {
                b();
            }
            if (c0Var.I) {
                c0Var.P.setVisibility(8);
            }
            if (c0Var.P.isAttachedToWindow()) {
                View view = c0Var.P;
                WeakHashMap weakHashMap = j0.k0.f3286a;
                j0.b0.c(view);
            } else {
                View view2 = c0Var.P;
                view2.addOnAttachStateChangeListener(new f1(0, view2));
            }
            Bundle bundle3 = c0Var.f463b;
            if (bundle3 != null) {
                bundle3.getBundle("savedInstanceState");
            }
            c0Var.D.u(2);
            this.f526a.u(c0Var, c0Var.P, false);
            int visibility = c0Var.P.getVisibility();
            c0Var.b().f673j = c0Var.P.getAlpha();
            if (c0Var.O != null && visibility == 0) {
                View viewFindFocus = c0Var.P.findFocus();
                if (viewFindFocus != null) {
                    c0Var.b().f674k = viewFindFocus;
                    if (y0.J(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + c0Var);
                    }
                }
                c0Var.P.setAlpha(0.0f);
            }
        }
        c0Var.f461a = 2;
    }

    public final void g() {
        c0 c0VarM;
        boolean zJ = y0.J(3);
        c0 c0Var = this.f528c;
        if (zJ) {
            Log.d("FragmentManager", "movefrom CREATED: " + c0Var);
        }
        boolean zIsChangingConfigurations = true;
        int i6 = 0;
        boolean z5 = c0Var.f475l && !c0Var.m();
        com.google.firebase.messaging.y yVar = this.f527b;
        if (z5) {
            yVar.E(null, c0Var.f469e);
        }
        if (!z5) {
            c1 c1Var = (c1) yVar.f2165d;
            if (!((c1Var.f482b.containsKey(c0Var.f469e) && c1Var.f485e) ? c1Var.f486f : true)) {
                String str = c0Var.h;
                if (str != null && (c0VarM = yVar.m(str)) != null && c0VarM.K) {
                    c0Var.f471g = c0VarM;
                }
                c0Var.f461a = 0;
                return;
            }
        }
        g0 g0Var = c0Var.C;
        if (g0Var != null) {
            zIsChangingConfigurations = ((c1) yVar.f2165d).f486f;
        } else {
            h0 h0Var = g0Var.f522b;
            if (m1.d(h0Var)) {
                zIsChangingConfigurations = true ^ h0Var.isChangingConfigurations();
            }
        }
        if (z5 || zIsChangingConfigurations) {
            ((c1) yVar.f2165d).d(c0Var, false);
        }
        c0Var.D.l();
        c0Var.X.e(androidx.lifecycle.m.ON_DESTROY);
        c0Var.f461a = 0;
        c0Var.N = false;
        c0Var.U = false;
        c0Var.s();
        if (!c0Var.N) {
            throw new o1(m1.c("Fragment ", c0Var, " did not call through to super.onDestroy()"));
        }
        this.f526a.l(c0Var, false);
        ArrayList arrayListR = yVar.r();
        int size = arrayListR.size();
        while (i6 < size) {
            Object obj = arrayListR.get(i6);
            i6++;
            g1 g1Var = (g1) obj;
            if (g1Var != null) {
                c0 c0Var2 = g1Var.f528c;
                if (c0Var.f469e.equals(c0Var2.h)) {
                    c0Var2.f471g = c0Var;
                    c0Var2.h = null;
                }
            }
        }
        String str2 = c0Var.h;
        if (str2 != null) {
            c0Var.f471g = yVar.m(str2);
        }
        yVar.y(this);
    }

    public final void h() {
        View view;
        boolean zJ = y0.J(3);
        c0 c0Var = this.f528c;
        if (zJ) {
            Log.d("FragmentManager", "movefrom CREATE_VIEW: " + c0Var);
        }
        ViewGroup viewGroup = c0Var.O;
        if (viewGroup != null && (view = c0Var.P) != null) {
            viewGroup.removeView(view);
        }
        c0Var.D.u(1);
        if (c0Var.P != null) {
            i1 i1Var = c0Var.Y;
            i1Var.b();
            if (i1Var.f555d.f741c.compareTo(androidx.lifecycle.n.f720c) >= 0) {
                c0Var.Y.a(androidx.lifecycle.m.ON_DESTROY);
            }
        }
        c0Var.f461a = 1;
        c0Var.N = false;
        c0Var.t();
        if (!c0Var.N) {
            throw new o1(m1.c("Fragment ", c0Var, " did not call through to super.onDestroyView()"));
        }
        s.k kVar = x0.a.a(c0Var).f5788b.f5786b;
        if (kVar.f5201c > 0) {
            kVar.f5200b[0].getClass();
            throw new ClassCastException();
        }
        c0Var.f481z = false;
        this.f526a.v(c0Var, false);
        c0Var.O = null;
        c0Var.P = null;
        c0Var.Y = null;
        c0Var.Z.d(null);
        c0Var.f478w = false;
    }

    public final void i() {
        boolean zJ = y0.J(3);
        c0 c0Var = this.f528c;
        if (zJ) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + c0Var);
        }
        c0Var.f461a = -1;
        c0Var.N = false;
        c0Var.u();
        if (!c0Var.N) {
            throw new o1(m1.c("Fragment ", c0Var, " did not call through to super.onDetach()"));
        }
        z0 z0Var = c0Var.D;
        if (!z0Var.J) {
            z0Var.l();
            c0Var.D = new z0();
        }
        this.f526a.m(c0Var, false);
        c0Var.f461a = -1;
        c0Var.C = null;
        c0Var.E = null;
        c0Var.B = null;
        if (!c0Var.f475l || c0Var.m()) {
            c1 c1Var = (c1) this.f527b.f2165d;
            if (!((c1Var.f482b.containsKey(c0Var.f469e) && c1Var.f485e) ? c1Var.f486f : true)) {
                return;
            }
        }
        if (y0.J(3)) {
            Log.d("FragmentManager", "initState called for fragment: " + c0Var);
        }
        c0Var.j();
    }

    public final void j() {
        c0 c0Var = this.f528c;
        if (c0Var.f477v && c0Var.f478w && !c0Var.f481z) {
            if (y0.J(3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + c0Var);
            }
            Bundle bundle = c0Var.f463b;
            Bundle bundle2 = bundle != null ? bundle.getBundle("savedInstanceState") : null;
            c0Var.C(c0Var.v(bundle2), null, bundle2);
            View view = c0Var.P;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                c0Var.P.setTag(R.id.fragment_container_view_tag, c0Var);
                if (c0Var.I) {
                    c0Var.P.setVisibility(8);
                }
                Bundle bundle3 = c0Var.f463b;
                if (bundle3 != null) {
                    bundle3.getBundle("savedInstanceState");
                }
                c0Var.D.u(2);
                this.f526a.u(c0Var, c0Var.P, false);
                c0Var.f461a = 2;
            }
        }
    }

    public final void k() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        com.google.firebase.messaging.y yVar = this.f527b;
        boolean z5 = this.f529d;
        c0 c0Var = this.f528c;
        if (z5) {
            if (y0.J(2)) {
                Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + c0Var);
                return;
            }
            return;
        }
        try {
            this.f529d = true;
            boolean z8 = false;
            while (true) {
                int iD = d();
                int i6 = c0Var.f461a;
                int i9 = 3;
                if (iD == i6) {
                    if (!z8 && i6 == -1 && c0Var.f475l && !c0Var.m()) {
                        if (y0.J(3)) {
                            Log.d("FragmentManager", "Cleaning up state of never attached fragment: " + c0Var);
                        }
                        ((c1) yVar.f2165d).d(c0Var, true);
                        yVar.y(this);
                        if (y0.J(3)) {
                            Log.d("FragmentManager", "initState called for fragment: " + c0Var);
                        }
                        c0Var.j();
                    }
                    if (c0Var.T) {
                        if (c0Var.P != null && (viewGroup = c0Var.O) != null) {
                            o oVarI = o.i(viewGroup, c0Var.g());
                            if (c0Var.I) {
                                if (y0.J(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + c0Var);
                                }
                                oVarI.d(3, 1, this);
                            } else {
                                if (y0.J(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + c0Var);
                                }
                                oVarI.d(2, 1, this);
                            }
                        }
                        y0 y0Var = c0Var.B;
                        if (y0Var != null && c0Var.f474k && y0.K(c0Var)) {
                            y0Var.G = true;
                        }
                        c0Var.T = false;
                        c0Var.D.o();
                    }
                    this.f529d = false;
                    return;
                }
                if (iD <= i6) {
                    switch (i6 - 1) {
                        case -1:
                            i();
                            break;
                        case 0:
                            g();
                            break;
                        case 1:
                            h();
                            c0Var.f461a = 1;
                            break;
                        case 2:
                            c0Var.f478w = false;
                            c0Var.f461a = 2;
                            break;
                        case 3:
                            if (y0.J(3)) {
                                Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + c0Var);
                            }
                            if (c0Var.P != null && c0Var.f465c == null) {
                                o();
                            }
                            if (c0Var.P != null && (viewGroup2 = c0Var.O) != null) {
                                o oVarI2 = o.i(viewGroup2, c0Var.g());
                                if (y0.J(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + c0Var);
                                }
                                oVarI2.d(1, 3, this);
                            }
                            c0Var.f461a = 3;
                            break;
                        case 4:
                            q();
                            break;
                        case 5:
                            c0Var.f461a = 5;
                            break;
                        case 6:
                            l();
                            break;
                    }
                } else {
                    switch (i6 + 1) {
                        case 0:
                            c();
                            break;
                        case 1:
                            e();
                            break;
                        case 2:
                            j();
                            f();
                            break;
                        case 3:
                            a();
                            break;
                        case 4:
                            if (c0Var.P != null && (viewGroup3 = c0Var.O) != null) {
                                o oVarI3 = o.i(viewGroup3, c0Var.g());
                                int visibility = c0Var.P.getVisibility();
                                if (visibility == 0) {
                                    i9 = 2;
                                } else if (visibility == 4) {
                                    i9 = 4;
                                } else if (visibility != 8) {
                                    throw new IllegalArgumentException("Unknown visibility " + visibility);
                                }
                                a1.a.n(i9, "finalState");
                                if (y0.J(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + c0Var);
                                }
                                oVarI3.d(i9, 2, this);
                            }
                            c0Var.f461a = 4;
                            break;
                        case 5:
                            p();
                            break;
                        case 6:
                            c0Var.f461a = 6;
                            break;
                        case 7:
                            n();
                            break;
                    }
                }
                z8 = true;
            }
        } catch (Throwable th) {
            this.f529d = false;
            throw th;
        }
    }

    public final void l() {
        boolean zJ = y0.J(3);
        c0 c0Var = this.f528c;
        if (zJ) {
            Log.d("FragmentManager", "movefrom RESUMED: " + c0Var);
        }
        c0Var.D.u(5);
        if (c0Var.P != null) {
            c0Var.Y.a(androidx.lifecycle.m.ON_PAUSE);
        }
        c0Var.X.e(androidx.lifecycle.m.ON_PAUSE);
        c0Var.f461a = 6;
        c0Var.N = false;
        c0Var.w();
        if (!c0Var.N) {
            throw new o1(m1.c("Fragment ", c0Var, " did not call through to super.onPause()"));
        }
        this.f526a.n(c0Var, false);
    }

    public final void m(ClassLoader classLoader) {
        c0 c0Var = this.f528c;
        Bundle bundle = c0Var.f463b;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        if (c0Var.f463b.getBundle("savedInstanceState") == null) {
            c0Var.f463b.putBundle("savedInstanceState", new Bundle());
        }
        try {
            c0Var.f465c = c0Var.f463b.getSparseParcelableArray("viewState");
            c0Var.f467d = c0Var.f463b.getBundle("viewRegistryState");
            e1 e1Var = (e1) c0Var.f463b.getParcelable("state");
            if (e1Var != null) {
                c0Var.h = e1Var.f510m;
                c0Var.f472i = e1Var.f511v;
                c0Var.R = e1Var.f512w;
            }
            if (c0Var.R) {
                return;
            }
            c0Var.Q = true;
        } catch (BadParcelableException e9) {
            throw new IllegalStateException("Failed to restore view hierarchy state for fragment " + c0Var, e9);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void n() {
        /*
            Method dump skipped, instruction units count: 219
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.g1.n():void");
    }

    public final void o() {
        c0 c0Var = this.f528c;
        if (c0Var.P == null) {
            return;
        }
        if (y0.J(2)) {
            Log.v("FragmentManager", "Saving view state for fragment " + c0Var + " with view " + c0Var.P);
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        c0Var.P.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            c0Var.f465c = sparseArray;
        }
        Bundle bundle = new Bundle();
        c0Var.Y.f556e.c(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        c0Var.f467d = bundle;
    }

    public final void p() {
        boolean zJ = y0.J(3);
        c0 c0Var = this.f528c;
        if (zJ) {
            Log.d("FragmentManager", "moveto STARTED: " + c0Var);
        }
        c0Var.D.P();
        c0Var.D.z(true);
        c0Var.f461a = 5;
        c0Var.N = false;
        c0Var.z();
        if (!c0Var.N) {
            throw new o1(m1.c("Fragment ", c0Var, " did not call through to super.onStart()"));
        }
        androidx.lifecycle.v vVar = c0Var.X;
        androidx.lifecycle.m mVar = androidx.lifecycle.m.ON_START;
        vVar.e(mVar);
        if (c0Var.P != null) {
            c0Var.Y.f555d.e(mVar);
        }
        z0 z0Var = c0Var.D;
        z0Var.H = false;
        z0Var.I = false;
        z0Var.O.f487g = false;
        z0Var.u(5);
        this.f526a.s(c0Var, false);
    }

    public final void q() {
        boolean zJ = y0.J(3);
        c0 c0Var = this.f528c;
        if (zJ) {
            Log.d("FragmentManager", "movefrom STARTED: " + c0Var);
        }
        z0 z0Var = c0Var.D;
        z0Var.I = true;
        z0Var.O.f487g = true;
        z0Var.u(4);
        if (c0Var.P != null) {
            c0Var.Y.a(androidx.lifecycle.m.ON_STOP);
        }
        c0Var.X.e(androidx.lifecycle.m.ON_STOP);
        c0Var.f461a = 4;
        c0Var.N = false;
        c0Var.A();
        if (!c0Var.N) {
            throw new o1(m1.c("Fragment ", c0Var, " did not call through to super.onStop()"));
        }
        this.f526a.t(c0Var, false);
    }

    public g1(y4 y4Var, com.google.firebase.messaging.y yVar, ClassLoader classLoader, r0 r0Var, Bundle bundle) {
        this.f526a = y4Var;
        this.f527b = yVar;
        e1 e1Var = (e1) bundle.getParcelable("state");
        c0 c0VarA = r0Var.a(e1Var.f499a);
        c0VarA.f469e = e1Var.f500b;
        c0VarA.f477v = e1Var.f501c;
        c0VarA.f479x = e1Var.f502d;
        c0VarA.f480y = true;
        c0VarA.F = e1Var.f503e;
        c0VarA.G = e1Var.f504f;
        c0VarA.H = e1Var.f505g;
        c0VarA.K = e1Var.h;
        c0VarA.f475l = e1Var.f506i;
        c0VarA.J = e1Var.f507j;
        c0VarA.I = e1Var.f508k;
        c0VarA.W = androidx.lifecycle.n.values()[e1Var.f509l];
        c0VarA.h = e1Var.f510m;
        c0VarA.f472i = e1Var.f511v;
        c0VarA.R = e1Var.f512w;
        this.f528c = c0VarA;
        c0VarA.f463b = bundle;
        Bundle bundle2 = bundle.getBundle("arguments");
        if (bundle2 != null) {
            bundle2.setClassLoader(classLoader);
        }
        y0 y0Var = c0VarA.B;
        if (y0Var != null && (y0Var.H || y0Var.I)) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        c0VarA.f470f = bundle2;
        if (y0.J(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + c0VarA);
        }
    }

    public g1(y4 y4Var, com.google.firebase.messaging.y yVar, c0 c0Var, Bundle bundle) {
        this.f526a = y4Var;
        this.f527b = yVar;
        this.f528c = c0Var;
        c0Var.f465c = null;
        c0Var.f467d = null;
        c0Var.A = 0;
        c0Var.f478w = false;
        c0Var.f474k = false;
        c0 c0Var2 = c0Var.f471g;
        c0Var.h = c0Var2 != null ? c0Var2.f469e : null;
        c0Var.f471g = null;
        c0Var.f463b = bundle;
        c0Var.f470f = bundle.getBundle("arguments");
    }
}
