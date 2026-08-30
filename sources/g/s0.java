package g;

import android.R;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import com.google.android.gms.internal.measurement.y4;
import java.util.ArrayList;
import java.util.WeakHashMap;
import m.f1;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class s0 extends b implements m.c {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final AccelerateInterpolator f2786y = new AccelerateInterpolator();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final DecelerateInterpolator f2787z = new DecelerateInterpolator();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f2788a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Context f2789b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ActionBarOverlayLayout f2790c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ActionBarContainer f2791d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public f1 f2792e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ActionBarContextView f2793f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final View f2794g;
    public boolean h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public r0 f2795i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public r0 f2796j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public y4 f2797k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f2798l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ArrayList f2799m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2800n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f2801o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f2802p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f2803q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f2804r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public k.k f2805s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f2806t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f2807u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final q0 f2808v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final q0 f2809w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final o5.c f2810x;

    public s0(Activity activity, boolean z5) {
        new ArrayList();
        this.f2799m = new ArrayList();
        this.f2800n = 0;
        this.f2801o = true;
        this.f2804r = true;
        this.f2808v = new q0(this, 0);
        this.f2809w = new q0(this, 1);
        this.f2810x = new o5.c(8, this);
        View decorView = activity.getWindow().getDecorView();
        q(decorView);
        if (z5) {
            return;
        }
        this.f2794g = decorView.findViewById(R.id.content);
    }

    @Override // g.b
    public final boolean b() {
        androidx.appcompat.widget.h hVar;
        f1 f1Var = this.f2792e;
        if (f1Var == null || (hVar = ((androidx.appcompat.widget.i) f1Var).f327a.U) == null || hVar.f325b == null) {
            return false;
        }
        androidx.appcompat.widget.h hVar2 = ((androidx.appcompat.widget.i) f1Var).f327a.U;
        l.p pVar = hVar2 == null ? null : hVar2.f325b;
        if (pVar == null) {
            return true;
        }
        pVar.collapseActionView();
        return true;
    }

    @Override // g.b
    public final void c(boolean z5) {
        if (z5 == this.f2798l) {
            return;
        }
        this.f2798l = z5;
        ArrayList arrayList = this.f2799m;
        if (arrayList.size() <= 0) {
            return;
        }
        arrayList.get(0).getClass();
        throw new ClassCastException();
    }

    @Override // g.b
    public final int d() {
        return ((androidx.appcompat.widget.i) this.f2792e).f328b;
    }

    @Override // g.b
    public final Context e() {
        if (this.f2789b == null) {
            TypedValue typedValue = new TypedValue();
            this.f2788a.getTheme().resolveAttribute(com.YaarWin.app.R.attr.actionBarWidgetTheme, typedValue, true);
            int i6 = typedValue.resourceId;
            if (i6 != 0) {
                this.f2789b = new ContextThemeWrapper(this.f2788a, i6);
            } else {
                this.f2789b = this.f2788a;
            }
        }
        return this.f2789b;
    }

    @Override // g.b
    public final void g() {
        r(this.f2788a.getResources().getBoolean(com.YaarWin.app.R.bool.abc_action_bar_embed_tabs));
    }

    @Override // g.b
    public final boolean i(int i6, KeyEvent keyEvent) {
        l.n nVar;
        r0 r0Var = this.f2795i;
        if (r0Var == null || (nVar = r0Var.f2774d) == null) {
            return false;
        }
        nVar.setQwertyMode(KeyCharacterMap.load(keyEvent.getDeviceId()).getKeyboardType() != 1);
        return nVar.performShortcut(i6, keyEvent, 0);
    }

    @Override // g.b
    public final void l(boolean z5) {
        if (this.h) {
            return;
        }
        int i6 = z5 ? 4 : 0;
        androidx.appcompat.widget.i iVar = (androidx.appcompat.widget.i) this.f2792e;
        int i9 = iVar.f328b;
        this.h = true;
        iVar.a((i6 & 4) | (i9 & (-5)));
    }

    @Override // g.b
    public final void m(boolean z5) {
        k.k kVar;
        this.f2806t = z5;
        if (z5 || (kVar = this.f2805s) == null) {
            return;
        }
        kVar.a();
    }

    @Override // g.b
    public final void n(CharSequence charSequence) {
        androidx.appcompat.widget.i iVar = (androidx.appcompat.widget.i) this.f2792e;
        if (iVar.f333g) {
            return;
        }
        Toolbar toolbar = iVar.f327a;
        iVar.h = charSequence;
        if ((iVar.f328b & 8) != 0) {
            toolbar.setTitle(charSequence);
            if (iVar.f333g) {
                j0.k0.i(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // g.b
    public final k.b o(y4 y4Var) {
        r0 r0Var = this.f2795i;
        if (r0Var != null) {
            r0Var.a();
        }
        this.f2790c.setHideOnContentScrollEnabled(false);
        this.f2793f.e();
        r0 r0Var2 = new r0(this, this.f2793f.getContext(), y4Var);
        l.n nVar = r0Var2.f2774d;
        nVar.w();
        try {
            if (!((k.a) r0Var2.f2775e.f1990b).e(r0Var2, nVar)) {
                return null;
            }
            this.f2795i = r0Var2;
            r0Var2.i();
            this.f2793f.c(r0Var2);
            p(true);
            return r0Var2;
        } finally {
            nVar.v();
        }
    }

    public final void p(boolean z5) {
        j0.o0 o0VarI;
        j0.o0 o0VarI2;
        if (z5) {
            if (!this.f2803q) {
                this.f2803q = true;
                ActionBarOverlayLayout actionBarOverlayLayout = this.f2790c;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.setShowingForActionMode(true);
                }
                s(false);
            }
        } else if (this.f2803q) {
            this.f2803q = false;
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f2790c;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setShowingForActionMode(false);
            }
            s(false);
        }
        if (!this.f2791d.isLaidOut()) {
            if (z5) {
                ((androidx.appcompat.widget.i) this.f2792e).f327a.setVisibility(4);
                this.f2793f.setVisibility(0);
                return;
            } else {
                ((androidx.appcompat.widget.i) this.f2792e).f327a.setVisibility(0);
                this.f2793f.setVisibility(8);
                return;
            }
        }
        if (z5) {
            androidx.appcompat.widget.i iVar = (androidx.appcompat.widget.i) this.f2792e;
            o0VarI = j0.k0.a(iVar.f327a);
            o0VarI.a(0.0f);
            o0VarI.c(100L);
            o0VarI.d(new k.j(iVar, 4));
            o0VarI2 = this.f2793f.i(0, 200L);
        } else {
            androidx.appcompat.widget.i iVar2 = (androidx.appcompat.widget.i) this.f2792e;
            j0.o0 o0VarA = j0.k0.a(iVar2.f327a);
            o0VarA.a(1.0f);
            o0VarA.c(200L);
            o0VarA.d(new k.j(iVar2, 0));
            o0VarI = this.f2793f.i(8, 100L);
            o0VarI2 = o0VarA;
        }
        k.k kVar = new k.k();
        ArrayList arrayList = kVar.f3476a;
        arrayList.add(o0VarI);
        View view = (View) o0VarI.f3298a.get();
        long duration = view != null ? view.animate().getDuration() : 0L;
        View view2 = (View) o0VarI2.f3298a.get();
        if (view2 != null) {
            view2.animate().setStartDelay(duration);
        }
        arrayList.add(o0VarI2);
        kVar.b();
    }

    public final void q(View view) {
        f1 wrapper;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(com.YaarWin.app.R.id.decor_content_parent);
        this.f2790c = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        KeyEvent.Callback callbackFindViewById = view.findViewById(com.YaarWin.app.R.id.action_bar);
        if (callbackFindViewById instanceof f1) {
            wrapper = (f1) callbackFindViewById;
        } else {
            if (!(callbackFindViewById instanceof Toolbar)) {
                throw new IllegalStateException("Can't make a decor toolbar out of ".concat(callbackFindViewById != null ? callbackFindViewById.getClass().getSimpleName() : "null"));
            }
            wrapper = ((Toolbar) callbackFindViewById).getWrapper();
        }
        this.f2792e = wrapper;
        this.f2793f = (ActionBarContextView) view.findViewById(com.YaarWin.app.R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(com.YaarWin.app.R.id.action_bar_container);
        this.f2791d = actionBarContainer;
        f1 f1Var = this.f2792e;
        if (f1Var == null || this.f2793f == null || actionBarContainer == null) {
            throw new IllegalStateException(s0.class.getSimpleName().concat(" can only be used with a compatible window decor layout"));
        }
        Context context = ((androidx.appcompat.widget.i) f1Var).f327a.getContext();
        this.f2788a = context;
        if ((((androidx.appcompat.widget.i) this.f2792e).f328b & 4) != 0) {
            this.h = true;
        }
        int i6 = context.getApplicationInfo().targetSdkVersion;
        this.f2792e.getClass();
        r(context.getResources().getBoolean(com.YaarWin.app.R.bool.abc_action_bar_embed_tabs));
        TypedArray typedArrayObtainStyledAttributes = this.f2788a.obtainStyledAttributes(null, f.a.f2492a, com.YaarWin.app.R.attr.actionBarStyle, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(14, false)) {
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f2790c;
            if (!actionBarOverlayLayout2.f215g) {
                throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
            }
            this.f2807u = true;
            actionBarOverlayLayout2.setHideOnContentScrollEnabled(true);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, 0);
        if (dimensionPixelSize != 0) {
            ActionBarContainer actionBarContainer2 = this.f2791d;
            WeakHashMap weakHashMap = j0.k0.f3286a;
            j0.d0.h(actionBarContainer2, dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void r(boolean z5) {
        if (z5) {
            this.f2791d.setTabContainer(null);
            ((androidx.appcompat.widget.i) this.f2792e).getClass();
        } else {
            ((androidx.appcompat.widget.i) this.f2792e).getClass();
            this.f2791d.setTabContainer(null);
        }
        this.f2792e.getClass();
        ((androidx.appcompat.widget.i) this.f2792e).f327a.setCollapsible(false);
        this.f2790c.setHasNonEmbeddedTabs(false);
    }

    public final void s(boolean z5) {
        boolean z8 = this.f2802p;
        boolean z9 = this.f2803q;
        final o5.c cVar = this.f2810x;
        View view = this.f2794g;
        if (!z9 && z8) {
            if (this.f2804r) {
                this.f2804r = false;
                k.k kVar = this.f2805s;
                if (kVar != null) {
                    kVar.a();
                }
                int i6 = this.f2800n;
                q0 q0Var = this.f2808v;
                if (i6 != 0 || (!this.f2806t && !z5)) {
                    q0Var.a();
                    return;
                }
                this.f2791d.setAlpha(1.0f);
                this.f2791d.setTransitioning(true);
                k.k kVar2 = new k.k();
                float f9 = -this.f2791d.getHeight();
                if (z5) {
                    this.f2791d.getLocationInWindow(new int[]{0, 0});
                    f9 -= r12[1];
                }
                j0.o0 o0VarA = j0.k0.a(this.f2791d);
                o0VarA.e(f9);
                final View view2 = (View) o0VarA.f3298a.get();
                if (view2 != null) {
                    view2.animate().setUpdateListener(cVar != null ? new ValueAnimator.AnimatorUpdateListener(view2) { // from class: j0.m0
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            ((View) ((g.s0) this.f3295a.f4446b).f2791d.getParent()).invalidate();
                        }
                    } : null);
                }
                boolean z10 = kVar2.f3480e;
                ArrayList arrayList = kVar2.f3476a;
                if (!z10) {
                    arrayList.add(o0VarA);
                }
                if (this.f2801o && view != null) {
                    j0.o0 o0VarA2 = j0.k0.a(view);
                    o0VarA2.e(f9);
                    if (!kVar2.f3480e) {
                        arrayList.add(o0VarA2);
                    }
                }
                boolean z11 = kVar2.f3480e;
                if (!z11) {
                    kVar2.f3478c = f2786y;
                }
                if (!z11) {
                    kVar2.f3477b = 250L;
                }
                if (!z11) {
                    kVar2.f3479d = q0Var;
                }
                this.f2805s = kVar2;
                kVar2.b();
                return;
            }
            return;
        }
        if (this.f2804r) {
            return;
        }
        this.f2804r = true;
        k.k kVar3 = this.f2805s;
        if (kVar3 != null) {
            kVar3.a();
        }
        this.f2791d.setVisibility(0);
        int i9 = this.f2800n;
        q0 q0Var2 = this.f2809w;
        if (i9 == 0 && (this.f2806t || z5)) {
            this.f2791d.setTranslationY(0.0f);
            float f10 = -this.f2791d.getHeight();
            if (z5) {
                this.f2791d.getLocationInWindow(new int[]{0, 0});
                f10 -= r12[1];
            }
            this.f2791d.setTranslationY(f10);
            k.k kVar4 = new k.k();
            j0.o0 o0VarA3 = j0.k0.a(this.f2791d);
            o0VarA3.e(0.0f);
            final View view3 = (View) o0VarA3.f3298a.get();
            if (view3 != null) {
                view3.animate().setUpdateListener(cVar != null ? new ValueAnimator.AnimatorUpdateListener(view3) { // from class: j0.m0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ((View) ((g.s0) this.f3295a.f4446b).f2791d.getParent()).invalidate();
                    }
                } : null);
            }
            boolean z12 = kVar4.f3480e;
            ArrayList arrayList2 = kVar4.f3476a;
            if (!z12) {
                arrayList2.add(o0VarA3);
            }
            if (this.f2801o && view != null) {
                view.setTranslationY(f10);
                j0.o0 o0VarA4 = j0.k0.a(view);
                o0VarA4.e(0.0f);
                if (!kVar4.f3480e) {
                    arrayList2.add(o0VarA4);
                }
            }
            boolean z13 = kVar4.f3480e;
            if (!z13) {
                kVar4.f3478c = f2787z;
            }
            if (!z13) {
                kVar4.f3477b = 250L;
            }
            if (!z13) {
                kVar4.f3479d = q0Var2;
            }
            this.f2805s = kVar4;
            kVar4.b();
        } else {
            this.f2791d.setAlpha(1.0f);
            this.f2791d.setTranslationY(0.0f);
            if (this.f2801o && view != null) {
                view.setTranslationY(0.0f);
            }
            q0Var2.a();
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f2790c;
        if (actionBarOverlayLayout != null) {
            WeakHashMap weakHashMap = j0.k0.f3286a;
            j0.b0.c(actionBarOverlayLayout);
        }
    }

    public s0(Dialog dialog) {
        new ArrayList();
        this.f2799m = new ArrayList();
        this.f2800n = 0;
        this.f2801o = true;
        this.f2804r = true;
        this.f2808v = new q0(this, 0);
        this.f2809w = new q0(this, 1);
        this.f2810x = new o5.c(8, this);
        q(dialog.getWindow().getDecorView());
    }
}
