package androidx.fragment.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import com.YaarWin.app.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j0 extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f559a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f560b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public View.OnApplyWindowInsetsListener f561c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f562d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j0(Context context, AttributeSet attributeSet) {
        String str;
        super(context, attributeSet, 0);
        d7.g.f("context", context);
        this.f559a = new ArrayList();
        this.f560b = new ArrayList();
        this.f562d = true;
        if (attributeSet != null) {
            String classAttribute = attributeSet.getClassAttribute();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, s0.a.f5203b, 0, 0);
            if (classAttribute == null) {
                classAttribute = typedArrayObtainStyledAttributes.getString(0);
                str = "android:name";
            } else {
                str = "class";
            }
            typedArrayObtainStyledAttributes.recycle();
            if (classAttribute == null || isInEditMode()) {
                return;
            }
            throw new UnsupportedOperationException("FragmentContainerView must be within a FragmentActivity to use " + str + "=\"" + classAttribute + '\"');
        }
    }

    public final void a(View view) {
        if (this.f560b.contains(view)) {
            this.f559a.add(view);
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i6, ViewGroup.LayoutParams layoutParams) {
        d7.g.f("child", view);
        Object tag = view.getTag(R.id.fragment_container_view_tag);
        if ((tag instanceof c0 ? (c0) tag : null) != null) {
            super.addView(view, i6, layoutParams);
            return;
        }
        throw new IllegalStateException(("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.").toString());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        j0.b1 b1VarG;
        d7.g.f("insets", windowInsets);
        j0.b1 b1VarG2 = j0.b1.g(windowInsets, null);
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.f561c;
        if (onApplyWindowInsetsListener != null) {
            WindowInsets windowInsetsOnApplyWindowInsets = onApplyWindowInsetsListener.onApplyWindowInsets(this, windowInsets);
            d7.g.e("onApplyWindowInsetsListe…lyWindowInsets(v, insets)", windowInsetsOnApplyWindowInsets);
            b1VarG = j0.b1.g(windowInsetsOnApplyWindowInsets, null);
        } else {
            WeakHashMap weakHashMap = j0.k0.f3286a;
            WindowInsets windowInsetsF = b1VarG2.f();
            if (windowInsetsF != null) {
                WindowInsets windowInsetsB = j0.b0.b(this, windowInsetsF);
                if (!windowInsetsB.equals(windowInsetsF)) {
                    b1VarG2 = j0.b1.g(windowInsetsB, this);
                }
            }
            b1VarG = b1VarG2;
        }
        if (!b1VarG.f3254a.m()) {
            int childCount = getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                View childAt = getChildAt(i6);
                WeakHashMap weakHashMap2 = j0.k0.f3286a;
                WindowInsets windowInsetsF2 = b1VarG.f();
                if (windowInsetsF2 != null) {
                    WindowInsets windowInsetsA = j0.b0.a(childAt, windowInsetsF2);
                    if (!windowInsetsA.equals(windowInsetsF2)) {
                        j0.b1.g(windowInsetsA, childAt);
                    }
                }
            }
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        d7.g.f("canvas", canvas);
        if (this.f562d) {
            ArrayList arrayList = this.f559a;
            int size = arrayList.size();
            int i6 = 0;
            while (i6 < size) {
                Object obj = arrayList.get(i6);
                i6++;
                super.drawChild(canvas, (View) obj, getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j3) {
        d7.g.f("canvas", canvas);
        d7.g.f("child", view);
        if (this.f562d) {
            ArrayList arrayList = this.f559a;
            if (!arrayList.isEmpty() && arrayList.contains(view)) {
                return false;
            }
        }
        return super.drawChild(canvas, view, j3);
    }

    @Override // android.view.ViewGroup
    public final void endViewTransition(View view) {
        d7.g.f("view", view);
        this.f560b.remove(view);
        if (this.f559a.remove(view)) {
            this.f562d = true;
        }
        super.endViewTransition(view);
    }

    public final <F extends c0> F getFragment() {
        h0 h0Var;
        c0 c0Var;
        y0 supportFragmentManager;
        View view = this;
        while (true) {
            h0Var = null;
            if (view == null) {
                c0Var = null;
                break;
            }
            Object tag = view.getTag(R.id.fragment_container_view_tag);
            c0Var = tag instanceof c0 ? (c0) tag : null;
            if (c0Var != null) {
                break;
            }
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        if (c0Var == null) {
            Context context = getContext();
            while (true) {
                if (!(context instanceof ContextWrapper)) {
                    break;
                }
                if (context instanceof h0) {
                    h0Var = (h0) context;
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            }
            if (h0Var == null) {
                throw new IllegalStateException("View " + this + " is not within a subclass of FragmentActivity.");
            }
            supportFragmentManager = h0Var.getSupportFragmentManager();
        } else {
            if (!c0Var.k()) {
                throw new IllegalStateException("The Fragment " + c0Var + " that owns View " + this + " has already been destroyed. Nested fragments should always use the child FragmentManager.");
            }
            supportFragmentManager = c0Var.d();
        }
        return (F) supportFragmentManager.B(getId());
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        d7.g.f("insets", windowInsets);
        return windowInsets;
    }

    @Override // android.view.ViewGroup
    public final void removeAllViewsInLayout() {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (-1 >= childCount) {
                super.removeAllViewsInLayout();
                return;
            } else {
                View childAt = getChildAt(childCount);
                d7.g.e("view", childAt);
                a(childAt);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        d7.g.f("view", view);
        a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(int i6) {
        View childAt = getChildAt(i6);
        d7.g.e("view", childAt);
        a(childAt);
        super.removeViewAt(i6);
    }

    @Override // android.view.ViewGroup
    public final void removeViewInLayout(View view) {
        d7.g.f("view", view);
        a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViews(int i6, int i9) {
        int i10 = i6 + i9;
        for (int i11 = i6; i11 < i10; i11++) {
            View childAt = getChildAt(i11);
            d7.g.e("view", childAt);
            a(childAt);
        }
        super.removeViews(i6, i9);
    }

    @Override // android.view.ViewGroup
    public final void removeViewsInLayout(int i6, int i9) {
        int i10 = i6 + i9;
        for (int i11 = i6; i11 < i10; i11++) {
            View childAt = getChildAt(i11);
            d7.g.e("view", childAt);
            a(childAt);
        }
        super.removeViewsInLayout(i6, i9);
    }

    public final void setDrawDisappearingViewsLast(boolean z5) {
        this.f562d = z5;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.View
    public void setOnApplyWindowInsetsListener(View.OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        d7.g.f("listener", onApplyWindowInsetsListener);
        this.f561c = onApplyWindowInsetsListener;
    }

    @Override // android.view.ViewGroup
    public final void startViewTransition(View view) {
        d7.g.f("view", view);
        if (view.getParent() == this) {
            this.f560b.add(view);
        }
        super.startViewTransition(view);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j0(Context context, AttributeSet attributeSet, y0 y0Var) {
        View view;
        super(context, attributeSet);
        d7.g.f("context", context);
        d7.g.f("attrs", attributeSet);
        this.f559a = new ArrayList();
        this.f560b = new ArrayList();
        this.f562d = true;
        String classAttribute = attributeSet.getClassAttribute();
        int i6 = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, s0.a.f5203b, 0, 0);
        classAttribute = classAttribute == null ? typedArrayObtainStyledAttributes.getString(0) : classAttribute;
        String string = typedArrayObtainStyledAttributes.getString(1);
        typedArrayObtainStyledAttributes.recycle();
        int id = getId();
        c0 c0VarB = y0Var.B(id);
        if (classAttribute != null && c0VarB == null) {
            if (id == -1) {
                throw new IllegalStateException(q2.x.g("FragmentContainerView must have an android:id to add Fragment ", classAttribute, string != null ? " with tag ".concat(string) : ""));
            }
            r0 r0VarG = y0Var.G();
            context.getClassLoader();
            c0 c0VarA = r0VarG.a(classAttribute);
            d7.g.e("fm.fragmentFactory.insta…ontext.classLoader, name)", c0VarA);
            c0VarA.F = id;
            c0VarA.G = id;
            c0VarA.H = string;
            c0VarA.B = y0Var;
            g0 g0Var = y0Var.f661w;
            c0VarA.C = g0Var;
            c0VarA.N = true;
            if ((g0Var == null ? null : g0Var.f521a) != null) {
                c0VarA.N = true;
            }
            a aVar = new a(y0Var);
            aVar.f431o = true;
            c0VarA.O = this;
            c0VarA.f479x = true;
            aVar.e(getId(), c0VarA, string);
            if (!aVar.f424g) {
                y0 y0Var2 = aVar.f433q;
                if (y0Var2.f661w != null && !y0Var2.J) {
                    y0Var2.y(true);
                    a aVar2 = y0Var2.h;
                    if (aVar2 != null) {
                        aVar2.f434r = false;
                        if (y0.J(3)) {
                            Log.d("FragmentManager", "Reversing mTransitioningOp " + y0Var2.h + " as part of execSingleAction for action " + aVar);
                        }
                        y0Var2.h.d(false, false);
                        y0Var2.h.a(y0Var2.L, y0Var2.M);
                        ArrayList arrayList = y0Var2.h.f418a;
                        int size = arrayList.size();
                        int i9 = 0;
                        while (i9 < size) {
                            Object obj = arrayList.get(i9);
                            i9++;
                            c0 c0Var = ((h1) obj).f535b;
                            if (c0Var != null) {
                                c0Var.f476m = false;
                            }
                        }
                        y0Var2.h = null;
                    }
                    aVar.a(y0Var2.L, y0Var2.M);
                    y0Var2.f641b = true;
                    try {
                        y0Var2.T(y0Var2.L, y0Var2.M);
                        y0Var2.d();
                        y0Var2.e0();
                        if (y0Var2.K) {
                            y0Var2.K = false;
                            y0Var2.c0();
                        }
                        ((HashMap) y0Var2.f642c.f2163b).values().removeAll(Collections.singleton(null));
                    } catch (Throwable th) {
                        y0Var2.d();
                        throw th;
                    }
                }
            } else {
                throw new IllegalStateException("This transaction is already being added to the back stack");
            }
        }
        ArrayList arrayListR = y0Var.f642c.r();
        int size2 = arrayListR.size();
        while (i6 < size2) {
            Object obj2 = arrayListR.get(i6);
            i6++;
            g1 g1Var = (g1) obj2;
            c0 c0Var2 = g1Var.f528c;
            if (c0Var2.G == getId() && (view = c0Var2.P) != null && view.getParent() == null) {
                c0Var2.O = this;
                g1Var.b();
                g1Var.k();
            }
        }
    }
}
