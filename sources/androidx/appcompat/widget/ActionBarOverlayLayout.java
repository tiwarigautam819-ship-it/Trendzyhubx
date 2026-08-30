package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import com.YaarWin.app.R;
import j0.b0;
import j0.b1;
import j0.d0;
import j0.k0;
import j0.n0;
import j0.o;
import j0.p;
import j0.q;
import j0.q0;
import j0.r0;
import j0.s0;
import j0.t0;
import j0.z0;
import java.util.WeakHashMap;
import k.k;
import l.n;
import l.y;
import m.e1;
import m.f1;
import z7.l;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements e1, o, p {
    public static final int[] K = {R.attr.actionBarSize, android.R.attr.windowContentOverlay};
    public static final b1 L;
    public static final Rect M;
    public b1 A;
    public b1 B;
    public m.c C;
    public OverScroller D;
    public ViewPropertyAnimator E;
    public final n0 F;
    public final m.b G;
    public final m.b H;
    public final q I;
    public final m.d J;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f209a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f210b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ContentFrameLayout f211c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ActionBarContainer f212d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public f1 f213e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Drawable f214f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f215g;
    public boolean h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f216i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f217j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f218k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f219l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Rect f220m;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final Rect f221v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final Rect f222w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final Rect f223x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public b1 f224y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public b1 f225z;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class a extends ViewGroup.MarginLayoutParams {
        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    static {
        int i6 = Build.VERSION.SDK_INT;
        t0 s0Var = i6 >= 30 ? new s0() : i6 >= 29 ? new r0() : new q0();
        s0Var.d(c0.c.a(0, 1, 0, 1));
        L = s0Var.b();
        M = new Rect();
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f210b = 0;
        this.f220m = new Rect();
        this.f221v = new Rect();
        this.f222w = new Rect();
        this.f223x = new Rect();
        new Rect();
        new Rect();
        new Rect();
        new Rect();
        b1 b1Var = b1.f3253b;
        this.f224y = b1Var;
        this.f225z = b1Var;
        this.A = b1Var;
        this.B = b1Var;
        this.F = new n0(this);
        this.G = new m.b(this, 0);
        this.H = new m.b(this, 1);
        i(context);
        this.I = new q();
        m.d dVar = new m.d(context);
        dVar.setWillNotDraw(true);
        this.J = dVar;
        addView(dVar);
    }

    public static boolean g(View view, Rect rect, boolean z5) {
        boolean z8;
        a aVar = (a) view.getLayoutParams();
        int i6 = ((ViewGroup.MarginLayoutParams) aVar).leftMargin;
        int i9 = rect.left;
        if (i6 != i9) {
            ((ViewGroup.MarginLayoutParams) aVar).leftMargin = i9;
            z8 = true;
        } else {
            z8 = false;
        }
        int i10 = ((ViewGroup.MarginLayoutParams) aVar).topMargin;
        int i11 = rect.top;
        if (i10 != i11) {
            ((ViewGroup.MarginLayoutParams) aVar).topMargin = i11;
            z8 = true;
        }
        int i12 = ((ViewGroup.MarginLayoutParams) aVar).rightMargin;
        int i13 = rect.right;
        if (i12 != i13) {
            ((ViewGroup.MarginLayoutParams) aVar).rightMargin = i13;
            z8 = true;
        }
        if (z5) {
            int i14 = ((ViewGroup.MarginLayoutParams) aVar).bottomMargin;
            int i15 = rect.bottom;
            if (i14 != i15) {
                ((ViewGroup.MarginLayoutParams) aVar).bottomMargin = i15;
                return true;
            }
        }
        return z8;
    }

    @Override // j0.o
    public final void a(View view, View view2, int i6, int i9) {
        if (i9 == 0) {
            onNestedScrollAccepted(view, view2, i6);
        }
    }

    @Override // j0.o
    public final void b(View view, int i6) {
        if (i6 == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // j0.p
    public final void c(View view, int i6, int i9, int i10, int i11, int i12, int[] iArr) {
        d(view, i6, i9, i10, i11, i12);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    @Override // j0.o
    public final void d(View view, int i6, int i9, int i10, int i11, int i12) {
        if (i12 == 0) {
            onNestedScroll(view, i6, i9, i10, i11);
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int translationY;
        super.draw(canvas);
        if (this.f214f != null) {
            if (this.f212d.getVisibility() == 0) {
                translationY = (int) (this.f212d.getTranslationY() + this.f212d.getBottom() + 0.5f);
            } else {
                translationY = 0;
            }
            this.f214f.setBounds(0, translationY, getWidth(), this.f214f.getIntrinsicHeight() + translationY);
            this.f214f.draw(canvas);
        }
    }

    @Override // j0.o
    public final boolean f(View view, View view2, int i6, int i9) {
        return i9 == 0 && onStartNestedScroll(view, view2, i6);
    }

    @Override // android.view.View
    public final boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new a(-1, -1);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f212d;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        q qVar = this.I;
        return qVar.f3300b | qVar.f3299a;
    }

    public CharSequence getTitle() {
        k();
        return ((i) this.f213e).f327a.getTitle();
    }

    public final void h() {
        removeCallbacks(this.G);
        removeCallbacks(this.H);
        ViewPropertyAnimator viewPropertyAnimator = this.E;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public final void i(Context context) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(K);
        this.f209a = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        this.f214f = drawable;
        setWillNotDraw(drawable == null);
        typedArrayObtainStyledAttributes.recycle();
        this.D = new OverScroller(context);
    }

    public final void j(int i6) {
        k();
        if (i6 == 2) {
            ((i) this.f213e).getClass();
            Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
        } else if (i6 == 5) {
            ((i) this.f213e).getClass();
            Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
        } else {
            if (i6 != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    public final void k() {
        f1 wrapper;
        if (this.f211c == null) {
            this.f211c = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.f212d = (ActionBarContainer) findViewById(R.id.action_bar_container);
            KeyEvent.Callback callbackFindViewById = findViewById(R.id.action_bar);
            if (callbackFindViewById instanceof f1) {
                wrapper = (f1) callbackFindViewById;
            } else {
                if (!(callbackFindViewById instanceof Toolbar)) {
                    throw new IllegalStateException("Can't make a decor toolbar out of ".concat(callbackFindViewById.getClass().getSimpleName()));
                }
                wrapper = ((Toolbar) callbackFindViewById).getWrapper();
            }
            this.f213e = wrapper;
        }
    }

    public final void l(Menu menu, y yVar) {
        k();
        i iVar = (i) this.f213e;
        Toolbar toolbar = iVar.f327a;
        if (iVar.f338m == null) {
            iVar.f338m = new androidx.appcompat.widget.a(toolbar.getContext());
        }
        androidx.appcompat.widget.a aVar = iVar.f338m;
        aVar.f3610e = yVar;
        n nVar = (n) menu;
        if (nVar == null && toolbar.f270a == null) {
            return;
        }
        toolbar.f();
        n nVar2 = toolbar.f270a.f226x;
        if (nVar2 == nVar) {
            return;
        }
        if (nVar2 != null) {
            nVar2.r(toolbar.T);
            nVar2.r(toolbar.U);
        }
        if (toolbar.U == null) {
            toolbar.U = new h(toolbar);
        }
        aVar.f305y = true;
        if (nVar != null) {
            nVar.b(aVar, toolbar.f283j);
            nVar.b(toolbar.U, toolbar.f283j);
        } else {
            aVar.h(toolbar.f283j, null);
            toolbar.U.h(toolbar.f283j, null);
            aVar.d();
            toolbar.U.d();
        }
        toolbar.f270a.setPopupTheme(toolbar.f284k);
        toolbar.f270a.setPresenter(aVar);
        toolbar.T = aVar;
        toolbar.v();
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        k();
        b1 b1VarG = b1.g(windowInsets, this);
        boolean zG = g(this.f212d, new Rect(b1VarG.b(), b1VarG.d(), b1VarG.c(), b1VarG.a()), false);
        WeakHashMap weakHashMap = k0.f3286a;
        Rect rect = this.f220m;
        d0.b(this, b1VarG, rect);
        int i6 = rect.left;
        int i9 = rect.top;
        int i10 = rect.right;
        int i11 = rect.bottom;
        z0 z0Var = b1VarG.f3254a;
        b1 b1VarL = z0Var.l(i6, i9, i10, i11);
        this.f224y = b1VarL;
        boolean z5 = true;
        if (!this.f225z.equals(b1VarL)) {
            this.f225z = this.f224y;
            zG = true;
        }
        Rect rect2 = this.f221v;
        if (rect2.equals(rect)) {
            z5 = zG;
        } else {
            rect2.set(rect);
        }
        if (z5) {
            requestLayout();
        }
        return z0Var.a().f3254a.c().f3254a.b().f();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        i(getContext());
        WeakHashMap weakHashMap = k0.f3286a;
        b0.c(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        h();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z5, int i6, int i9, int i10, int i11) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                a aVar = (a) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i13 = ((ViewGroup.MarginLayoutParams) aVar).leftMargin + paddingLeft;
                int i14 = ((ViewGroup.MarginLayoutParams) aVar).topMargin + paddingTop;
                childAt.layout(i13, i14, measuredWidth + i13, measuredHeight + i14);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00aa  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onMeasure(int r13, int r14) {
        /*
            Method dump skipped, instruction units count: 387
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarOverlayLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f9, float f10, boolean z5) {
        if (!this.f216i || !z5) {
            return false;
        }
        this.D.fling(0, 0, 0, (int) f10, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        if (this.D.getFinalY() > this.f212d.getHeight()) {
            h();
            this.H.run();
        } else {
            h();
            this.G.run();
        }
        this.f217j = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f9, float f10) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i6, int i9, int i10, int i11) {
        int i12 = this.f218k + i9;
        this.f218k = i12;
        setActionBarHideOffset(i12);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i6) {
        g.s0 s0Var;
        k kVar;
        this.I.f3299a = i6;
        this.f218k = getActionBarHideOffset();
        h();
        m.c cVar = this.C;
        if (cVar == null || (kVar = (s0Var = (g.s0) cVar).f2805s) == null) {
            return;
        }
        kVar.a();
        s0Var.f2805s = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i6) {
        if ((i6 & 2) == 0 || this.f212d.getVisibility() != 0) {
            return false;
        }
        return this.f216i;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        if (!this.f216i || this.f217j) {
            return;
        }
        if (this.f218k <= this.f212d.getHeight()) {
            h();
            postDelayed(this.G, 600L);
        } else {
            h();
            postDelayed(this.H, 600L);
        }
    }

    @Override // android.view.View
    public final void onWindowSystemUiVisibilityChanged(int i6) {
        super.onWindowSystemUiVisibilityChanged(i6);
        k();
        int i9 = this.f219l ^ i6;
        this.f219l = i6;
        boolean z5 = (i6 & 4) == 0;
        boolean z8 = (i6 & 256) != 0;
        m.c cVar = this.C;
        if (cVar != null) {
            g.s0 s0Var = (g.s0) cVar;
            s0Var.f2801o = !z8;
            if (z5 || !z8) {
                if (s0Var.f2802p) {
                    s0Var.f2802p = false;
                    s0Var.s(true);
                }
            } else if (!s0Var.f2802p) {
                s0Var.f2802p = true;
                s0Var.s(true);
            }
        }
        if ((i9 & 256) == 0 || this.C == null) {
            return;
        }
        WeakHashMap weakHashMap = k0.f3286a;
        b0.c(this);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i6) {
        super.onWindowVisibilityChanged(i6);
        this.f210b = i6;
        m.c cVar = this.C;
        if (cVar != null) {
            ((g.s0) cVar).f2800n = i6;
        }
    }

    public void setActionBarHideOffset(int i6) {
        h();
        this.f212d.setTranslationY(-Math.max(0, Math.min(i6, this.f212d.getHeight())));
    }

    public void setActionBarVisibilityCallback(m.c cVar) {
        this.C = cVar;
        if (getWindowToken() != null) {
            ((g.s0) this.C).f2800n = this.f210b;
            int i6 = this.f219l;
            if (i6 != 0) {
                onWindowSystemUiVisibilityChanged(i6);
                WeakHashMap weakHashMap = k0.f3286a;
                b0.c(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z5) {
        this.h = z5;
    }

    public void setHideOnContentScrollEnabled(boolean z5) {
        if (z5 != this.f216i) {
            this.f216i = z5;
            if (z5) {
                return;
            }
            h();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i6) {
        k();
        i iVar = (i) this.f213e;
        iVar.f330d = i6 != 0 ? l.j(iVar.f327a.getContext(), i6) : null;
        iVar.c();
    }

    public void setLogo(int i6) {
        k();
        i iVar = (i) this.f213e;
        iVar.f331e = i6 != 0 ? l.j(iVar.f327a.getContext(), i6) : null;
        iVar.c();
    }

    public void setOverlayMode(boolean z5) {
        this.f215g = z5;
    }

    @Override // m.e1
    public void setWindowCallback(Window.Callback callback) {
        k();
        ((i) this.f213e).f336k = callback;
    }

    @Override // m.e1
    public void setWindowTitle(CharSequence charSequence) {
        k();
        i iVar = (i) this.f213e;
        if (iVar.f333g) {
            return;
        }
        Toolbar toolbar = iVar.f327a;
        iVar.h = charSequence;
        if ((iVar.f328b & 8) != 0) {
            toolbar.setTitle(charSequence);
            if (iVar.f333g) {
                k0.i(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new a(layoutParams);
    }

    public void setIcon(Drawable drawable) {
        k();
        i iVar = (i) this.f213e;
        iVar.f330d = drawable;
        iVar.c();
    }

    public void setShowingForActionMode(boolean z5) {
    }

    public void setUiOptions(int i6) {
    }

    @Override // j0.o
    public final void e(int i6, int i9, int i10, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i6, int i9, int[] iArr) {
    }
}
