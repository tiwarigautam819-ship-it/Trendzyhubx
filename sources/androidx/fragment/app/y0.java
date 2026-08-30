package androidx.fragment.app;

import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.YaarWin.app.R;
import com.google.android.gms.internal.measurement.y4;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class y0 {
    public final r0 A;
    public final e5.e B;
    public d.g C;
    public d.g D;
    public d.g E;
    public ArrayDeque F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public boolean K;
    public ArrayList L;
    public ArrayList M;
    public ArrayList N;
    public c1 O;
    public final p P;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f641b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ArrayList f644e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public b.i0 f646g;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ArrayList f652n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final y4 f653o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final CopyOnWriteArrayList f654p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final n0 f655q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final n0 f656r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final n0 f657s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final n0 f658t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final q0 f659u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f660v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public g0 f661w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public h8.b f662x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public c0 f663y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public c0 f664z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f640a = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.google.firebase.messaging.y f642c = new com.google.firebase.messaging.y(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ArrayList f643d = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final m0 f645f = new m0(this);
    public a h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f647i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final p0 f648j = new p0(this);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AtomicInteger f649k = new AtomicInteger();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Map f650l = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Map f651m = Collections.synchronizedMap(new HashMap());

    /* JADX WARN: Type inference failed for: r0v16, types: [androidx.fragment.app.n0] */
    /* JADX WARN: Type inference failed for: r0v17, types: [androidx.fragment.app.n0] */
    /* JADX WARN: Type inference failed for: r0v18, types: [androidx.fragment.app.n0] */
    /* JADX WARN: Type inference failed for: r0v19, types: [androidx.fragment.app.n0] */
    public y0() {
        Collections.synchronizedMap(new HashMap());
        this.f652n = new ArrayList();
        this.f653o = new y4(this);
        this.f654p = new CopyOnWriteArrayList();
        final int i6 = 0;
        this.f655q = new i0.a(this) { // from class: androidx.fragment.app.n0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ y0 f587b;

            {
                this.f587b = this;
            }

            @Override // i0.a
            public final void accept(Object obj) {
                switch (i6) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        y0 y0Var = this.f587b;
                        if (y0Var.L()) {
                            y0Var.i(false, configuration);
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        y0 y0Var2 = this.f587b;
                        if (y0Var2.L() && num.intValue() == 80) {
                            y0Var2.m(false);
                            break;
                        }
                        break;
                    case 2:
                        y.i iVar = (y.i) obj;
                        y0 y0Var3 = this.f587b;
                        if (y0Var3.L()) {
                            boolean z5 = iVar.f6059a;
                            y0Var3.n(false);
                        }
                        break;
                    default:
                        y.v vVar = (y.v) obj;
                        y0 y0Var4 = this.f587b;
                        if (y0Var4.L()) {
                            boolean z8 = vVar.f6092a;
                            y0Var4.s(false);
                        }
                        break;
                }
            }
        };
        final int i9 = 1;
        this.f656r = new i0.a(this) { // from class: androidx.fragment.app.n0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ y0 f587b;

            {
                this.f587b = this;
            }

            @Override // i0.a
            public final void accept(Object obj) {
                switch (i9) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        y0 y0Var = this.f587b;
                        if (y0Var.L()) {
                            y0Var.i(false, configuration);
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        y0 y0Var2 = this.f587b;
                        if (y0Var2.L() && num.intValue() == 80) {
                            y0Var2.m(false);
                            break;
                        }
                        break;
                    case 2:
                        y.i iVar = (y.i) obj;
                        y0 y0Var3 = this.f587b;
                        if (y0Var3.L()) {
                            boolean z5 = iVar.f6059a;
                            y0Var3.n(false);
                        }
                        break;
                    default:
                        y.v vVar = (y.v) obj;
                        y0 y0Var4 = this.f587b;
                        if (y0Var4.L()) {
                            boolean z8 = vVar.f6092a;
                            y0Var4.s(false);
                        }
                        break;
                }
            }
        };
        final int i10 = 2;
        this.f657s = new i0.a(this) { // from class: androidx.fragment.app.n0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ y0 f587b;

            {
                this.f587b = this;
            }

            @Override // i0.a
            public final void accept(Object obj) {
                switch (i10) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        y0 y0Var = this.f587b;
                        if (y0Var.L()) {
                            y0Var.i(false, configuration);
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        y0 y0Var2 = this.f587b;
                        if (y0Var2.L() && num.intValue() == 80) {
                            y0Var2.m(false);
                            break;
                        }
                        break;
                    case 2:
                        y.i iVar = (y.i) obj;
                        y0 y0Var3 = this.f587b;
                        if (y0Var3.L()) {
                            boolean z5 = iVar.f6059a;
                            y0Var3.n(false);
                        }
                        break;
                    default:
                        y.v vVar = (y.v) obj;
                        y0 y0Var4 = this.f587b;
                        if (y0Var4.L()) {
                            boolean z8 = vVar.f6092a;
                            y0Var4.s(false);
                        }
                        break;
                }
            }
        };
        final int i11 = 3;
        this.f658t = new i0.a(this) { // from class: androidx.fragment.app.n0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ y0 f587b;

            {
                this.f587b = this;
            }

            @Override // i0.a
            public final void accept(Object obj) {
                switch (i11) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        y0 y0Var = this.f587b;
                        if (y0Var.L()) {
                            y0Var.i(false, configuration);
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        y0 y0Var2 = this.f587b;
                        if (y0Var2.L() && num.intValue() == 80) {
                            y0Var2.m(false);
                            break;
                        }
                        break;
                    case 2:
                        y.i iVar = (y.i) obj;
                        y0 y0Var3 = this.f587b;
                        if (y0Var3.L()) {
                            boolean z5 = iVar.f6059a;
                            y0Var3.n(false);
                        }
                        break;
                    default:
                        y.v vVar = (y.v) obj;
                        y0 y0Var4 = this.f587b;
                        if (y0Var4.L()) {
                            boolean z8 = vVar.f6092a;
                            y0Var4.s(false);
                        }
                        break;
                }
            }
        };
        this.f659u = new q0(this);
        this.f660v = -1;
        this.A = new r0(this);
        this.B = new e5.e(1);
        this.F = new ArrayDeque();
        this.P = new p(2, this);
    }

    public static HashSet E(a aVar) {
        HashSet hashSet = new HashSet();
        for (int i6 = 0; i6 < aVar.f418a.size(); i6++) {
            c0 c0Var = ((h1) aVar.f418a.get(i6)).f535b;
            if (c0Var != null && aVar.f424g) {
                hashSet.add(c0Var);
            }
        }
        return hashSet;
    }

    public static boolean J(int i6) {
        return Log.isLoggable("FragmentManager", i6);
    }

    public static boolean K(c0 c0Var) {
        c0Var.getClass();
        ArrayList arrayListS = c0Var.D.f642c.s();
        int size = arrayListS.size();
        boolean zK = false;
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayListS.get(i6);
            i6++;
            c0 c0Var2 = (c0) obj;
            if (c0Var2 != null) {
                zK = K(c0Var2);
            }
            if (zK) {
                return true;
            }
        }
        return false;
    }

    public static boolean M(c0 c0Var) {
        if (c0Var == null) {
            return true;
        }
        if (c0Var.M) {
            return c0Var.B == null || M(c0Var.E);
        }
        return false;
    }

    public static boolean N(c0 c0Var) {
        if (c0Var == null) {
            return true;
        }
        y0 y0Var = c0Var.B;
        return c0Var.equals(y0Var.f664z) && N(y0Var.f663y);
    }

    public static void b0(c0 c0Var) {
        if (J(2)) {
            Log.v("FragmentManager", "show: " + c0Var);
        }
        if (c0Var.I) {
            c0Var.I = false;
            c0Var.T = !c0Var.T;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x021e A[PHI: r15
      0x021e: PHI (r15v24 int) = (r15v23 int), (r15v26 int) binds: [B:103:0x020b, B:107:0x0215] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0166  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A(java.util.ArrayList r28, java.util.ArrayList r29, int r30, int r31) {
        /*
            Method dump skipped, instruction units count: 1458
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.y0.A(java.util.ArrayList, java.util.ArrayList, int, int):void");
    }

    public final c0 B(int i6) {
        com.google.firebase.messaging.y yVar = this.f642c;
        ArrayList arrayList = (ArrayList) yVar.f2162a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            c0 c0Var = (c0) arrayList.get(size);
            if (c0Var != null && c0Var.F == i6) {
                return c0Var;
            }
        }
        for (g1 g1Var : ((HashMap) yVar.f2163b).values()) {
            if (g1Var != null) {
                c0 c0Var2 = g1Var.f528c;
                if (c0Var2.F == i6) {
                    return c0Var2;
                }
            }
        }
        return null;
    }

    public final c0 C(String str) {
        com.google.firebase.messaging.y yVar = this.f642c;
        ArrayList arrayList = (ArrayList) yVar.f2162a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            c0 c0Var = (c0) arrayList.get(size);
            if (c0Var != null && str.equals(c0Var.H)) {
                return c0Var;
            }
        }
        for (g1 g1Var : ((HashMap) yVar.f2163b).values()) {
            if (g1Var != null) {
                c0 c0Var2 = g1Var.f528c;
                if (str.equals(c0Var2.H)) {
                    return c0Var2;
                }
            }
        }
        return null;
    }

    public final void D() {
        for (o oVar : e()) {
            if (oVar.f594f) {
                if (J(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Forcing postponed operations");
                }
                oVar.f594f = false;
                oVar.e();
            }
        }
    }

    public final ViewGroup F(c0 c0Var) {
        ViewGroup viewGroup = c0Var.O;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (c0Var.G <= 0 || !this.f662x.o()) {
            return null;
        }
        View viewN = this.f662x.n(c0Var.G);
        if (viewN instanceof ViewGroup) {
            return (ViewGroup) viewN;
        }
        return null;
    }

    public final r0 G() {
        c0 c0Var = this.f663y;
        return c0Var != null ? c0Var.B.G() : this.A;
    }

    public final e5.e H() {
        c0 c0Var = this.f663y;
        return c0Var != null ? c0Var.B.H() : this.B;
    }

    public final void I(c0 c0Var) {
        if (J(2)) {
            Log.v("FragmentManager", "hide: " + c0Var);
        }
        if (c0Var.I) {
            return;
        }
        c0Var.I = true;
        c0Var.T = true ^ c0Var.T;
        a0(c0Var);
    }

    public final boolean L() {
        c0 c0Var = this.f663y;
        if (c0Var == null) {
            return true;
        }
        return c0Var.k() && this.f663y.g().L();
    }

    public final void O(int i6, boolean z5) {
        g0 g0Var;
        if (this.f661w == null && i6 != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z5 || i6 != this.f660v) {
            this.f660v = i6;
            com.google.firebase.messaging.y yVar = this.f642c;
            HashMap map = (HashMap) yVar.f2163b;
            ArrayList arrayList = (ArrayList) yVar.f2162a;
            int size = arrayList.size();
            int i9 = 0;
            while (i9 < size) {
                Object obj = arrayList.get(i9);
                i9++;
                g1 g1Var = (g1) map.get(((c0) obj).f469e);
                if (g1Var != null) {
                    g1Var.k();
                }
            }
            for (g1 g1Var2 : map.values()) {
                if (g1Var2 != null) {
                    g1Var2.k();
                    c0 c0Var = g1Var2.f528c;
                    if (c0Var.f475l && !c0Var.m()) {
                        yVar.y(g1Var2);
                    }
                }
            }
            c0();
            if (this.G && (g0Var = this.f661w) != null && this.f660v == 7) {
                g0Var.f525e.invalidateMenu();
                this.G = false;
            }
        }
    }

    public final void P() {
        if (this.f661w == null) {
            return;
        }
        this.H = false;
        this.I = false;
        this.O.f487g = false;
        for (c0 c0Var : this.f642c.t()) {
            if (c0Var != null) {
                c0Var.D.P();
            }
        }
    }

    public final boolean Q() {
        z(false);
        y(true);
        c0 c0Var = this.f664z;
        if (c0Var != null && c0Var.d().Q()) {
            return true;
        }
        boolean zR = R(this.L, this.M, -1, 0);
        if (zR) {
            this.f641b = true;
            try {
                T(this.L, this.M);
            } finally {
                d();
            }
        }
        e0();
        if (this.K) {
            this.K = false;
            c0();
        }
        ((HashMap) this.f642c.f2163b).values().removeAll(Collections.singleton(null));
        return zR;
    }

    public final boolean R(ArrayList arrayList, ArrayList arrayList2, int i6, int i9) {
        boolean z5 = (i9 & 1) != 0;
        int size = -1;
        if (!this.f643d.isEmpty()) {
            if (i6 < 0) {
                size = z5 ? 0 : this.f643d.size() - 1;
            } else {
                int size2 = this.f643d.size() - 1;
                while (size2 >= 0) {
                    a aVar = (a) this.f643d.get(size2);
                    if (i6 >= 0 && i6 == aVar.f435s) {
                        break;
                    }
                    size2--;
                }
                if (size2 < 0) {
                    size = size2;
                } else if (z5) {
                    size = size2;
                    while (size > 0) {
                        a aVar2 = (a) this.f643d.get(size - 1);
                        if (i6 < 0 || i6 != aVar2.f435s) {
                            break;
                        }
                        size--;
                    }
                } else if (size2 != this.f643d.size() - 1) {
                    size = size2 + 1;
                }
            }
        }
        if (size < 0) {
            return false;
        }
        for (int size3 = this.f643d.size() - 1; size3 >= size; size3--) {
            arrayList.add((a) this.f643d.remove(size3));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    public final void S(c0 c0Var) {
        if (J(2)) {
            Log.v("FragmentManager", "remove: " + c0Var + " nesting=" + c0Var.A);
        }
        boolean zM = c0Var.m();
        if (c0Var.J && zM) {
            return;
        }
        com.google.firebase.messaging.y yVar = this.f642c;
        synchronized (((ArrayList) yVar.f2162a)) {
            ((ArrayList) yVar.f2162a).remove(c0Var);
        }
        c0Var.f474k = false;
        if (K(c0Var)) {
            this.G = true;
        }
        c0Var.f475l = true;
        a0(c0Var);
    }

    public final void T(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        int size = arrayList.size();
        int i6 = 0;
        int i9 = 0;
        while (i6 < size) {
            if (!((a) arrayList.get(i6)).f431o) {
                if (i9 != i6) {
                    A(arrayList, arrayList2, i9, i6);
                }
                i9 = i6 + 1;
                if (((Boolean) arrayList2.get(i6)).booleanValue()) {
                    while (i9 < size && ((Boolean) arrayList2.get(i9)).booleanValue() && !((a) arrayList.get(i9)).f431o) {
                        i9++;
                    }
                }
                A(arrayList, arrayList2, i6, i9);
                i6 = i9 - 1;
            }
            i6++;
        }
        if (i9 != size) {
            A(arrayList, arrayList2, i9, size);
        }
    }

    public final void U(Bundle bundle) {
        y4 y4Var;
        int i6;
        int i9;
        Bundle bundle2;
        g1 g1Var;
        Bundle bundle3;
        Bundle bundle4;
        for (String str : bundle.keySet()) {
            if (str.startsWith("result_") && (bundle4 = bundle.getBundle(str)) != null) {
                bundle4.setClassLoader(this.f661w.f522b.getClassLoader());
                this.f651m.put(str.substring(7), bundle4);
            }
        }
        HashMap map = new HashMap();
        for (String str2 : bundle.keySet()) {
            if (str2.startsWith("fragment_") && (bundle3 = bundle.getBundle(str2)) != null) {
                bundle3.setClassLoader(this.f661w.f522b.getClassLoader());
                map.put(str2.substring(9), bundle3);
            }
        }
        com.google.firebase.messaging.y yVar = this.f642c;
        HashMap map2 = (HashMap) yVar.f2164c;
        HashMap map3 = (HashMap) yVar.f2163b;
        map2.clear();
        map2.putAll(map);
        a1 a1Var = (a1) bundle.getParcelable("state");
        if (a1Var == null) {
            return;
        }
        map3.clear();
        ArrayList arrayList = a1Var.f436a;
        int size = arrayList.size();
        int i10 = 0;
        while (true) {
            y4Var = this.f653o;
            if (i10 >= size) {
                break;
            }
            Object obj = arrayList.get(i10);
            i10++;
            Bundle bundleE = yVar.E(null, (String) obj);
            if (bundleE != null) {
                c0 c0Var = (c0) this.O.f482b.get(((e1) bundleE.getParcelable("state")).f500b);
                if (c0Var != null) {
                    if (J(2)) {
                        i9 = 2;
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + c0Var);
                    } else {
                        i9 = 2;
                    }
                    g1Var = new g1(y4Var, yVar, c0Var, bundleE);
                    bundle2 = bundleE;
                } else {
                    i9 = 2;
                    bundle2 = bundleE;
                    g1Var = new g1(this.f653o, this.f642c, this.f661w.f522b.getClassLoader(), G(), bundleE);
                }
                c0 c0Var2 = g1Var.f528c;
                c0Var2.f463b = bundle2;
                c0Var2.B = this;
                if (J(i9)) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + c0Var2.f469e + "): " + c0Var2);
                }
                g1Var.m(this.f661w.f522b.getClassLoader());
                yVar.x(g1Var);
                g1Var.f530e = this.f660v;
            }
        }
        c1 c1Var = this.O;
        c1Var.getClass();
        ArrayList arrayList2 = new ArrayList(c1Var.f482b.values());
        int size2 = arrayList2.size();
        int i11 = 0;
        while (i11 < size2) {
            Object obj2 = arrayList2.get(i11);
            i11++;
            c0 c0Var3 = (c0) obj2;
            if (map3.get(c0Var3.f469e) == null) {
                if (J(2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + c0Var3 + " that was not found in the set of active Fragments " + a1Var.f436a);
                }
                this.O.g(c0Var3);
                c0Var3.B = this;
                g1 g1Var2 = new g1(y4Var, yVar, c0Var3);
                g1Var2.f530e = 1;
                g1Var2.k();
                c0Var3.f475l = true;
                g1Var2.k();
            }
        }
        ArrayList arrayList3 = a1Var.f437b;
        ((ArrayList) yVar.f2162a).clear();
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            int i12 = 0;
            while (i12 < size3) {
                Object obj3 = arrayList3.get(i12);
                i12++;
                String str3 = (String) obj3;
                c0 c0VarM = yVar.m(str3);
                if (c0VarM == null) {
                    throw new IllegalStateException(q2.x.g("No instantiated fragment for (", str3, ")"));
                }
                if (J(2)) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + str3 + "): " + c0VarM);
                }
                yVar.j(c0VarM);
            }
        }
        if (a1Var.f438c != null) {
            this.f643d = new ArrayList(a1Var.f438c.length);
            int i13 = 0;
            while (true) {
                b[] bVarArr = a1Var.f438c;
                if (i13 >= bVarArr.length) {
                    break;
                }
                b bVar = bVarArr[i13];
                ArrayList arrayList4 = bVar.f444b;
                a aVar = new a(this);
                int[] iArr = bVar.f443a;
                int i14 = 0;
                int i15 = 0;
                while (i14 < iArr.length) {
                    h1 h1Var = new h1();
                    int i16 = i14 + 1;
                    h1Var.f534a = iArr[i14];
                    if (J(2)) {
                        Log.v("FragmentManager", "Instantiate " + aVar + " op #" + i15 + " base fragment #" + iArr[i16]);
                    }
                    h1Var.h = androidx.lifecycle.n.values()[bVar.f445c[i15]];
                    h1Var.f541i = androidx.lifecycle.n.values()[bVar.f446d[i15]];
                    int i17 = i14 + 2;
                    h1Var.f536c = iArr[i16] != 0;
                    int i18 = iArr[i17];
                    h1Var.f537d = i18;
                    int i19 = iArr[i14 + 3];
                    h1Var.f538e = i19;
                    int i20 = i14 + 5;
                    int i21 = iArr[i14 + 4];
                    h1Var.f539f = i21;
                    i14 += 6;
                    int[] iArr2 = iArr;
                    int i22 = iArr2[i20];
                    h1Var.f540g = i22;
                    aVar.f419b = i18;
                    aVar.f420c = i19;
                    aVar.f421d = i21;
                    aVar.f422e = i22;
                    aVar.b(h1Var);
                    i15++;
                    iArr = iArr2;
                }
                aVar.f423f = bVar.f447e;
                aVar.h = bVar.f448f;
                aVar.f424g = true;
                aVar.f425i = bVar.h;
                aVar.f426j = bVar.f450i;
                aVar.f427k = bVar.f451j;
                aVar.f428l = bVar.f452k;
                aVar.f429m = bVar.f453l;
                aVar.f430n = bVar.f454m;
                aVar.f431o = bVar.f455v;
                aVar.f435s = bVar.f449g;
                for (int i23 = 0; i23 < arrayList4.size(); i23++) {
                    String str4 = (String) arrayList4.get(i23);
                    if (str4 != null) {
                        ((h1) aVar.f418a.get(i23)).f535b = yVar.m(str4);
                    }
                }
                aVar.c(1);
                if (J(2)) {
                    Log.v("FragmentManager", "restoreAllState: back stack #" + i13 + " (index " + aVar.f435s + "): " + aVar);
                    PrintWriter printWriter = new PrintWriter(new j1());
                    aVar.f("  ", printWriter, false);
                    printWriter.close();
                }
                this.f643d.add(aVar);
                i13++;
            }
            i6 = 0;
        } else {
            i6 = 0;
            this.f643d = new ArrayList();
        }
        this.f649k.set(a1Var.f439d);
        String str5 = a1Var.f440e;
        if (str5 != null) {
            c0 c0VarM2 = yVar.m(str5);
            this.f664z = c0VarM2;
            r(c0VarM2);
        }
        ArrayList arrayList5 = a1Var.f441f;
        if (arrayList5 != null) {
            for (int i24 = i6; i24 < arrayList5.size(); i24++) {
                this.f650l.put((String) arrayList5.get(i24), (c) a1Var.f442g.get(i24));
            }
        }
        this.F = new ArrayDeque(a1Var.h);
    }

    public final Bundle V() {
        int i6;
        ArrayList arrayList;
        b[] bVarArr;
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        D();
        w();
        z(true);
        this.H = true;
        this.O.f487g = true;
        com.google.firebase.messaging.y yVar = this.f642c;
        yVar.getClass();
        HashMap map = (HashMap) yVar.f2163b;
        ArrayList arrayList2 = new ArrayList(map.size());
        Iterator it = map.values().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            g1 g1Var = (g1) it.next();
            if (g1Var != null) {
                c0 c0Var = g1Var.f528c;
                String str = c0Var.f469e;
                Bundle bundle3 = new Bundle();
                c0 c0Var2 = g1Var.f528c;
                if (c0Var2.f461a == -1 && (bundle = c0Var2.f463b) != null) {
                    bundle3.putAll(bundle);
                }
                bundle3.putParcelable("state", new e1(c0Var2));
                if (c0Var2.f461a > -1) {
                    Bundle bundle4 = new Bundle();
                    c0Var2.y(bundle4);
                    if (!bundle4.isEmpty()) {
                        bundle3.putBundle("savedInstanceState", bundle4);
                    }
                    g1Var.f526a.r(c0Var2, bundle4, false);
                    Bundle bundle5 = new Bundle();
                    c0Var2.f462a0.c(bundle5);
                    if (!bundle5.isEmpty()) {
                        bundle3.putBundle("registryState", bundle5);
                    }
                    Bundle bundleV = c0Var2.D.V();
                    if (!bundleV.isEmpty()) {
                        bundle3.putBundle("childFragmentManager", bundleV);
                    }
                    if (c0Var2.P != null) {
                        g1Var.o();
                    }
                    SparseArray<? extends Parcelable> sparseArray = c0Var2.f465c;
                    if (sparseArray != null) {
                        bundle3.putSparseParcelableArray("viewState", sparseArray);
                    }
                    Bundle bundle6 = c0Var2.f467d;
                    if (bundle6 != null) {
                        bundle3.putBundle("viewRegistryState", bundle6);
                    }
                }
                Bundle bundle7 = c0Var2.f470f;
                if (bundle7 != null) {
                    bundle3.putBundle("arguments", bundle7);
                }
                yVar.E(bundle3, str);
                arrayList2.add(c0Var.f469e);
                if (J(2)) {
                    Log.v("FragmentManager", "Saved state of " + c0Var + ": " + c0Var.f463b);
                }
            }
        }
        HashMap map2 = (HashMap) this.f642c.f2164c;
        if (!map2.isEmpty()) {
            com.google.firebase.messaging.y yVar2 = this.f642c;
            synchronized (((ArrayList) yVar2.f2162a)) {
                try {
                    if (((ArrayList) yVar2.f2162a).isEmpty()) {
                        arrayList = null;
                    } else {
                        arrayList = new ArrayList(((ArrayList) yVar2.f2162a).size());
                        ArrayList arrayList3 = (ArrayList) yVar2.f2162a;
                        int size = arrayList3.size();
                        int i9 = 0;
                        while (i9 < size) {
                            Object obj = arrayList3.get(i9);
                            i9++;
                            c0 c0Var3 = (c0) obj;
                            arrayList.add(c0Var3.f469e);
                            if (J(2)) {
                                Log.v("FragmentManager", "saveAllState: adding fragment (" + c0Var3.f469e + "): " + c0Var3);
                            }
                        }
                    }
                } finally {
                }
            }
            int size2 = this.f643d.size();
            if (size2 > 0) {
                bVarArr = new b[size2];
                for (i6 = 0; i6 < size2; i6++) {
                    bVarArr[i6] = new b((a) this.f643d.get(i6));
                    if (J(2)) {
                        Log.v("FragmentManager", "saveAllState: adding back stack #" + i6 + ": " + this.f643d.get(i6));
                    }
                }
            } else {
                bVarArr = null;
            }
            a1 a1Var = new a1();
            a1Var.f440e = null;
            ArrayList arrayList4 = new ArrayList();
            a1Var.f441f = arrayList4;
            ArrayList arrayList5 = new ArrayList();
            a1Var.f442g = arrayList5;
            a1Var.f436a = arrayList2;
            a1Var.f437b = arrayList;
            a1Var.f438c = bVarArr;
            a1Var.f439d = this.f649k.get();
            c0 c0Var4 = this.f664z;
            if (c0Var4 != null) {
                a1Var.f440e = c0Var4.f469e;
            }
            arrayList4.addAll(this.f650l.keySet());
            arrayList5.addAll(this.f650l.values());
            a1Var.h = new ArrayList(this.F);
            bundle2.putParcelable("state", a1Var);
            for (String str2 : this.f651m.keySet()) {
                bundle2.putBundle(q2.x.k("result_", str2), (Bundle) this.f651m.get(str2));
            }
            for (String str3 : map2.keySet()) {
                bundle2.putBundle(q2.x.k("fragment_", str3), (Bundle) map2.get(str3));
            }
        } else if (J(2)) {
            Log.v("FragmentManager", "saveAllState: no fragments!");
            return bundle2;
        }
        return bundle2;
    }

    public final void W() {
        synchronized (this.f640a) {
            try {
                if (this.f640a.size() == 1) {
                    this.f661w.f523c.removeCallbacks(this.P);
                    this.f661w.f523c.post(this.P);
                    e0();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void X(c0 c0Var, boolean z5) {
        ViewGroup viewGroupF = F(c0Var);
        if (viewGroupF == null || !(viewGroupF instanceof j0)) {
            return;
        }
        ((j0) viewGroupF).setDrawDisappearingViewsLast(!z5);
    }

    public final void Y(c0 c0Var, androidx.lifecycle.n nVar) {
        if (c0Var.equals(this.f642c.m(c0Var.f469e)) && (c0Var.C == null || c0Var.B == this)) {
            c0Var.W = nVar;
            return;
        }
        throw new IllegalArgumentException("Fragment " + c0Var + " is not an active fragment of FragmentManager " + this);
    }

    public final void Z(c0 c0Var) {
        if (c0Var != null) {
            if (!c0Var.equals(this.f642c.m(c0Var.f469e)) || (c0Var.C != null && c0Var.B != this)) {
                throw new IllegalArgumentException("Fragment " + c0Var + " is not an active fragment of FragmentManager " + this);
            }
        }
        c0 c0Var2 = this.f664z;
        this.f664z = c0Var;
        r(c0Var2);
        r(this.f664z);
    }

    public final g1 a(c0 c0Var) {
        String str = c0Var.V;
        if (str != null) {
            t0.c.c(c0Var, str);
        }
        if (J(2)) {
            Log.v("FragmentManager", "add: " + c0Var);
        }
        g1 g1VarG = g(c0Var);
        c0Var.B = this;
        com.google.firebase.messaging.y yVar = this.f642c;
        yVar.x(g1VarG);
        if (!c0Var.J) {
            yVar.j(c0Var);
            c0Var.f475l = false;
            if (c0Var.P == null) {
                c0Var.T = false;
            }
            if (K(c0Var)) {
                this.G = true;
            }
        }
        return g1VarG;
    }

    public final void a0(c0 c0Var) {
        ViewGroup viewGroupF = F(c0Var);
        if (viewGroupF != null) {
            z zVar = c0Var.S;
            if ((zVar == null ? 0 : zVar.f669e) + (zVar == null ? 0 : zVar.f668d) + (zVar == null ? 0 : zVar.f667c) + (zVar == null ? 0 : zVar.f666b) > 0) {
                if (viewGroupF.getTag(R.id.visible_removing_fragment_view_tag) == null) {
                    viewGroupF.setTag(R.id.visible_removing_fragment_view_tag, c0Var);
                }
                c0 c0Var2 = (c0) viewGroupF.getTag(R.id.visible_removing_fragment_view_tag);
                z zVar2 = c0Var.S;
                boolean z5 = zVar2 != null ? zVar2.f665a : false;
                if (c0Var2.S == null) {
                    return;
                }
                c0Var2.b().f665a = z5;
            }
        }
    }

    public final void b(g0 g0Var, h8.b bVar, c0 c0Var) {
        if (this.f661w != null) {
            throw new IllegalStateException("Already attached");
        }
        this.f661w = g0Var;
        this.f662x = bVar;
        this.f663y = c0Var;
        CopyOnWriteArrayList copyOnWriteArrayList = this.f654p;
        if (c0Var != null) {
            copyOnWriteArrayList.add(new s0(c0Var));
        } else if (g0Var != null) {
            copyOnWriteArrayList.add(g0Var);
        }
        if (this.f663y != null) {
            e0();
        }
        if (g0Var != null) {
            b.i0 onBackPressedDispatcher = g0Var.f525e.getOnBackPressedDispatcher();
            this.f646g = onBackPressedDispatcher;
            onBackPressedDispatcher.a(c0Var != null ? c0Var : g0Var, this.f648j);
        }
        if (c0Var != null) {
            c1 c1Var = c0Var.B.O;
            HashMap map = c1Var.f483c;
            c1 c1Var2 = (c1) map.get(c0Var.f469e);
            if (c1Var2 == null) {
                c1Var2 = new c1(c1Var.f485e);
                map.put(c0Var.f469e, c1Var2);
            }
            this.O = c1Var2;
        } else if (g0Var != null) {
            this.O = (c1) new k1.h(g0Var.f525e.getViewModelStore(), c1.h).r(c1.class);
        } else {
            this.O = new c1(false);
        }
        c1 c1Var3 = this.O;
        c1Var3.f487g = this.H || this.I;
        this.f642c.f2165d = c1Var3;
        g0 g0Var2 = this.f661w;
        if (g0Var2 != null && c0Var == null) {
            e1.e savedStateRegistry = g0Var2.f525e.getSavedStateRegistry();
            savedStateRegistry.c("android:support:fragments", new d0(1, (z0) this));
            Bundle bundleA = savedStateRegistry.a("android:support:fragments");
            if (bundleA != null) {
                U(bundleA);
            }
        }
        g0 g0Var3 = this.f661w;
        if (g0Var3 != null) {
            d.h activityResultRegistry = g0Var3.f525e.getActivityResultRegistry();
            String strK = q2.x.k("FragmentManager:", c0Var != null ? q2.x.h(new StringBuilder(), c0Var.f469e, ":") : "");
            z0 z0Var = (z0) this;
            this.C = activityResultRegistry.d(q2.x.f(strK, "StartActivityForResult"), new t0(2), new o5.c(2, z0Var));
            this.D = activityResultRegistry.d(q2.x.f(strK, "StartIntentSenderForResult"), new t0(0), new o0(z0Var, 1));
            this.E = activityResultRegistry.d(q2.x.f(strK, "RequestPermissions"), new t0(1), new o0(z0Var, 0));
        }
        g0 g0Var4 = this.f661w;
        if (g0Var4 != null) {
            g0Var4.f525e.addOnConfigurationChangedListener(this.f655q);
        }
        g0 g0Var5 = this.f661w;
        if (g0Var5 != null) {
            g0Var5.f525e.addOnTrimMemoryListener(this.f656r);
        }
        g0 g0Var6 = this.f661w;
        if (g0Var6 != null) {
            g0Var6.f525e.addOnMultiWindowModeChangedListener(this.f657s);
        }
        g0 g0Var7 = this.f661w;
        if (g0Var7 != null) {
            g0Var7.f525e.addOnPictureInPictureModeChangedListener(this.f658t);
        }
        g0 g0Var8 = this.f661w;
        if (g0Var8 == null || c0Var != null) {
            return;
        }
        g0Var8.f525e.addMenuProvider(this.f659u);
    }

    public final void c(c0 c0Var) {
        if (J(2)) {
            Log.v("FragmentManager", "attach: " + c0Var);
        }
        if (c0Var.J) {
            c0Var.J = false;
            if (c0Var.f474k) {
                return;
            }
            this.f642c.j(c0Var);
            if (J(2)) {
                Log.v("FragmentManager", "add from attach: " + c0Var);
            }
            if (K(c0Var)) {
                this.G = true;
            }
        }
    }

    public final void c0() {
        ArrayList arrayListR = this.f642c.r();
        int size = arrayListR.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayListR.get(i6);
            i6++;
            g1 g1Var = (g1) obj;
            c0 c0Var = g1Var.f528c;
            if (c0Var.Q) {
                if (this.f641b) {
                    this.K = true;
                } else {
                    c0Var.Q = false;
                    g1Var.k();
                }
            }
        }
    }

    public final void d() {
        this.f641b = false;
        this.M.clear();
        this.L.clear();
    }

    public final void d0(IllegalStateException illegalStateException) {
        Log.e("FragmentManager", illegalStateException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new j1());
        g0 g0Var = this.f661w;
        if (g0Var == null) {
            try {
                v("  ", null, printWriter, new String[0]);
                throw illegalStateException;
            } catch (Exception e9) {
                Log.e("FragmentManager", "Failed dumping state", e9);
                throw illegalStateException;
            }
        }
        try {
            g0Var.f525e.dump("  ", null, printWriter, new String[0]);
            throw illegalStateException;
        } catch (Exception e10) {
            Log.e("FragmentManager", "Failed dumping state", e10);
            throw illegalStateException;
        }
    }

    public final HashSet e() {
        o oVar;
        HashSet hashSet = new HashSet();
        ArrayList arrayListR = this.f642c.r();
        int size = arrayListR.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayListR.get(i6);
            i6++;
            ViewGroup viewGroup = ((g1) obj).f528c.O;
            if (viewGroup != null) {
                d7.g.f("factory", H());
                Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
                if (tag instanceof o) {
                    oVar = (o) tag;
                } else {
                    oVar = new o(viewGroup);
                    viewGroup.setTag(R.id.special_effects_controller_view_tag, oVar);
                }
                hashSet.add(oVar);
            }
        }
        return hashSet;
    }

    public final void e0() {
        synchronized (this.f640a) {
            try {
                if (!this.f640a.isEmpty()) {
                    p0 p0Var = this.f648j;
                    p0Var.f834a = true;
                    b.h0 h0Var = p0Var.f836c;
                    if (h0Var != null) {
                        h0Var.b();
                    }
                    if (J(3)) {
                        Log.d("FragmentManager", "FragmentManager " + this + " enabling OnBackPressedCallback, caused by non-empty pending actions");
                    }
                    return;
                }
                boolean z5 = this.f643d.size() + (this.h != null ? 1 : 0) > 0 && N(this.f663y);
                if (J(3)) {
                    Log.d("FragmentManager", "OnBackPressedCallback for FragmentManager " + this + " enabled state is " + z5);
                }
                p0 p0Var2 = this.f648j;
                p0Var2.f834a = z5;
                b.h0 h0Var2 = p0Var2.f836c;
                if (h0Var2 != null) {
                    h0Var2.b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final HashSet f(ArrayList arrayList, int i6, int i9) {
        ViewGroup viewGroup;
        HashSet hashSet = new HashSet();
        while (i6 < i9) {
            ArrayList arrayList2 = ((a) arrayList.get(i6)).f418a;
            int size = arrayList2.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList2.get(i10);
                i10++;
                c0 c0Var = ((h1) obj).f535b;
                if (c0Var != null && (viewGroup = c0Var.O) != null) {
                    hashSet.add(o.i(viewGroup, this));
                }
            }
            i6++;
        }
        return hashSet;
    }

    public final g1 g(c0 c0Var) {
        String str = c0Var.f469e;
        com.google.firebase.messaging.y yVar = this.f642c;
        g1 g1Var = (g1) ((HashMap) yVar.f2163b).get(str);
        if (g1Var != null) {
            return g1Var;
        }
        g1 g1Var2 = new g1(this.f653o, yVar, c0Var);
        g1Var2.m(this.f661w.f522b.getClassLoader());
        g1Var2.f530e = this.f660v;
        return g1Var2;
    }

    public final void h(c0 c0Var) {
        if (J(2)) {
            Log.v("FragmentManager", "detach: " + c0Var);
        }
        if (c0Var.J) {
            return;
        }
        c0Var.J = true;
        if (c0Var.f474k) {
            if (J(2)) {
                Log.v("FragmentManager", "remove from detach: " + c0Var);
            }
            com.google.firebase.messaging.y yVar = this.f642c;
            synchronized (((ArrayList) yVar.f2162a)) {
                ((ArrayList) yVar.f2162a).remove(c0Var);
            }
            c0Var.f474k = false;
            if (K(c0Var)) {
                this.G = true;
            }
            a0(c0Var);
        }
    }

    public final void i(boolean z5, Configuration configuration) {
        if (z5 && this.f661w != null) {
            d0(new IllegalStateException("Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."));
            throw null;
        }
        for (c0 c0Var : this.f642c.t()) {
            if (c0Var != null) {
                c0Var.onConfigurationChanged(configuration);
                if (z5) {
                    c0Var.D.i(true, configuration);
                }
            }
        }
    }

    public final boolean j() {
        if (this.f660v >= 1) {
            for (c0 c0Var : this.f642c.t()) {
                if (c0Var != null) {
                    if (!c0Var.I ? c0Var.D.j() : false) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean k() {
        if (this.f660v < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z5 = false;
        for (c0 c0Var : this.f642c.t()) {
            if (c0Var != null && M(c0Var)) {
                if (!c0Var.I ? c0Var.D.k() : false) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(c0Var);
                    z5 = true;
                }
            }
        }
        if (this.f644e != null) {
            for (int i6 = 0; i6 < this.f644e.size(); i6++) {
                c0 c0Var2 = (c0) this.f644e.get(i6);
                if (arrayList == null || !arrayList.contains(c0Var2)) {
                    c0Var2.getClass();
                }
            }
        }
        this.f644e = arrayList;
        return z5;
    }

    public final void l() {
        boolean z5;
        this.J = true;
        z(true);
        w();
        g0 g0Var = this.f661w;
        com.google.firebase.messaging.y yVar = this.f642c;
        if (g0Var != null) {
            z5 = ((c1) yVar.f2165d).f486f;
        } else {
            z5 = m1.d(g0Var.f522b) ? !r1.isChangingConfigurations() : true;
        }
        if (z5) {
            Iterator it = this.f650l.values().iterator();
            while (it.hasNext()) {
                ArrayList arrayList = ((c) it.next()).f458a;
                int size = arrayList.size();
                int i6 = 0;
                while (i6 < size) {
                    Object obj = arrayList.get(i6);
                    i6++;
                    ((c1) yVar.f2165d).e((String) obj, false);
                }
            }
        }
        u(-1);
        g0 g0Var2 = this.f661w;
        if (g0Var2 != null) {
            g0Var2.f525e.removeOnTrimMemoryListener(this.f656r);
        }
        g0 g0Var3 = this.f661w;
        if (g0Var3 != null) {
            g0Var3.f525e.removeOnConfigurationChangedListener(this.f655q);
        }
        g0 g0Var4 = this.f661w;
        if (g0Var4 != null) {
            g0Var4.f525e.removeOnMultiWindowModeChangedListener(this.f657s);
        }
        g0 g0Var5 = this.f661w;
        if (g0Var5 != null) {
            g0Var5.f525e.removeOnPictureInPictureModeChangedListener(this.f658t);
        }
        g0 g0Var6 = this.f661w;
        if ((g0Var6 != null) && this.f663y == null) {
            g0Var6.f525e.removeMenuProvider(this.f659u);
        }
        this.f661w = null;
        this.f662x = null;
        this.f663y = null;
        if (this.f646g != null) {
            Iterator it2 = this.f648j.f835b.iterator();
            while (it2.hasNext()) {
                ((b.c) it2.next()).cancel();
            }
            this.f646g = null;
        }
        d.g gVar = this.C;
        if (gVar != null) {
            gVar.b();
            this.D.b();
            this.E.b();
        }
    }

    public final void m(boolean z5) {
        if (z5 && this.f661w != null) {
            d0(new IllegalStateException("Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."));
            throw null;
        }
        for (c0 c0Var : this.f642c.t()) {
            if (c0Var != null) {
                c0Var.N = true;
                if (z5) {
                    c0Var.D.m(true);
                }
            }
        }
    }

    public final void n(boolean z5) {
        if (z5 && this.f661w != null) {
            d0(new IllegalStateException("Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."));
            throw null;
        }
        for (c0 c0Var : this.f642c.t()) {
            if (c0Var != null && z5) {
                c0Var.D.n(true);
            }
        }
    }

    public final void o() {
        ArrayList arrayListS = this.f642c.s();
        int size = arrayListS.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayListS.get(i6);
            i6++;
            c0 c0Var = (c0) obj;
            if (c0Var != null) {
                c0Var.l();
                c0Var.D.o();
            }
        }
    }

    public final boolean p() {
        if (this.f660v >= 1) {
            for (c0 c0Var : this.f642c.t()) {
                if (c0Var != null) {
                    if (!c0Var.I ? c0Var.D.p() : false) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final void q() {
        if (this.f660v < 1) {
            return;
        }
        for (c0 c0Var : this.f642c.t()) {
            if (c0Var != null && !c0Var.I) {
                c0Var.D.q();
            }
        }
    }

    public final void r(c0 c0Var) {
        if (c0Var != null) {
            if (c0Var.equals(this.f642c.m(c0Var.f469e))) {
                c0Var.B.getClass();
                boolean zN = N(c0Var);
                Boolean bool = c0Var.f473j;
                if (bool == null || bool.booleanValue() != zN) {
                    c0Var.f473j = Boolean.valueOf(zN);
                    z0 z0Var = c0Var.D;
                    z0Var.e0();
                    z0Var.r(z0Var.f664z);
                }
            }
        }
    }

    public final void s(boolean z5) {
        if (z5 && this.f661w != null) {
            d0(new IllegalStateException("Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."));
            throw null;
        }
        for (c0 c0Var : this.f642c.t()) {
            if (c0Var != null && z5) {
                c0Var.D.s(true);
            }
        }
    }

    public final boolean t() {
        if (this.f660v < 1) {
            return false;
        }
        boolean z5 = false;
        for (c0 c0Var : this.f642c.t()) {
            if (c0Var != null && M(c0Var)) {
                if (!c0Var.I ? c0Var.D.t() : false) {
                    z5 = true;
                }
            }
        }
        return z5;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        c0 c0Var = this.f663y;
        if (c0Var != null) {
            sb.append(c0Var.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.f663y)));
            sb.append("}");
        } else {
            g0 g0Var = this.f661w;
            if (g0Var != null) {
                sb.append(g0Var.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.f661w)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    public final void u(int i6) {
        try {
            this.f641b = true;
            for (g1 g1Var : ((HashMap) this.f642c.f2163b).values()) {
                if (g1Var != null) {
                    g1Var.f530e = i6;
                }
            }
            O(i6, false);
            Iterator it = e().iterator();
            while (it.hasNext()) {
                ((o) it.next()).h();
            }
            this.f641b = false;
            z(true);
        } catch (Throwable th) {
            this.f641b = false;
            throw th;
        }
    }

    public final void v(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        String str2;
        String strF = q2.x.f(str, "    ");
        com.google.firebase.messaging.y yVar = this.f642c;
        ArrayList arrayList = (ArrayList) yVar.f2162a;
        String strF2 = q2.x.f(str, "    ");
        HashMap map = (HashMap) yVar.f2163b;
        if (!map.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (g1 g1Var : map.values()) {
                printWriter.print(str);
                if (g1Var != null) {
                    c0 c0Var = g1Var.f528c;
                    printWriter.println(c0Var);
                    c0Var.getClass();
                    printWriter.print(strF2);
                    printWriter.print("mFragmentId=#");
                    printWriter.print(Integer.toHexString(c0Var.F));
                    printWriter.print(" mContainerId=#");
                    printWriter.print(Integer.toHexString(c0Var.G));
                    printWriter.print(" mTag=");
                    printWriter.println(c0Var.H);
                    printWriter.print(strF2);
                    printWriter.print("mState=");
                    printWriter.print(c0Var.f461a);
                    printWriter.print(" mWho=");
                    printWriter.print(c0Var.f469e);
                    printWriter.print(" mBackStackNesting=");
                    printWriter.println(c0Var.A);
                    printWriter.print(strF2);
                    printWriter.print("mAdded=");
                    printWriter.print(c0Var.f474k);
                    printWriter.print(" mRemoving=");
                    printWriter.print(c0Var.f475l);
                    printWriter.print(" mFromLayout=");
                    printWriter.print(c0Var.f477v);
                    printWriter.print(" mInLayout=");
                    printWriter.println(c0Var.f478w);
                    printWriter.print(strF2);
                    printWriter.print("mHidden=");
                    printWriter.print(c0Var.I);
                    printWriter.print(" mDetached=");
                    printWriter.print(c0Var.J);
                    printWriter.print(" mMenuVisible=");
                    printWriter.print(c0Var.M);
                    printWriter.print(" mHasMenu=");
                    printWriter.println(false);
                    printWriter.print(strF2);
                    printWriter.print("mRetainInstance=");
                    printWriter.print(c0Var.K);
                    printWriter.print(" mUserVisibleHint=");
                    printWriter.println(c0Var.R);
                    if (c0Var.B != null) {
                        printWriter.print(strF2);
                        printWriter.print("mFragmentManager=");
                        printWriter.println(c0Var.B);
                    }
                    if (c0Var.C != null) {
                        printWriter.print(strF2);
                        printWriter.print("mHost=");
                        printWriter.println(c0Var.C);
                    }
                    if (c0Var.E != null) {
                        printWriter.print(strF2);
                        printWriter.print("mParentFragment=");
                        printWriter.println(c0Var.E);
                    }
                    if (c0Var.f470f != null) {
                        printWriter.print(strF2);
                        printWriter.print("mArguments=");
                        printWriter.println(c0Var.f470f);
                    }
                    if (c0Var.f463b != null) {
                        printWriter.print(strF2);
                        printWriter.print("mSavedFragmentState=");
                        printWriter.println(c0Var.f463b);
                    }
                    if (c0Var.f465c != null) {
                        printWriter.print(strF2);
                        printWriter.print("mSavedViewState=");
                        printWriter.println(c0Var.f465c);
                    }
                    if (c0Var.f467d != null) {
                        printWriter.print(strF2);
                        printWriter.print("mSavedViewRegistryState=");
                        printWriter.println(c0Var.f467d);
                    }
                    Object objM = c0Var.f471g;
                    if (objM == null) {
                        y0 y0Var = c0Var.B;
                        objM = (y0Var == null || (str2 = c0Var.h) == null) ? null : y0Var.f642c.m(str2);
                    }
                    if (objM != null) {
                        printWriter.print(strF2);
                        printWriter.print("mTarget=");
                        printWriter.print(objM);
                        printWriter.print(" mTargetRequestCode=");
                        printWriter.println(c0Var.f472i);
                    }
                    printWriter.print(strF2);
                    printWriter.print("mPopDirection=");
                    z zVar = c0Var.S;
                    printWriter.println(zVar == null ? false : zVar.f665a);
                    z zVar2 = c0Var.S;
                    if ((zVar2 == null ? 0 : zVar2.f666b) != 0) {
                        printWriter.print(strF2);
                        printWriter.print("getEnterAnim=");
                        z zVar3 = c0Var.S;
                        printWriter.println(zVar3 == null ? 0 : zVar3.f666b);
                    }
                    z zVar4 = c0Var.S;
                    if ((zVar4 == null ? 0 : zVar4.f667c) != 0) {
                        printWriter.print(strF2);
                        printWriter.print("getExitAnim=");
                        z zVar5 = c0Var.S;
                        printWriter.println(zVar5 == null ? 0 : zVar5.f667c);
                    }
                    z zVar6 = c0Var.S;
                    if ((zVar6 == null ? 0 : zVar6.f668d) != 0) {
                        printWriter.print(strF2);
                        printWriter.print("getPopEnterAnim=");
                        z zVar7 = c0Var.S;
                        printWriter.println(zVar7 == null ? 0 : zVar7.f668d);
                    }
                    z zVar8 = c0Var.S;
                    if ((zVar8 == null ? 0 : zVar8.f669e) != 0) {
                        printWriter.print(strF2);
                        printWriter.print("getPopExitAnim=");
                        z zVar9 = c0Var.S;
                        printWriter.println(zVar9 != null ? zVar9.f669e : 0);
                    }
                    if (c0Var.O != null) {
                        printWriter.print(strF2);
                        printWriter.print("mContainer=");
                        printWriter.println(c0Var.O);
                    }
                    if (c0Var.P != null) {
                        printWriter.print(strF2);
                        printWriter.print("mView=");
                        printWriter.println(c0Var.P);
                    }
                    if (c0Var.e() != null) {
                        x0.a.a(c0Var).b(strF2, printWriter);
                    }
                    printWriter.print(strF2);
                    printWriter.println("Child " + c0Var.D + ":");
                    c0Var.D.v(q2.x.f(strF2, "  "), fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size2 = arrayList.size();
        if (size2 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i6 = 0; i6 < size2; i6++) {
                c0 c0Var2 = (c0) arrayList.get(i6);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i6);
                printWriter.print(": ");
                printWriter.println(c0Var2.toString());
            }
        }
        ArrayList arrayList2 = this.f644e;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i9 = 0; i9 < size; i9++) {
                c0 c0Var3 = (c0) this.f644e.get(i9);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i9);
                printWriter.print(": ");
                printWriter.println(c0Var3.toString());
            }
        }
        int size3 = this.f643d.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i10 = 0; i10 < size3; i10++) {
                a aVar = (a) this.f643d.get(i10);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i10);
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.f(strF, printWriter, true);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f649k.get());
        synchronized (this.f640a) {
            try {
                int size4 = this.f640a.size();
                if (size4 > 0) {
                    printWriter.print(str);
                    printWriter.println("Pending Actions:");
                    for (int i11 = 0; i11 < size4; i11++) {
                        Object obj = (v0) this.f640a.get(i11);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i11);
                        printWriter.print(": ");
                        printWriter.println(obj);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f661w);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f662x);
        if (this.f663y != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f663y);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f660v);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.H);
        printWriter.print(" mStopped=");
        printWriter.print(this.I);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.J);
        if (this.G) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.G);
        }
    }

    public final void w() {
        Iterator it = e().iterator();
        while (it.hasNext()) {
            ((o) it.next()).h();
        }
    }

    public final void x(v0 v0Var, boolean z5) {
        if (!z5) {
            if (this.f661w == null) {
                if (!this.J) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            if (this.H || this.I) {
                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
            }
        }
        synchronized (this.f640a) {
            try {
                if (this.f661w == null) {
                    if (!z5) {
                        throw new IllegalStateException("Activity has been destroyed");
                    }
                } else {
                    this.f640a.add(v0Var);
                    W();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void y(boolean z5) {
        if (this.f641b) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.f661w == null) {
            if (!this.J) {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new IllegalStateException("FragmentManager has been destroyed");
        }
        if (Looper.myLooper() != this.f661w.f523c.getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z5 && (this.H || this.I)) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.L == null) {
            this.L = new ArrayList();
            this.M = new ArrayList();
        }
    }

    public final boolean z(boolean z5) {
        boolean zA;
        a aVar;
        y(z5);
        if (!this.f647i && (aVar = this.h) != null) {
            aVar.f434r = false;
            if (J(3)) {
                Log.d("FragmentManager", "Reversing mTransitioningOp " + this.h + " as part of execPendingActions for actions " + this.f640a);
            }
            this.h.d(false, false);
            this.f640a.add(0, this.h);
            ArrayList arrayList = this.h.f418a;
            int size = arrayList.size();
            int i6 = 0;
            while (i6 < size) {
                Object obj = arrayList.get(i6);
                i6++;
                c0 c0Var = ((h1) obj).f535b;
                if (c0Var != null) {
                    c0Var.f476m = false;
                }
            }
            this.h = null;
        }
        boolean z8 = false;
        while (true) {
            ArrayList arrayList2 = this.L;
            ArrayList arrayList3 = this.M;
            synchronized (this.f640a) {
                if (this.f640a.isEmpty()) {
                    zA = false;
                } else {
                    try {
                        int size2 = this.f640a.size();
                        zA = false;
                        for (int i9 = 0; i9 < size2; i9++) {
                            zA |= ((v0) this.f640a.get(i9)).a(arrayList2, arrayList3);
                        }
                    } finally {
                    }
                }
            }
            if (!zA) {
                break;
            }
            z8 = true;
            this.f641b = true;
            try {
                T(this.L, this.M);
            } finally {
                d();
            }
        }
        e0();
        if (this.K) {
            this.K = false;
            c0();
        }
        ((HashMap) this.f642c.f2163b).values().removeAll(Collections.singleton(null));
        return z8;
    }
}
