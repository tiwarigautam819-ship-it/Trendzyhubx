package androidx.fragment.app;

import android.animation.AnimatorSet;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.YaarWin.app.R;
import com.google.android.gms.internal.measurement.y4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ViewGroup f589a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f590b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f591c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f592d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f593e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f594f;

    public o(ViewGroup viewGroup) {
        d7.g.f("container", viewGroup);
        this.f589a = viewGroup;
        this.f590b = new ArrayList();
        this.f591c = new ArrayList();
    }

    public static final o i(ViewGroup viewGroup, y0 y0Var) {
        d7.g.f("container", viewGroup);
        d7.g.f("fragmentManager", y0Var);
        d7.g.e("fragmentManager.specialEffectsControllerFactory", y0Var.H());
        Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
        if (tag instanceof o) {
            return (o) tag;
        }
        o oVar = new o(viewGroup);
        viewGroup.setTag(R.id.special_effects_controller_view_tag, oVar);
        return oVar;
    }

    public static boolean j(ArrayList arrayList) {
        boolean z5;
        int size = arrayList.size();
        int i6 = 0;
        loop0: while (true) {
            z5 = true;
            while (i6 < size) {
                Object obj = arrayList.get(i6);
                i6++;
                l1 l1Var = (l1) obj;
                if (!l1Var.f581k.isEmpty()) {
                    ArrayList arrayList2 = l1Var.f581k;
                    if (arrayList2 == null || !arrayList2.isEmpty()) {
                        int size2 = arrayList2.size();
                        int i9 = 0;
                        while (i9 < size2) {
                            Object obj2 = arrayList2.get(i9);
                            i9++;
                            k1 k1Var = (k1) obj2;
                            k1Var.getClass();
                            if (!(k1Var instanceof j)) {
                                break;
                            }
                        }
                    }
                }
                z5 = false;
            }
            break loop0;
        }
        if (z5) {
            ArrayList arrayList3 = new ArrayList();
            int size3 = arrayList.size();
            int i10 = 0;
            while (i10 < size3) {
                Object obj3 = arrayList.get(i10);
                i10++;
                s6.m.o(arrayList3, ((l1) obj3).f581k);
            }
            if (!arrayList3.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    public final void a(l1 l1Var) {
        d7.g.f("operation", l1Var);
        if (l1Var.f579i) {
            m1.a(l1Var.f572a, l1Var.f574c.G(), this.f589a);
            l1Var.f579i = false;
        }
    }

    public final void b(ArrayList arrayList, boolean z5) {
        Object obj;
        Object obj2;
        int size = arrayList.size();
        int i6 = 0;
        while (true) {
            obj = null;
            if (i6 >= size) {
                obj2 = null;
                break;
            }
            obj2 = arrayList.get(i6);
            i6++;
            l1 l1Var = (l1) obj2;
            View view = l1Var.f574c.P;
            d7.g.e("operation.fragment.mView", view);
            if (view.getAlpha() != 0.0f || view.getVisibility() != 0) {
                int visibility = view.getVisibility();
                if (visibility != 0) {
                    if (visibility != 4 && visibility != 8) {
                        throw new IllegalArgumentException(a1.a.i(visibility, "Unknown visibility "));
                    }
                } else if (l1Var.f572a != 2) {
                    break;
                }
            }
        }
        l1 l1Var2 = (l1) obj2;
        ListIterator listIterator = arrayList.listIterator(arrayList.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                break;
            }
            Object objPrevious = listIterator.previous();
            l1 l1Var3 = (l1) objPrevious;
            View view2 = l1Var3.f574c.P;
            d7.g.e("operation.fragment.mView", view2);
            if (view2.getAlpha() != 0.0f || view2.getVisibility() != 0) {
                int visibility2 = view2.getVisibility();
                if (visibility2 == 0) {
                    continue;
                } else if (visibility2 != 4 && visibility2 != 8) {
                    throw new IllegalArgumentException(a1.a.i(visibility2, "Unknown visibility "));
                }
            }
            if (l1Var3.f572a == 2) {
                obj = objPrevious;
                break;
            }
        }
        l1 l1Var4 = (l1) obj;
        if (y0.J(2)) {
            Log.v("FragmentManager", "Executing operations from " + l1Var2 + " to " + l1Var4);
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        c0 c0Var = ((l1) s6.g.s(arrayList)).f574c;
        int size2 = arrayList.size();
        int i9 = 0;
        while (i9 < size2) {
            Object obj3 = arrayList.get(i9);
            i9++;
            z zVar = ((l1) obj3).f574c.S;
            z zVar2 = c0Var.S;
            zVar.f666b = zVar2.f666b;
            zVar.f667c = zVar2.f667c;
            zVar.f668d = zVar2.f668d;
            zVar.f669e = zVar2.f669e;
        }
        int size3 = arrayList.size();
        int i10 = 0;
        while (true) {
            boolean z8 = true;
            if (i10 >= size3) {
                break;
            }
            Object obj4 = arrayList.get(i10);
            i10++;
            l1 l1Var5 = (l1) obj4;
            arrayList2.add(new h(l1Var5, z5));
            if (!z5 ? l1Var5 != l1Var4 : l1Var5 != l1Var2) {
                z8 = false;
            }
            c0 c0Var2 = l1Var5.f574c;
            n nVar = new n(l1Var5);
            if (l1Var5.f572a == 2) {
                if (z5) {
                    z zVar3 = c0Var2.S;
                } else {
                    c0Var2.getClass();
                }
            } else if (z5) {
                z zVar4 = c0Var2.S;
            } else {
                c0Var2.getClass();
            }
            if (l1Var5.f572a == 2) {
                if (z5) {
                    z zVar5 = c0Var2.S;
                } else {
                    z zVar6 = c0Var2.S;
                }
            }
            if (z8) {
                if (z5) {
                    z zVar7 = c0Var2.S;
                } else {
                    c0Var2.getClass();
                }
            }
            arrayList3.add(nVar);
            l1Var5.f575d.add(new d(this, l1Var5, 0));
        }
        ArrayList arrayList4 = new ArrayList();
        int size4 = arrayList3.size();
        int i11 = 0;
        while (i11 < size4) {
            Object obj5 = arrayList3.get(i11);
            i11++;
            if (!((n) obj5).c()) {
                arrayList4.add(obj5);
            }
        }
        ArrayList arrayList5 = new ArrayList();
        int size5 = arrayList4.size();
        int i12 = 0;
        while (i12 < size5) {
            Object obj6 = arrayList4.get(i12);
            i12++;
            ((n) obj6).getClass();
        }
        int size6 = arrayList5.size();
        int i13 = 0;
        while (i13 < size6) {
            Object obj7 = arrayList5.get(i13);
            i13++;
            ((n) obj7).getClass();
        }
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        int size7 = arrayList2.size();
        int i14 = 0;
        while (i14 < size7) {
            Object obj8 = arrayList2.get(i14);
            i14++;
            s6.m.o(arrayList7, ((l1) ((h) obj8).f583a).f581k);
        }
        boolean zIsEmpty = arrayList7.isEmpty();
        int size8 = arrayList2.size();
        boolean z9 = false;
        int i15 = 0;
        while (i15 < size8) {
            Object obj9 = arrayList2.get(i15);
            i15++;
            h hVar = (h) obj9;
            Context context = this.f589a.getContext();
            l1 l1Var6 = (l1) hVar.f583a;
            d7.g.e("context", context);
            y4 y4VarD = hVar.d(context);
            if (y4VarD != null) {
                if (((AnimatorSet) y4VarD.f1991c) == null) {
                    arrayList6.add(hVar);
                } else {
                    c0 c0Var3 = l1Var6.f574c;
                    if (l1Var6.f581k.isEmpty()) {
                        if (l1Var6.f572a == 3) {
                            l1Var6.f579i = false;
                        }
                        l1Var6.f580j.add(new j(hVar));
                        z9 = true;
                    } else if (y0.J(2)) {
                        Log.v("FragmentManager", "Ignoring Animator set on " + c0Var3 + " as this Fragment was involved in a Transition.");
                    }
                }
            }
        }
        int size9 = arrayList6.size();
        int i16 = 0;
        while (i16 < size9) {
            Object obj10 = arrayList6.get(i16);
            i16++;
            h hVar2 = (h) obj10;
            l1 l1Var7 = (l1) hVar2.f583a;
            c0 c0Var4 = l1Var7.f574c;
            if (zIsEmpty) {
                if (!z9) {
                    l1Var7.f580j.add(new g(hVar2));
                } else if (y0.J(2)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + c0Var4 + " as Animations cannot run alongside Animators.");
                }
            } else if (y0.J(2)) {
                Log.v("FragmentManager", "Ignoring Animation set on " + c0Var4 + " as Animations cannot run alongside Transitions.");
            }
        }
    }

    public final void c(List list) {
        d7.g.f("operations", list);
        List list2 = list;
        ArrayList arrayList = new ArrayList();
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            s6.m.o(arrayList, ((l1) it.next()).f581k);
        }
        List listW = s6.g.w(s6.g.y(arrayList));
        int size = listW.size();
        for (int i6 = 0; i6 < size; i6++) {
            ((k1) listW.get(i6)).b(this.f589a);
        }
        int size2 = list.size();
        for (int i9 = 0; i9 < size2; i9++) {
            a((l1) list.get(i9));
        }
        List listW2 = s6.g.w(list2);
        int size3 = listW2.size();
        for (int i10 = 0; i10 < size3; i10++) {
            l1 l1Var = (l1) listW2.get(i10);
            if (l1Var.f581k.isEmpty()) {
                l1Var.b();
            }
        }
    }

    public final void d(int i6, int i9, g1 g1Var) {
        synchronized (this.f590b) {
            try {
                c0 c0Var = g1Var.f528c;
                d7.g.e("fragmentStateManager.fragment", c0Var);
                l1 l1VarF = f(c0Var);
                if (l1VarF == null) {
                    c0 c0Var2 = g1Var.f528c;
                    l1VarF = c0Var2.f476m ? g(c0Var2) : null;
                }
                if (l1VarF != null) {
                    l1VarF.d(i6, i9);
                    return;
                }
                l1 l1Var = new l1(i6, i9, g1Var);
                this.f590b.add(l1Var);
                l1Var.f575d.add(new d(this, l1Var, 1));
                l1Var.f575d.add(new d(this, l1Var, 2));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void e() {
        boolean z5;
        if (this.f594f) {
            return;
        }
        if (!this.f589a.isAttachedToWindow()) {
            h();
            this.f593e = false;
            return;
        }
        synchronized (this.f590b) {
            try {
                ArrayList arrayListX = s6.g.x(this.f591c);
                this.f591c.clear();
                int size = arrayListX.size();
                int i6 = 0;
                while (true) {
                    z5 = true;
                    if (i6 >= size) {
                        break;
                    }
                    Object obj = arrayListX.get(i6);
                    i6++;
                    l1 l1Var = (l1) obj;
                    if (this.f590b.isEmpty() || !l1Var.f574c.f476m) {
                        z5 = false;
                    }
                    l1Var.f578g = z5;
                }
                int size2 = arrayListX.size();
                int i9 = 0;
                while (i9 < size2) {
                    Object obj2 = arrayListX.get(i9);
                    i9++;
                    l1 l1Var2 = (l1) obj2;
                    if (this.f592d) {
                        if (y0.J(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Completing non-seekable operation " + l1Var2);
                        }
                        l1Var2.b();
                    } else {
                        if (y0.J(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + l1Var2);
                        }
                        l1Var2.a(this.f589a);
                    }
                    this.f592d = false;
                    if (!l1Var2.f577f) {
                        this.f591c.add(l1Var2);
                    }
                }
                if (!this.f590b.isEmpty()) {
                    l();
                    ArrayList arrayListX2 = s6.g.x(this.f590b);
                    if (arrayListX2.isEmpty()) {
                        return;
                    }
                    this.f590b.clear();
                    this.f591c.addAll(arrayListX2);
                    if (y0.J(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Executing pending operations");
                    }
                    b(arrayListX2, this.f593e);
                    boolean zJ = j(arrayListX2);
                    int size3 = arrayListX2.size();
                    int i10 = 0;
                    boolean z8 = true;
                    while (i10 < size3) {
                        Object obj3 = arrayListX2.get(i10);
                        i10++;
                        if (!((l1) obj3).f574c.f476m) {
                            z8 = false;
                        }
                    }
                    if (!z8 || zJ) {
                        z5 = false;
                    }
                    this.f592d = z5;
                    if (y0.J(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Operation seekable = " + zJ + " \ntransition = " + z8);
                    }
                    if (!z8) {
                        k(arrayListX2);
                        c(arrayListX2);
                    } else if (zJ) {
                        k(arrayListX2);
                        int size4 = arrayListX2.size();
                        for (int i11 = 0; i11 < size4; i11++) {
                            a((l1) arrayListX2.get(i11));
                        }
                    }
                    this.f593e = false;
                    if (y0.J(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Finished executing pending operations");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final l1 f(c0 c0Var) {
        Object obj;
        ArrayList arrayList = this.f590b;
        int size = arrayList.size();
        int i6 = 0;
        while (true) {
            if (i6 >= size) {
                obj = null;
                break;
            }
            obj = arrayList.get(i6);
            i6++;
            l1 l1Var = (l1) obj;
            if (d7.g.a(l1Var.f574c, c0Var) && !l1Var.f576e) {
                break;
            }
        }
        return (l1) obj;
    }

    public final l1 g(c0 c0Var) {
        Object obj;
        ArrayList arrayList = this.f591c;
        int size = arrayList.size();
        int i6 = 0;
        while (true) {
            if (i6 >= size) {
                obj = null;
                break;
            }
            obj = arrayList.get(i6);
            i6++;
            l1 l1Var = (l1) obj;
            if (d7.g.a(l1Var.f574c, c0Var) && !l1Var.f576e) {
                break;
            }
        }
        return (l1) obj;
    }

    public final void h() {
        String str;
        String str2;
        if (y0.J(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Forcing all operations to complete");
        }
        boolean zIsAttachedToWindow = this.f589a.isAttachedToWindow();
        synchronized (this.f590b) {
            try {
                l();
                k(this.f590b);
                ArrayList arrayListX = s6.g.x(this.f591c);
                int size = arrayListX.size();
                int i6 = 0;
                int i9 = 0;
                while (i9 < size) {
                    Object obj = arrayListX.get(i9);
                    i9++;
                    ((l1) obj).f578g = false;
                }
                int size2 = arrayListX.size();
                int i10 = 0;
                while (i10 < size2) {
                    Object obj2 = arrayListX.get(i10);
                    i10++;
                    l1 l1Var = (l1) obj2;
                    if (y0.J(2)) {
                        if (zIsAttachedToWindow) {
                            str2 = "";
                        } else {
                            str2 = "Container " + this.f589a + " is not attached to window. ";
                        }
                        Log.v("FragmentManager", "SpecialEffectsController: " + str2 + "Cancelling running operation " + l1Var);
                    }
                    l1Var.a(this.f589a);
                }
                ArrayList arrayListX2 = s6.g.x(this.f590b);
                int size3 = arrayListX2.size();
                int i11 = 0;
                while (i11 < size3) {
                    Object obj3 = arrayListX2.get(i11);
                    i11++;
                    ((l1) obj3).f578g = false;
                }
                int size4 = arrayListX2.size();
                while (i6 < size4) {
                    Object obj4 = arrayListX2.get(i6);
                    i6++;
                    l1 l1Var2 = (l1) obj4;
                    if (y0.J(2)) {
                        if (zIsAttachedToWindow) {
                            str = "";
                        } else {
                            str = "Container " + this.f589a + " is not attached to window. ";
                        }
                        Log.v("FragmentManager", "SpecialEffectsController: " + str + "Cancelling pending operation " + l1Var2);
                    }
                    l1Var2.a(this.f589a);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void k(List list) {
        int size = list.size();
        for (int i6 = 0; i6 < size; i6++) {
            l1 l1Var = (l1) list.get(i6);
            g1 g1Var = l1Var.f582l;
            if (!l1Var.h) {
                l1Var.h = true;
                int i9 = l1Var.f573b;
                if (i9 == 2) {
                    c0 c0Var = g1Var.f528c;
                    d7.g.e("fragmentStateManager.fragment", c0Var);
                    View viewFindFocus = c0Var.P.findFocus();
                    if (viewFindFocus != null) {
                        c0Var.b().f674k = viewFindFocus;
                        if (y0.J(2)) {
                            Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + c0Var);
                        }
                    }
                    View viewG = l1Var.f574c.G();
                    if (viewG.getParent() == null) {
                        g1Var.b();
                        viewG.setAlpha(0.0f);
                    }
                    if (viewG.getAlpha() == 0.0f && viewG.getVisibility() == 0) {
                        viewG.setVisibility(4);
                    }
                    z zVar = c0Var.S;
                    viewG.setAlpha(zVar == null ? 1.0f : zVar.f673j);
                } else if (i9 == 3) {
                    c0 c0Var2 = g1Var.f528c;
                    d7.g.e("fragmentStateManager.fragment", c0Var2);
                    View viewG2 = c0Var2.G();
                    if (y0.J(2)) {
                        Log.v("FragmentManager", "Clearing focus " + viewG2.findFocus() + " on view " + viewG2 + " for Fragment " + c0Var2);
                    }
                    viewG2.clearFocus();
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            s6.m.o(arrayList, ((l1) it.next()).f581k);
        }
        List listW = s6.g.w(s6.g.y(arrayList));
        int size2 = listW.size();
        for (int i10 = 0; i10 < size2; i10++) {
            k1 k1Var = (k1) listW.get(i10);
            k1Var.getClass();
            ViewGroup viewGroup = this.f589a;
            d7.g.f("container", viewGroup);
            if (!k1Var.f567a) {
                k1Var.d(viewGroup);
            }
            k1Var.f567a = true;
        }
    }

    public final void l() {
        ArrayList arrayList = this.f590b;
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayList.get(i6);
            i6++;
            l1 l1Var = (l1) obj;
            int i9 = 2;
            if (l1Var.f573b == 2) {
                int visibility = l1Var.f574c.G().getVisibility();
                if (visibility != 0) {
                    i9 = 4;
                    if (visibility != 4) {
                        if (visibility != 8) {
                            throw new IllegalArgumentException(a1.a.i(visibility, "Unknown visibility "));
                        }
                        i9 = 3;
                    }
                }
                l1Var.d(i9, 1);
            }
        }
    }
}
