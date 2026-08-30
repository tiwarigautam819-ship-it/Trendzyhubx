package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import com.YaarWin.app.R;
import java.util.ArrayList;
import l.a0;
import l.f0;
import l.n;
import l.p;
import l.q;
import l.v;
import l.y;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends l.d {
    public m.e A;
    public m.e B;
    public m.g C;
    public m.f D;
    public final k1.h E;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public m.h f297i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Drawable f298j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f299k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f300l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f301m;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f302v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f303w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f304x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f305y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final SparseBooleanArray f306z;

    public a(Context context) {
        this.f3606a = context;
        this.f3609d = LayoutInflater.from(context);
        this.f3611f = R.layout.abc_action_menu_layout;
        this.f3612g = R.layout.abc_action_menu_item_layout;
        this.f306z = new SparseBooleanArray();
        this.E = new k1.h(17, this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View a(p pVar, View view, ViewGroup viewGroup) {
        View actionView = pVar.getActionView();
        if (actionView == null || pVar.e()) {
            a0 a0Var = view instanceof a0 ? (a0) view : (a0) this.f3609d.inflate(this.f3612g, viewGroup, false);
            a0Var.b(pVar);
            ActionMenuItemView actionMenuItemView = (ActionMenuItemView) a0Var;
            actionMenuItemView.setItemInvoker((ActionMenuView) this.h);
            if (this.D == null) {
                this.D = new m.f(this);
            }
            actionMenuItemView.setPopupCallback(this.D);
            actionView = (View) a0Var;
        }
        actionView.setVisibility(pVar.C ? 8 : 0);
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        ((ActionMenuView) viewGroup).getClass();
        if (!(layoutParams instanceof ActionMenuView.a)) {
            actionView.setLayoutParams(ActionMenuView.j(layoutParams));
        }
        return actionView;
    }

    @Override // l.z
    public final void b(n nVar, boolean z5) {
        c();
        m.e eVar = this.B;
        if (eVar != null && eVar.b()) {
            eVar.f3739i.dismiss();
        }
        y yVar = this.f3610e;
        if (yVar != null) {
            yVar.b(nVar, z5);
        }
    }

    public final boolean c() {
        Object obj;
        m.g gVar = this.C;
        if (gVar != null && (obj = this.h) != null) {
            ((View) obj).removeCallbacks(gVar);
            this.C = null;
            return true;
        }
        m.e eVar = this.A;
        if (eVar == null) {
            return false;
        }
        if (eVar.b()) {
            eVar.f3739i.dismiss();
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // l.z
    public final void d() {
        int i6;
        ViewGroup viewGroup = (ViewGroup) this.h;
        ArrayList arrayList = null;
        boolean z5 = false;
        if (viewGroup != null) {
            n nVar = this.f3608c;
            if (nVar != null) {
                nVar.i();
                ArrayList arrayListL = this.f3608c.l();
                int size = arrayListL.size();
                i6 = 0;
                for (int i9 = 0; i9 < size; i9++) {
                    p pVar = (p) arrayListL.get(i9);
                    if ((pVar.f3718x & 32) == 32) {
                        View childAt = viewGroup.getChildAt(i6);
                        p itemData = childAt instanceof a0 ? ((a0) childAt).getItemData() : null;
                        View viewA = a(pVar, childAt, viewGroup);
                        if (pVar != itemData) {
                            viewA.setPressed(false);
                            viewA.jumpDrawablesToCurrentState();
                        }
                        if (viewA != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) viewA.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(viewA);
                            }
                            ((ViewGroup) this.h).addView(viewA, i6);
                        }
                        i6++;
                    }
                }
            } else {
                i6 = 0;
            }
            while (i6 < viewGroup.getChildCount()) {
                if (viewGroup.getChildAt(i6) == this.f297i) {
                    i6++;
                } else {
                    viewGroup.removeViewAt(i6);
                }
            }
        }
        ((View) this.h).requestLayout();
        n nVar2 = this.f3608c;
        if (nVar2 != null) {
            nVar2.i();
            ArrayList arrayList2 = nVar2.f3677i;
            int size2 = arrayList2.size();
            for (int i10 = 0; i10 < size2; i10++) {
                q qVar = ((p) arrayList2.get(i10)).A;
            }
        }
        n nVar3 = this.f3608c;
        if (nVar3 != null) {
            nVar3.i();
            arrayList = nVar3.f3678j;
        }
        if (this.f300l && arrayList != null) {
            int size3 = arrayList.size();
            if (size3 == 1) {
                z5 = !((p) arrayList.get(0)).C;
            } else if (size3 > 0) {
                z5 = true;
            }
        }
        if (z5) {
            if (this.f297i == null) {
                this.f297i = new m.h(this, this.f3606a);
            }
            ViewGroup viewGroup3 = (ViewGroup) this.f297i.getParent();
            if (viewGroup3 != this.h) {
                if (viewGroup3 != null) {
                    viewGroup3.removeView(this.f297i);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.h;
                m.h hVar = this.f297i;
                actionMenuView.getClass();
                ActionMenuView.a aVarI = ActionMenuView.i();
                aVarI.f229a = true;
                actionMenuView.addView(hVar, aVarI);
            }
        } else {
            m.h hVar2 = this.f297i;
            if (hVar2 != null) {
                Object parent = hVar2.getParent();
                Object obj = this.h;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.f297i);
                }
            }
        }
        ((ActionMenuView) this.h).setOverflowReserved(this.f300l);
    }

    public final boolean e() {
        m.e eVar = this.A;
        return eVar != null && eVar.b();
    }

    @Override // l.z
    public final void h(Context context, n nVar) {
        this.f3607b = context;
        LayoutInflater.from(context);
        this.f3608c = nVar;
        Resources resources = context.getResources();
        if (!this.f301m) {
            this.f300l = true;
        }
        int i6 = 2;
        this.f302v = context.getResources().getDisplayMetrics().widthPixels / 2;
        Configuration configuration = context.getResources().getConfiguration();
        int i9 = configuration.screenWidthDp;
        int i10 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i9 > 600 || ((i9 > 960 && i10 > 720) || (i9 > 720 && i10 > 960))) {
            i6 = 5;
        } else if (i9 >= 500 || ((i9 > 640 && i10 > 480) || (i9 > 480 && i10 > 640))) {
            i6 = 4;
        } else if (i9 >= 360) {
            i6 = 3;
        }
        this.f304x = i6;
        int measuredWidth = this.f302v;
        if (this.f300l) {
            if (this.f297i == null) {
                m.h hVar = new m.h(this, this.f3606a);
                this.f297i = hVar;
                if (this.f299k) {
                    hVar.setImageDrawable(this.f298j);
                    this.f298j = null;
                    this.f299k = false;
                }
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f297i.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.f297i.getMeasuredWidth();
        } else {
            this.f297i = null;
        }
        this.f303w = measuredWidth;
        float f9 = resources.getDisplayMetrics().density;
    }

    @Override // l.z
    public final boolean i() {
        int size;
        ArrayList arrayListL;
        int i6;
        boolean z5;
        a aVar = this;
        n nVar = aVar.f3608c;
        if (nVar != null) {
            arrayListL = nVar.l();
            size = arrayListL.size();
        } else {
            size = 0;
            arrayListL = null;
        }
        int i9 = aVar.f304x;
        int i10 = aVar.f303w;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) aVar.h;
        int i11 = 0;
        boolean z8 = false;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            i6 = 2;
            z5 = true;
            if (i11 >= size) {
                break;
            }
            p pVar = (p) arrayListL.get(i11);
            int i14 = pVar.f3719y;
            if ((i14 & 2) == 2) {
                i12++;
            } else if ((i14 & 1) == 1) {
                i13++;
            } else {
                z8 = true;
            }
            if (aVar.f305y && pVar.C) {
                i9 = 0;
            }
            i11++;
        }
        if (aVar.f300l && (z8 || i13 + i12 > i9)) {
            i9--;
        }
        int i15 = i9 - i12;
        SparseBooleanArray sparseBooleanArray = aVar.f306z;
        sparseBooleanArray.clear();
        int i16 = 0;
        int i17 = 0;
        while (i16 < size) {
            p pVar2 = (p) arrayListL.get(i16);
            int i18 = pVar2.f3719y;
            boolean z9 = (i18 & 2) == i6 ? z5 : false;
            int i19 = pVar2.f3697b;
            if (z9) {
                View viewA = aVar.a(pVar2, null, viewGroup);
                viewA.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                int measuredWidth = viewA.getMeasuredWidth();
                i10 -= measuredWidth;
                if (i17 == 0) {
                    i17 = measuredWidth;
                }
                if (i19 != 0) {
                    sparseBooleanArray.put(i19, z5);
                }
                pVar2.f(z5);
            } else if ((i18 & 1) == z5) {
                boolean z10 = sparseBooleanArray.get(i19);
                boolean z11 = ((i15 > 0 || z10) && i10 > 0) ? z5 : false;
                if (z11) {
                    View viewA2 = aVar.a(pVar2, null, viewGroup);
                    viewA2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                    int measuredWidth2 = viewA2.getMeasuredWidth();
                    i10 -= measuredWidth2;
                    if (i17 == 0) {
                        i17 = measuredWidth2;
                    }
                    z11 &= i10 + i17 > 0;
                }
                if (z11 && i19 != 0) {
                    sparseBooleanArray.put(i19, true);
                } else if (z10) {
                    sparseBooleanArray.put(i19, false);
                    for (int i20 = 0; i20 < i16; i20++) {
                        p pVar3 = (p) arrayListL.get(i20);
                        if (pVar3.f3697b == i19) {
                            if ((pVar3.f3718x & 32) == 32) {
                                i15++;
                            }
                            pVar3.f(false);
                        }
                    }
                }
                if (z11) {
                    i15--;
                }
                pVar2.f(z11);
            } else {
                pVar2.f(false);
                i16++;
                i6 = 2;
                aVar = this;
                z5 = true;
            }
            i16++;
            i6 = 2;
            aVar = this;
            z5 = true;
        }
        return z5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // l.z
    public final boolean j(f0 f0Var) {
        boolean z5;
        if (f0Var.hasVisibleItems()) {
            f0 f0Var2 = f0Var;
            while (true) {
                n nVar = f0Var2.f3635z;
                if (nVar == this.f3608c) {
                    break;
                }
                f0Var2 = (f0) nVar;
            }
            p pVar = f0Var2.A;
            ViewGroup viewGroup = (ViewGroup) this.h;
            View view = null;
            view = null;
            if (viewGroup != null) {
                int childCount = viewGroup.getChildCount();
                int i6 = 0;
                while (true) {
                    if (i6 >= childCount) {
                        break;
                    }
                    View childAt = viewGroup.getChildAt(i6);
                    if ((childAt instanceof a0) && ((a0) childAt).getItemData() == pVar) {
                        view = childAt;
                        break;
                    }
                    i6++;
                }
            }
            if (view != null) {
                f0Var.A.getClass();
                int size = f0Var.f3675f.size();
                int i9 = 0;
                while (true) {
                    if (i9 >= size) {
                        z5 = false;
                        break;
                    }
                    MenuItem item = f0Var.getItem(i9);
                    if (item.isVisible() && item.getIcon() != null) {
                        z5 = true;
                        break;
                    }
                    i9++;
                }
                m.e eVar = new m.e(this, this.f3607b, f0Var, view);
                this.B = eVar;
                eVar.f3738g = z5;
                v vVar = eVar.f3739i;
                if (vVar != null) {
                    vVar.o(z5);
                }
                m.e eVar2 = this.B;
                if (!eVar2.b()) {
                    if (eVar2.f3736e == null) {
                        throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
                    }
                    eVar2.d(0, 0, false, false);
                }
                y yVar = this.f3610e;
                if (yVar != null) {
                    yVar.f(f0Var);
                }
                return true;
            }
        }
        return false;
    }

    public final boolean l() {
        n nVar;
        if (!this.f300l || e() || (nVar = this.f3608c) == null || this.h == null || this.C != null) {
            return false;
        }
        nVar.i();
        if (nVar.f3678j.isEmpty()) {
            return false;
        }
        m.g gVar = new m.g(this, new m.e(this, this.f3607b, this.f3608c, this.f297i));
        this.C = gVar;
        ((View) this.h).post(gVar);
        return true;
    }
}
