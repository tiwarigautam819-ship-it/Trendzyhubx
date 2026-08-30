package androidx.core.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import f0.a;
import h8.b;
import j0.d0;
import j0.g;
import j0.k0;
import j0.n;
import j0.o;
import j0.p;
import j0.q;
import java.util.WeakHashMap;
import m0.e;
import m0.f;
import m0.h;
import o5.c;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class NestedScrollView extends FrameLayout implements p, n {
    public static final float J = (float) (Math.log(0.78d) / Math.log(0.9d));
    public static final e K = new e();
    public static final int[] L = {R.attr.fillViewport};
    public final int[] A;
    public final int[] B;
    public int C;
    public int D;
    public h E;
    public final q F;
    public final com.google.firebase.messaging.p G;
    public float H;
    public final g I;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f401a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f402b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Rect f403c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final OverScroller f404d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final EdgeEffect f405e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final EdgeEffect f406f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f407g;
    public boolean h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f408i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public View f409j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f410k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public VelocityTracker f411l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f412m;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f413v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f414w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f415x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f416y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f417z;

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.YaarWin.app.R.attr.nestedScrollViewStyle);
        this.f403c = new Rect();
        this.h = true;
        this.f408i = false;
        this.f409j = null;
        this.f410k = false;
        this.f413v = true;
        this.f417z = -1;
        this.A = new int[2];
        this.B = new int[2];
        this.I = new g(getContext(), new c(20, this));
        int i6 = Build.VERSION.SDK_INT;
        this.f405e = i6 >= 31 ? m0.c.a(context, attributeSet) : new EdgeEffect(context);
        this.f406f = i6 >= 31 ? m0.c.a(context, attributeSet) : new EdgeEffect(context);
        this.f401a = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        this.f404d = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f414w = viewConfiguration.getScaledTouchSlop();
        this.f415x = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f416y = viewConfiguration.getScaledMaximumFlingVelocity();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, L, com.YaarWin.app.R.attr.nestedScrollViewStyle, 0);
        setFillViewport(typedArrayObtainStyledAttributes.getBoolean(0, false));
        typedArrayObtainStyledAttributes.recycle();
        this.F = new q();
        com.google.firebase.messaging.p pVar = new com.google.firebase.messaging.p();
        pVar.f2140d = this;
        this.G = pVar;
        setNestedScrollingEnabled(true);
        k0.h(this, K);
    }

    public static boolean m(View view, NestedScrollView nestedScrollView) {
        if (view == nestedScrollView) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && m((View) parent, nestedScrollView);
    }

    @Override // j0.o
    public final void a(View view, View view2, int i6, int i9) {
        q qVar = this.F;
        if (i9 == 1) {
            qVar.f3300b = i6;
        } else {
            qVar.f3299a = i6;
        }
        w(2, i9);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    @Override // j0.o
    public final void b(View view, int i6) {
        q qVar = this.F;
        if (i6 == 1) {
            qVar.f3300b = 0;
        } else {
            qVar.f3299a = 0;
        }
        y(i6);
    }

    @Override // j0.p
    public final void c(View view, int i6, int i9, int i10, int i11, int i12, int[] iArr) {
        o(i11, i12, iArr);
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00fc  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void computeScroll() {
        /*
            Method dump skipped, instruction units count: 256
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.computeScroll():void");
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int iMax = Math.max(0, bottom - height);
        return scrollY < 0 ? bottom - scrollY : scrollY > iMax ? (scrollY - iMax) + bottom : bottom;
    }

    @Override // j0.o
    public final void d(View view, int i6, int i9, int i10, int i11, int i12) {
        o(i11, i12, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || j(keyEvent);
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f9, float f10, boolean z5) {
        ViewParent viewParentD;
        com.google.firebase.messaging.p pVar = this.G;
        if (pVar.f2137a && (viewParentD = pVar.d(0)) != null) {
            try {
                return viewParentD.onNestedFling((NestedScrollView) pVar.f2140d, f9, f10, z5);
            } catch (AbstractMethodError e9) {
                Log.e("ViewParentCompat", "ViewParent " + viewParentD + " does not implement interface method onNestedFling", e9);
            }
        }
        return false;
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f9, float f10) {
        return this.G.b(f9, f10);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i6, int i9, int[] iArr, int[] iArr2) {
        return i(i6, i9, 0, iArr, iArr2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i6, int i9, int i10, int i11, int[] iArr) {
        return this.G.c(i6, i9, i10, i11, iArr, 0, null);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int paddingLeft;
        super.draw(canvas);
        int scrollY = getScrollY();
        EdgeEffect edgeEffect = this.f405e;
        int paddingLeft2 = 0;
        if (!edgeEffect.isFinished()) {
            int iSave = canvas.save();
            int width = getWidth();
            int height = getHeight();
            int iMin = Math.min(0, scrollY);
            if (getClipToPadding()) {
                width -= getPaddingRight() + getPaddingLeft();
                paddingLeft = getPaddingLeft();
            } else {
                paddingLeft = 0;
            }
            if (getClipToPadding()) {
                height -= getPaddingBottom() + getPaddingTop();
                iMin += getPaddingTop();
            }
            canvas.translate(paddingLeft, iMin);
            edgeEffect.setSize(width, height);
            if (edgeEffect.draw(canvas)) {
                postInvalidateOnAnimation();
            }
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect2 = this.f406f;
        if (edgeEffect2.isFinished()) {
            return;
        }
        int iSave2 = canvas.save();
        int width2 = getWidth();
        int height2 = getHeight();
        int iMax = Math.max(getScrollRange(), scrollY) + height2;
        if (getClipToPadding()) {
            width2 -= getPaddingRight() + getPaddingLeft();
            paddingLeft2 = getPaddingLeft();
        }
        if (getClipToPadding()) {
            height2 -= getPaddingBottom() + getPaddingTop();
            iMax -= getPaddingBottom();
        }
        canvas.translate(paddingLeft2 - width2, iMax);
        canvas.rotate(180.0f, width2, 0.0f);
        edgeEffect2.setSize(width2, height2);
        if (edgeEffect2.draw(canvas)) {
            postInvalidateOnAnimation();
        }
        canvas.restoreToCount(iSave2);
    }

    @Override // j0.o
    public final void e(int i6, int i9, int i10, int[] iArr) {
        i(i6, i9, i10, iArr, null);
    }

    @Override // j0.o
    public final boolean f(View view, View view2, int i6, int i9) {
        return (i6 & 2) != 0;
    }

    public final boolean g(int i6) {
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i6);
        int maxScrollAmount = getMaxScrollAmount();
        if (viewFindNextFocus == null || !n(viewFindNextFocus, maxScrollAmount, getHeight())) {
            if (i6 == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i6 == 130 && getChildCount() > 0) {
                View childAt = getChildAt(0);
                maxScrollAmount = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getHeight() + getScrollY()) - getPaddingBottom()), maxScrollAmount);
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i6 != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            t(maxScrollAmount, 0, 1, true);
        } else {
            Rect rect = this.f403c;
            viewFindNextFocus.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(viewFindNextFocus, rect);
            t(h(rect), 0, 1, true);
            viewFindNextFocus.requestFocus(i6);
        }
        if (viewFindFocus != null && viewFindFocus.isFocused() && !n(viewFindFocus, 0, getHeight())) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        return true;
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + layoutParams.bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (getHeight() * 0.5f);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        q qVar = this.F;
        return qVar.f3300b | qVar.f3299a;
    }

    public int getScrollRange() {
        if (getChildCount() <= 0) {
            return 0;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
    }

    @Override // android.view.View
    public float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public float getVerticalScrollFactorCompat() {
        if (this.H == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (!context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.H = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.H;
    }

    public final int h(Rect rect) {
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i6 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int i9 = rect.bottom < (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin ? i6 - verticalFadingEdgeLength : i6;
        int i10 = rect.bottom;
        if (i10 > i9 && rect.top > scrollY) {
            return Math.min(rect.height() > height ? rect.top - scrollY : rect.bottom - i9, (childAt.getBottom() + layoutParams.bottomMargin) - i6);
        }
        if (rect.top >= scrollY || i10 >= i9) {
            return 0;
        }
        return Math.max(rect.height() > height ? 0 - (i9 - rect.bottom) : 0 - (scrollY - rect.top), -getScrollY());
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return this.G.d(0) != null;
    }

    public final boolean i(int i6, int i9, int i10, int[] iArr, int[] iArr2) {
        ViewParent viewParentD;
        int i11;
        int i12;
        com.google.firebase.messaging.p pVar = this.G;
        NestedScrollView nestedScrollView = (NestedScrollView) pVar.f2140d;
        if (!pVar.f2137a || (viewParentD = pVar.d(i10)) == null) {
            return false;
        }
        if (i6 == 0 && i9 == 0) {
            if (iArr2 == null) {
                return false;
            }
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
        if (iArr2 != null) {
            nestedScrollView.getLocationInWindow(iArr2);
            i11 = iArr2[0];
            i12 = iArr2[1];
        } else {
            i11 = 0;
            i12 = 0;
        }
        if (iArr == null) {
            if (((int[]) pVar.f2141e) == null) {
                pVar.f2141e = new int[2];
            }
            iArr = (int[]) pVar.f2141e;
        }
        iArr[0] = 0;
        iArr[1] = 0;
        NestedScrollView nestedScrollView2 = (NestedScrollView) pVar.f2140d;
        if (viewParentD instanceof o) {
            ((o) viewParentD).e(i6, i9, i10, iArr);
        } else if (i10 == 0) {
            try {
                viewParentD.onNestedPreScroll(nestedScrollView2, i6, i9, iArr);
            } catch (AbstractMethodError e9) {
                Log.e("ViewParentCompat", "ViewParent " + viewParentD + " does not implement interface method onNestedPreScroll", e9);
            }
        }
        if (iArr2 != null) {
            nestedScrollView.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i11;
            iArr2[1] = iArr2[1] - i12;
        }
        return (iArr[0] == 0 && iArr[1] == 0) ? false : true;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return this.G.f2137a;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0098  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean j(android.view.KeyEvent r6) {
        /*
            r5 = this;
            android.graphics.Rect r0 = r5.f403c
            r0.setEmpty()
            int r0 = r5.getChildCount()
            r1 = 130(0x82, float:1.82E-43)
            r2 = 0
            if (r0 <= 0) goto L98
            android.view.View r0 = r5.getChildAt(r2)
            android.view.ViewGroup$LayoutParams r3 = r0.getLayoutParams()
            android.widget.FrameLayout$LayoutParams r3 = (android.widget.FrameLayout.LayoutParams) r3
            int r0 = r0.getHeight()
            int r4 = r3.topMargin
            int r0 = r0 + r4
            int r3 = r3.bottomMargin
            int r0 = r0 + r3
            int r3 = r5.getHeight()
            int r4 = r5.getPaddingTop()
            int r3 = r3 - r4
            int r4 = r5.getPaddingBottom()
            int r3 = r3 - r4
            if (r0 <= r3) goto L98
            int r0 = r6.getAction()
            if (r0 != 0) goto Lc0
            int r0 = r6.getKeyCode()
            r3 = 19
            r4 = 33
            if (r0 == r3) goto L88
            r3 = 20
            if (r0 == r3) goto L78
            r3 = 62
            if (r0 == r3) goto L6d
            r6 = 92
            if (r0 == r6) goto L68
            r6 = 93
            if (r0 == r6) goto L63
            r6 = 122(0x7a, float:1.71E-43)
            if (r0 == r6) goto L5f
            r6 = 123(0x7b, float:1.72E-43)
            if (r0 == r6) goto L5b
            goto Lc0
        L5b:
            r5.r(r1)
            return r2
        L5f:
            r5.r(r4)
            return r2
        L63:
            boolean r6 = r5.l(r1)
            return r6
        L68:
            boolean r6 = r5.l(r4)
            return r6
        L6d:
            boolean r6 = r6.isShiftPressed()
            if (r6 == 0) goto L74
            r1 = r4
        L74:
            r5.r(r1)
            return r2
        L78:
            boolean r6 = r6.isAltPressed()
            if (r6 == 0) goto L83
            boolean r6 = r5.l(r1)
            return r6
        L83:
            boolean r6 = r5.g(r1)
            return r6
        L88:
            boolean r6 = r6.isAltPressed()
            if (r6 == 0) goto L93
            boolean r6 = r5.l(r4)
            return r6
        L93:
            boolean r6 = r5.g(r4)
            return r6
        L98:
            boolean r0 = r5.isFocused()
            if (r0 == 0) goto Lc0
            int r6 = r6.getKeyCode()
            r0 = 4
            if (r6 == r0) goto Lc0
            android.view.View r6 = r5.findFocus()
            if (r6 != r5) goto Lac
            r6 = 0
        Lac:
            android.view.FocusFinder r0 = android.view.FocusFinder.getInstance()
            android.view.View r6 = r0.findNextFocus(r5, r6, r1)
            if (r6 == 0) goto Lc0
            if (r6 == r5) goto Lc0
            boolean r6 = r6.requestFocus(r1)
            if (r6 == 0) goto Lc0
            r6 = 1
            return r6
        Lc0:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.j(android.view.KeyEvent):boolean");
    }

    public final void k(int i6) {
        if (getChildCount() > 0) {
            this.f404d.fling(getScrollX(), getScrollY(), 0, i6, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0);
            w(2, 1);
            this.D = getScrollY();
            postInvalidateOnAnimation();
            if (a.a()) {
                f.a(this, Math.abs(this.f404d.getCurrVelocity()));
            }
        }
    }

    public final boolean l(int i6) {
        int childCount;
        boolean z5 = i6 == 130;
        int height = getHeight();
        Rect rect = this.f403c;
        rect.top = 0;
        rect.bottom = height;
        if (z5 && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            int paddingBottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
            rect.bottom = paddingBottom;
            rect.top = paddingBottom - height;
        }
        return s(i6, rect.top, rect.bottom);
    }

    @Override // android.view.ViewGroup
    public final void measureChild(View view, int i6, int i9) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i6, getPaddingRight() + getPaddingLeft(), layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    public final void measureChildWithMargins(View view, int i6, int i9, int i10, int i11) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i6, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i9, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    public final boolean n(View view, int i6, int i9) {
        Rect rect = this.f403c;
        view.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(view, rect);
        return rect.bottom + i6 >= getScrollY() && rect.top - i6 <= getScrollY() + i9;
    }

    public final void o(int i6, int i9, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i6);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.G.c(0, scrollY2, 0, i6 - scrollY2, null, i9, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f408i = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0124  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onGenericMotionEvent(android.view.MotionEvent r30) {
        /*
            Method dump skipped, instruction units count: 837
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0117  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onInterceptTouchEvent(android.view.MotionEvent r13) {
        /*
            Method dump skipped, instruction units count: 309
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z5, int i6, int i9, int i10, int i11) {
        int measuredHeight;
        super.onLayout(z5, i6, i9, i10, i11);
        int i12 = 0;
        this.h = false;
        View view = this.f409j;
        if (view != null && m(view, this)) {
            View view2 = this.f409j;
            Rect rect = this.f403c;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int iH = h(rect);
            if (iH != 0) {
                scrollBy(0, iH);
            }
        }
        this.f409j = null;
        if (!this.f408i) {
            if (this.E != null) {
                scrollTo(getScrollX(), this.E.f4203a);
                this.E = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                measuredHeight = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            } else {
                measuredHeight = 0;
            }
            int paddingTop = ((i11 - i9) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            if (paddingTop < measuredHeight && scrollY >= 0) {
                i12 = paddingTop + scrollY > measuredHeight ? measuredHeight - paddingTop : scrollY;
            }
            if (i12 != scrollY) {
                scrollTo(getScrollX(), i12);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f408i = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i6, int i9) {
        super.onMeasure(i6, i9);
        if (this.f412m && View.MeasureSpec.getMode(i9) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(ViewGroup.getChildMeasureSpec(i6, getPaddingRight() + getPaddingLeft() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f9, float f10, boolean z5) {
        if (z5) {
            return false;
        }
        dispatchNestedFling(0.0f, f10, true);
        k((int) f10);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f9, float f10) {
        return this.G.b(f9, f10);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i6, int i9, int[] iArr) {
        i(i6, i9, 0, iArr, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i6, int i9, int i10, int i11) {
        o(i11, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i6) {
        a(view, view2, i6, 0);
    }

    @Override // android.view.View
    public final void onOverScrolled(int i6, int i9, boolean z5, boolean z8) {
        super.scrollTo(i6, i9);
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i6, Rect rect) {
        if (i6 == 2) {
            i6 = 130;
        } else if (i6 == 1) {
            i6 = 33;
        }
        View viewFindNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, null, i6) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i6);
        if (viewFindNextFocus != null && n(viewFindNextFocus, 0, getHeight())) {
            return viewFindNextFocus.requestFocus(i6, rect);
        }
        return false;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof h)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        h hVar = (h) parcelable;
        super.onRestoreInstanceState(hVar.getSuperState());
        this.E = hVar;
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        h hVar = new h(super.onSaveInstanceState());
        hVar.f4203a = getScrollY();
        return hVar;
    }

    @Override // android.view.View
    public final void onScrollChanged(int i6, int i9, int i10, int i11) {
        super.onScrollChanged(i6, i9, i10, i11);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i6, int i9, int i10, int i11) {
        super.onSizeChanged(i6, i9, i10, i11);
        View viewFindFocus = findFocus();
        if (viewFindFocus == null || this == viewFindFocus || !n(viewFindFocus, 0, i11)) {
            return;
        }
        Rect rect = this.f403c;
        viewFindFocus.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(viewFindFocus, rect);
        int iH = h(rect);
        if (iH != 0) {
            if (this.f413v) {
                v(0, iH, false);
            } else {
                scrollBy(0, iH);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i6) {
        return f(view, view2, i6, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        b(view, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0145  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onTouchEvent(android.view.MotionEvent r20) {
        /*
            Method dump skipped, instruction units count: 546
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void p(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f417z) {
            int i6 = actionIndex == 0 ? 1 : 0;
            this.f407g = (int) motionEvent.getY(i6);
            this.f417z = motionEvent.getPointerId(i6);
            VelocityTracker velocityTracker = this.f411l;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public final boolean q(int i6, int i9, int i10, int i11) {
        int i12;
        boolean z5;
        int i13;
        boolean z8;
        getOverScrollMode();
        super.computeHorizontalScrollRange();
        super.computeHorizontalScrollExtent();
        computeVerticalScrollRange();
        super.computeVerticalScrollExtent();
        int i14 = i10 + i6;
        if (i9 <= 0 && i9 >= 0) {
            i12 = i9;
            z5 = false;
        } else {
            i12 = 0;
            z5 = true;
        }
        if (i14 > i11) {
            i13 = i11;
        } else {
            if (i14 >= 0) {
                i13 = i14;
                z8 = false;
                if (z8 && this.G.d(1) == null) {
                    this.f404d.springBack(i12, i13, 0, 0, 0, getScrollRange());
                }
                super.scrollTo(i12, i13);
                return !z5 || z8;
            }
            i13 = 0;
        }
        z8 = true;
        if (z8) {
            this.f404d.springBack(i12, i13, 0, 0, 0, getScrollRange());
        }
        super.scrollTo(i12, i13);
        if (z5) {
        }
    }

    public final void r(int i6) {
        boolean z5 = i6 == 130;
        int height = getHeight();
        Rect rect = this.f403c;
        if (z5) {
            rect.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                int paddingBottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
                if (rect.top + height > paddingBottom) {
                    rect.top = paddingBottom - height;
                }
            }
        } else {
            int scrollY = getScrollY() - height;
            rect.top = scrollY;
            if (scrollY < 0) {
                rect.top = 0;
            }
        }
        int i9 = rect.top;
        int i10 = height + i9;
        rect.bottom = i10;
        s(i6, i9, i10);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        if (this.h) {
            this.f409j = view2;
        } else {
            Rect rect = this.f403c;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int iH = h(rect);
            if (iH != 0) {
                scrollBy(0, iH);
            }
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z5) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        int iH = h(rect);
        boolean z8 = iH != 0;
        if (z8) {
            if (z5) {
                scrollBy(0, iH);
                return z8;
            }
            v(0, iH, false);
        }
        return z8;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z5) {
        VelocityTracker velocityTracker;
        if (z5 && (velocityTracker = this.f411l) != null) {
            velocityTracker.recycle();
            this.f411l = null;
        }
        super.requestDisallowInterceptTouchEvent(z5);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        this.h = true;
        super.requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean s(int r18, int r19, int r20) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            r2 = r19
            r3 = r20
            int r4 = r0.getHeight()
            int r5 = r0.getScrollY()
            int r4 = r4 + r5
            r6 = 33
            if (r1 != r6) goto L17
            r6 = 1
            goto L18
        L17:
            r6 = 0
        L18:
            r9 = 2
            java.util.ArrayList r9 = r0.getFocusables(r9)
            int r10 = r9.size()
            r11 = 0
            r12 = 0
            r13 = 0
        L24:
            if (r12 >= r10) goto L6c
            java.lang.Object r14 = r9.get(r12)
            android.view.View r14 = (android.view.View) r14
            int r15 = r14.getTop()
            int r7 = r14.getBottom()
            if (r2 >= r7) goto L69
            if (r15 >= r3) goto L69
            if (r2 >= r15) goto L3f
            if (r7 >= r3) goto L3f
            r16 = 1
            goto L41
        L3f:
            r16 = 0
        L41:
            if (r11 != 0) goto L47
            r11 = r14
            r13 = r16
            goto L69
        L47:
            if (r6 == 0) goto L4f
            int r8 = r11.getTop()
            if (r15 < r8) goto L57
        L4f:
            if (r6 != 0) goto L59
            int r8 = r11.getBottom()
            if (r7 <= r8) goto L59
        L57:
            r7 = 1
            goto L5a
        L59:
            r7 = 0
        L5a:
            if (r13 == 0) goto L61
            if (r16 == 0) goto L69
            if (r7 == 0) goto L69
            goto L68
        L61:
            if (r16 == 0) goto L66
            r11 = r14
            r13 = 1
            goto L69
        L66:
            if (r7 == 0) goto L69
        L68:
            r11 = r14
        L69:
            int r12 = r12 + 1
            goto L24
        L6c:
            if (r11 != 0) goto L6f
            r11 = r0
        L6f:
            if (r2 < r5) goto L75
            if (r3 > r4) goto L75
            r7 = 0
            goto L82
        L75:
            if (r6 == 0) goto L7b
            int r2 = r2 - r5
        L78:
            r3 = 0
            r4 = 1
            goto L7e
        L7b:
            int r2 = r3 - r4
            goto L78
        L7e:
            r0.t(r2, r3, r4, r4)
            r7 = r4
        L82:
            android.view.View r2 = r0.findFocus()
            if (r11 == r2) goto L8b
            r11.requestFocus(r1)
        L8b:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.s(int, int, int):boolean");
    }

    @Override // android.view.View
    public final void scrollTo(int i6, int i9) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int width2 = childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int height2 = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            if (width >= width2 || i6 < 0) {
                i6 = 0;
            } else if (width + i6 > width2) {
                i6 = width2 - width;
            }
            if (height >= height2 || i9 < 0) {
                i9 = 0;
            } else if (height + i9 > height2) {
                i9 = height2 - height;
            }
            if (i6 == getScrollX() && i9 == getScrollY()) {
                return;
            }
            super.scrollTo(i6, i9);
        }
    }

    public void setFillViewport(boolean z5) {
        if (z5 != this.f412m) {
            this.f412m = z5;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z5) {
        com.google.firebase.messaging.p pVar = this.G;
        if (pVar.f2137a) {
            NestedScrollView nestedScrollView = (NestedScrollView) pVar.f2140d;
            WeakHashMap weakHashMap = k0.f3286a;
            d0.j(nestedScrollView);
        }
        pVar.f2137a = z5;
    }

    public void setSmoothScrollingEnabled(boolean z5) {
        this.f413v = z5;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i6) {
        return w(i6, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        y(0);
    }

    public final int t(int i6, int i9, int i10, boolean z5) {
        int i11;
        int i12;
        boolean z8;
        VelocityTracker velocityTracker;
        if (i10 == 1) {
            w(2, i10);
        }
        boolean zI = i(0, i6, i10, this.B, this.A);
        int[] iArr = this.A;
        int[] iArr2 = this.B;
        if (zI) {
            i11 = i6 - iArr2[1];
            i12 = iArr[1];
        } else {
            i11 = i6;
            i12 = 0;
        }
        int scrollY = getScrollY();
        int scrollRange = getScrollRange();
        int overScrollMode = getOverScrollMode();
        boolean z9 = (overScrollMode == 0 || (overScrollMode == 1 && getScrollRange() > 0)) && !z5;
        boolean z10 = q(i11, 0, scrollY, scrollRange) && this.G.d(i10) == null;
        int scrollY2 = getScrollY() - scrollY;
        iArr2[1] = 0;
        this.G.c(0, scrollY2, 0, i11 - scrollY2, this.A, i10, iArr2);
        int i13 = i12 + iArr[1];
        int i14 = i11 - iArr2[1];
        int i15 = scrollY + i14;
        EdgeEffect edgeEffect = this.f406f;
        EdgeEffect edgeEffect2 = this.f405e;
        if (i15 < 0) {
            if (z9) {
                b.p(edgeEffect2, (-i14) / getHeight(), i9 / getWidth());
                if (!edgeEffect.isFinished()) {
                    edgeEffect.onRelease();
                }
            }
        } else if (i15 > scrollRange && z9) {
            b.p(edgeEffect, i14 / getHeight(), 1.0f - (i9 / getWidth()));
            if (!edgeEffect2.isFinished()) {
                edgeEffect2.onRelease();
            }
        }
        if (edgeEffect2.isFinished() && edgeEffect.isFinished()) {
            z8 = z10;
        } else {
            postInvalidateOnAnimation();
            z8 = false;
        }
        if (z8 && i10 == 0 && (velocityTracker = this.f411l) != null) {
            velocityTracker.clear();
        }
        if (i10 == 1) {
            y(i10);
            edgeEffect2.onRelease();
            edgeEffect.onRelease();
        }
        return i13;
    }

    public final boolean u(EdgeEffect edgeEffect, int i6) {
        if (i6 > 0) {
            return true;
        }
        float fG = b.g(edgeEffect) * getHeight();
        float fAbs = Math.abs(-i6) * 0.35f;
        float f9 = this.f401a * 0.015f;
        double dLog = Math.log(fAbs / f9);
        double d6 = J;
        return ((float) (Math.exp((d6 / (d6 - 1.0d)) * dLog) * ((double) f9))) < fG;
    }

    public final void v(int i6, int i9, boolean z5) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.f402b > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            int iMax = Math.max(0, Math.min(i9 + scrollY, Math.max(0, height - height2))) - scrollY;
            this.f404d.startScroll(getScrollX(), scrollY, 0, iMax, 250);
            if (z5) {
                w(2, 1);
            } else {
                y(1);
            }
            this.D = getScrollY();
            postInvalidateOnAnimation();
        } else {
            if (!this.f404d.isFinished()) {
                this.f404d.abortAnimation();
                y(1);
            }
            scrollBy(i6, i9);
        }
        this.f402b = AnimationUtils.currentAnimationTimeMillis();
    }

    public final boolean w(int i6, int i9) {
        boolean zOnStartNestedScroll;
        com.google.firebase.messaging.p pVar = this.G;
        View view = (NestedScrollView) pVar.f2140d;
        if (pVar.d(i9) != null) {
            return true;
        }
        if (pVar.f2137a) {
            View view2 = view;
            for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
                boolean z5 = parent instanceof o;
                if (z5) {
                    zOnStartNestedScroll = ((o) parent).f(view2, view, i6, i9);
                } else if (i9 == 0) {
                    try {
                        zOnStartNestedScroll = parent.onStartNestedScroll(view2, view, i6);
                    } catch (AbstractMethodError e9) {
                        Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onStartNestedScroll", e9);
                        zOnStartNestedScroll = false;
                    }
                } else {
                    zOnStartNestedScroll = false;
                }
                if (zOnStartNestedScroll) {
                    if (i9 == 0) {
                        pVar.f2138b = parent;
                    } else if (i9 == 1) {
                        pVar.f2139c = parent;
                    }
                    if (z5) {
                        ((o) parent).a(view2, view, i6, i9);
                        return true;
                    }
                    if (i9 != 0) {
                        return true;
                    }
                    try {
                        parent.onNestedScrollAccepted(view2, view, i6);
                        return true;
                    } catch (AbstractMethodError e10) {
                        Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onNestedScrollAccepted", e10);
                        return true;
                    }
                }
                if (parent instanceof View) {
                    view2 = (View) parent;
                }
            }
        }
        return false;
    }

    public final boolean x(MotionEvent motionEvent) {
        boolean z5;
        EdgeEffect edgeEffect = this.f405e;
        if (b.g(edgeEffect) != 0.0f) {
            b.p(edgeEffect, 0.0f, motionEvent.getX() / getWidth());
            z5 = true;
        } else {
            z5 = false;
        }
        EdgeEffect edgeEffect2 = this.f406f;
        if (b.g(edgeEffect2) == 0.0f) {
            return z5;
        }
        b.p(edgeEffect2, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
        return true;
    }

    public final void y(int i6) {
        com.google.firebase.messaging.p pVar = this.G;
        ViewParent viewParentD = pVar.d(i6);
        if (viewParentD != null) {
            NestedScrollView nestedScrollView = (NestedScrollView) pVar.f2140d;
            if (viewParentD instanceof o) {
                ((o) viewParentD).b(nestedScrollView, i6);
            } else if (i6 == 0) {
                try {
                    viewParentD.onStopNestedScroll(nestedScrollView);
                } catch (AbstractMethodError e9) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParentD + " does not implement interface method onStopNestedScroll", e9);
                }
            }
            if (i6 == 0) {
                pVar.f2138b = null;
            } else {
                if (i6 != 1) {
                    return;
                }
                pVar.f2139c = null;
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i6) {
        if (getChildCount() <= 0) {
            super.addView(view, i6);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i6, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i6, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    public void setOnScrollChangeListener(m0.g gVar) {
    }
}
