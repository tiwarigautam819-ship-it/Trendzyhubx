package androidx.fragment.app;

import android.util.Log;
import android.view.ViewGroup;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f572a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f573b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c0 f574c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f575d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f576e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f577f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f578g;
    public boolean h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f579i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f580j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList f581k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final g1 f582l;

    public l1(int i6, int i9, g1 g1Var) {
        a1.a.n(i6, "finalState");
        a1.a.n(i9, "lifecycleImpact");
        c0 c0Var = g1Var.f528c;
        d7.g.e("fragmentStateManager.fragment", c0Var);
        a1.a.n(i6, "finalState");
        a1.a.n(i9, "lifecycleImpact");
        d7.g.f("fragment", c0Var);
        this.f572a = i6;
        this.f573b = i9;
        this.f574c = c0Var;
        this.f575d = new ArrayList();
        this.f579i = true;
        ArrayList arrayList = new ArrayList();
        this.f580j = arrayList;
        this.f581k = arrayList;
        this.f582l = g1Var;
    }

    public final void a(ViewGroup viewGroup) {
        d7.g.f("container", viewGroup);
        this.h = false;
        if (this.f576e) {
            return;
        }
        this.f576e = true;
        if (this.f580j.isEmpty()) {
            b();
            return;
        }
        for (k1 k1Var : s6.g.w(this.f581k)) {
            k1Var.getClass();
            if (!k1Var.f568b) {
                k1Var.a(viewGroup);
            }
            k1Var.f568b = true;
        }
    }

    public final void b() {
        this.h = false;
        if (!this.f577f) {
            if (y0.J(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
            }
            this.f577f = true;
            ArrayList arrayList = this.f575d;
            int size = arrayList.size();
            int i6 = 0;
            while (i6 < size) {
                Object obj = arrayList.get(i6);
                i6++;
                ((Runnable) obj).run();
            }
        }
        this.f574c.f476m = false;
        this.f582l.k();
    }

    public final void c(k1 k1Var) {
        d7.g.f("effect", k1Var);
        ArrayList arrayList = this.f580j;
        if (arrayList.remove(k1Var) && arrayList.isEmpty()) {
            b();
        }
    }

    public final void d(int i6, int i9) {
        a1.a.n(i6, "finalState");
        a1.a.n(i9, "lifecycleImpact");
        int iE = m1.e(i9);
        c0 c0Var = this.f574c;
        if (iE == 0) {
            if (this.f572a != 1) {
                if (y0.J(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + c0Var + " mFinalState = " + m1.g(this.f572a) + " -> " + m1.g(i6) + '.');
                }
                this.f572a = i6;
                return;
            }
            return;
        }
        if (iE == 1) {
            if (this.f572a == 1) {
                if (y0.J(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + c0Var + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + m1.f(this.f573b) + " to ADDING.");
                }
                this.f572a = 2;
                this.f573b = 2;
                this.f579i = true;
                return;
            }
            return;
        }
        if (iE != 2) {
            return;
        }
        if (y0.J(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: For fragment " + c0Var + " mFinalState = " + m1.g(this.f572a) + " -> REMOVED. mLifecycleImpact  = " + m1.f(this.f573b) + " to REMOVING.");
        }
        this.f572a = 1;
        this.f573b = 3;
        this.f579i = true;
    }

    public final String toString() {
        return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {finalState = " + m1.g(this.f572a) + " lifecycleImpact = " + m1.f(this.f573b) + " fragment = " + this.f574c + '}';
    }
}
