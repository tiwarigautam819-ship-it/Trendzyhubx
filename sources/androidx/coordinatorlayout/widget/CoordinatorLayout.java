package androidx.coordinatorlayout.widget;

import a6.c;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.AbsSavedState;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.YaarWin.app.R;
import com.google.firebase.messaging.y;
import j0.b0;
import j0.b1;
import j0.d0;
import j0.k0;
import j0.o;
import j0.p;
import j0.q;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
import k1.h;
import w.d;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements o, p {
    public static final ThreadLocal A;
    public static final c B;
    public static final i0.c C;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final String f350y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final Class[] f351z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f352a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final y f353b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f354c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f355d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f356e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f357f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int[] f358g;
    public View h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public w.b f359i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f360j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public b1 f361k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f362l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Drawable f363m;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public ViewGroup.OnHierarchyChangeListener f364v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public h f365w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final q f366x;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static abstract class a {
        public a(Context context, AttributeSet attributeSet) {
        }
    }

    static {
        Package r02 = CoordinatorLayout.class.getPackage();
        f350y = r02 != null ? r02.getName() : null;
        B = new c(2);
        f351z = new Class[]{Context.class, AttributeSet.class};
        A = new ThreadLocal();
        C = new i0.c();
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.coordinatorLayoutStyle);
        this.f352a = new ArrayList();
        this.f353b = new y(11);
        this.f354c = new ArrayList();
        this.f355d = new int[2];
        this.f366x = new q();
        int[] iArr = v.a.f5527a;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, R.attr.coordinatorLayoutStyle, 0);
        k0.g(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, R.attr.coordinatorLayoutStyle, 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            int[] intArray = resources.getIntArray(resourceId);
            this.f358g = intArray;
            float f9 = resources.getDisplayMetrics().density;
            int length = intArray.length;
            for (int i6 = 0; i6 < length; i6++) {
                this.f358g[i6] = (int) (r1[i6] * f9);
            }
        }
        this.f363m = typedArrayObtainStyledAttributes.getDrawable(1);
        typedArrayObtainStyledAttributes.recycle();
        t();
        super.setOnHierarchyChangeListener(new w.a(this));
        WeakHashMap weakHashMap = k0.f3286a;
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    public static Rect g() {
        Rect rect = (Rect) C.a();
        return rect == null ? new Rect() : rect;
    }

    public static void k(int i6, Rect rect, Rect rect2, b bVar, int i9, int i10) {
        int i11 = bVar.f369c;
        if (i11 == 0) {
            i11 = 17;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i11, i6);
        int i12 = bVar.f370d;
        if ((i12 & 7) == 0) {
            i12 |= 8388611;
        }
        if ((i12 & 112) == 0) {
            i12 |= 48;
        }
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i12, i6);
        int i13 = absoluteGravity & 7;
        int i14 = absoluteGravity & 112;
        int i15 = absoluteGravity2 & 7;
        int i16 = absoluteGravity2 & 112;
        int iWidth = i15 != 1 ? i15 != 5 ? rect.left : rect.right : rect.left + (rect.width() / 2);
        int iHeight = i16 != 16 ? i16 != 80 ? rect.top : rect.bottom : rect.top + (rect.height() / 2);
        if (i13 == 1) {
            iWidth -= i9 / 2;
        } else if (i13 != 5) {
            iWidth -= i9;
        }
        if (i14 == 16) {
            iHeight -= i10 / 2;
        } else if (i14 != 80) {
            iHeight -= i10;
        }
        rect2.set(iWidth, iHeight, i9 + iWidth, i10 + iHeight);
    }

    public static b m(View view) {
        b bVar = (b) view.getLayoutParams();
        if (!bVar.f368b) {
            androidx.coordinatorlayout.widget.a aVar = null;
            for (Class<?> superclass = view.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                aVar = (androidx.coordinatorlayout.widget.a) superclass.getAnnotation(androidx.coordinatorlayout.widget.a.class);
                if (aVar != null) {
                    break;
                }
            }
            if (aVar != null) {
                try {
                    a aVar2 = (a) aVar.value().getDeclaredConstructor(null).newInstance(null);
                    if (bVar.f367a != aVar2) {
                        bVar.f367a = aVar2;
                        bVar.f368b = true;
                    }
                } catch (Exception e9) {
                    Log.e("CoordinatorLayout", "Default behavior class " + aVar.value().getName() + " could not be instantiated. Did you forget a default constructor?", e9);
                }
            }
            bVar.f368b = true;
        }
        return bVar;
    }

    public static void r(View view, int i6) {
        b bVar = (b) view.getLayoutParams();
        int i9 = bVar.f374i;
        if (i9 != i6) {
            WeakHashMap weakHashMap = k0.f3286a;
            view.offsetLeftAndRight(i6 - i9);
            bVar.f374i = i6;
        }
    }

    public static void s(View view, int i6) {
        b bVar = (b) view.getLayoutParams();
        int i9 = bVar.f375j;
        if (i9 != i6) {
            WeakHashMap weakHashMap = k0.f3286a;
            view.offsetTopAndBottom(i6 - i9);
            bVar.f375j = i6;
        }
    }

    @Override // j0.o
    public final void a(View view, View view2, int i6, int i9) {
        q qVar = this.f366x;
        if (i9 == 1) {
            qVar.f3300b = i6;
        } else {
            qVar.f3299a = i6;
        }
        this.h = view2;
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            ((b) getChildAt(i10).getLayoutParams()).getClass();
        }
    }

    @Override // j0.o
    public final void b(View view, int i6) {
        q qVar = this.f366x;
        if (i6 == 1) {
            qVar.f3300b = 0;
        } else {
            qVar.f3299a = 0;
        }
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            ((b) getChildAt(i9).getLayoutParams()).getClass();
        }
        this.h = null;
    }

    @Override // j0.p
    public final void c(View view, int i6, int i9, int i10, int i11, int i12, int[] iArr) {
        int childCount = getChildCount();
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8) {
                ((b) childAt.getLayoutParams()).getClass();
            }
        }
        iArr[0] = iArr[0];
        iArr[1] = iArr[1];
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof b) && super.checkLayoutParams(layoutParams);
    }

    @Override // j0.o
    public final void d(View view, int i6, int i9, int i10, int i11, int i12) {
        c(view, i6, i9, i10, i11, 0, this.f355d);
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j3) {
        a aVar = ((b) view.getLayoutParams()).f367a;
        if (aVar != null) {
            aVar.getClass();
        }
        return super.drawChild(canvas, view, j3);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f363m;
        if ((drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState)) {
            invalidate();
        }
    }

    @Override // j0.o
    public final void e(int i6, int i9, int i10, int[] iArr) {
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                ((b) childAt.getLayoutParams()).getClass();
            }
        }
        iArr[0] = 0;
        iArr[1] = 0;
    }

    @Override // j0.o
    public final boolean f(View view, View view2, int i6, int i9) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                a aVar = ((b) childAt.getLayoutParams()).f367a;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new b();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    public final List<View> getDependencySortedChildren() {
        p();
        return Collections.unmodifiableList(this.f352a);
    }

    public final b1 getLastWindowInsets() {
        return this.f361k;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        q qVar = this.f366x;
        return qVar.f3300b | qVar.f3299a;
    }

    public Drawable getStatusBarBackground() {
        return this.f363m;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingBottom() + getPaddingTop());
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingRight() + getPaddingLeft());
    }

    public final void h(b bVar, Rect rect, int i6, int i9) {
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) bVar).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i6) - ((ViewGroup.MarginLayoutParams) bVar).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) bVar).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i9) - ((ViewGroup.MarginLayoutParams) bVar).bottomMargin));
        rect.set(iMax, iMax2, i6 + iMax, i9 + iMax2);
    }

    public final void i(View view, Rect rect, boolean z5) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z5) {
            j(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    public final void j(View view, Rect rect) {
        ThreadLocal threadLocal = d.f5711a;
        rect.set(0, 0, view.getWidth(), view.getHeight());
        ThreadLocal threadLocal2 = d.f5711a;
        Matrix matrix = (Matrix) threadLocal2.get();
        if (matrix == null) {
            matrix = new Matrix();
            threadLocal2.set(matrix);
        } else {
            matrix.reset();
        }
        d.a(this, view, matrix);
        ThreadLocal threadLocal3 = d.f5712b;
        RectF rectF = (RectF) threadLocal3.get();
        if (rectF == null) {
            rectF = new RectF();
            threadLocal3.set(rectF);
        }
        rectF.set(rect);
        matrix.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }

    public final int l(int i6) {
        int[] iArr = this.f358g;
        if (iArr == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i6);
            return 0;
        }
        if (i6 >= 0 && i6 < iArr.length) {
            return iArr[i6];
        }
        Log.e("CoordinatorLayout", "Keyline index " + i6 + " out of range for " + this);
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x025a A[LOOP:2: B:96:0x0256->B:98:0x025a, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void n(int r22) {
        /*
            Method dump skipped, instruction units count: 646
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.n(int):void");
    }

    public final void o(MotionEvent motionEvent, int i6) {
        motionEvent.getActionMasked();
        ArrayList arrayList = this.f354c;
        arrayList.clear();
        boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i9 = childCount - 1; i9 >= 0; i9--) {
            arrayList.add(getChildAt(zIsChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i9) : i9));
        }
        c cVar = B;
        if (cVar != null) {
            Collections.sort(arrayList, cVar);
        }
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (((b) ((View) arrayList.get(i10)).getLayoutParams()).f367a != null && i6 != 0 && i6 != 1) {
                throw new IllegalArgumentException();
            }
        }
        arrayList.clear();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        q();
        if (this.f360j) {
            if (this.f359i == null) {
                this.f359i = new w.b(this);
            }
            getViewTreeObserver().addOnPreDrawListener(this.f359i);
        }
        if (this.f361k == null) {
            WeakHashMap weakHashMap = k0.f3286a;
            if (getFitsSystemWindows()) {
                b0.c(this);
            }
        }
        this.f357f = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        q();
        if (this.f360j && this.f359i != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f359i);
        }
        View view = this.h;
        if (view != null) {
            b(view, 0);
        }
        this.f357f = false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f362l || this.f363m == null) {
            return;
        }
        b1 b1Var = this.f361k;
        int iD = b1Var != null ? b1Var.d() : 0;
        if (iD > 0) {
            this.f363m.setBounds(0, 0, getWidth(), iD);
            this.f363m.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            q();
        }
        o(motionEvent, 0);
        if (actionMasked != 1 && actionMasked != 3) {
            return false;
        }
        q();
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z5, int i6, int i9, int i10, int i11) {
        Rect rectG;
        Rect rectG2;
        WeakHashMap weakHashMap = k0.f3286a;
        int layoutDirection = getLayoutDirection();
        ArrayList arrayList = this.f352a;
        int size = arrayList.size();
        for (int i12 = 0; i12 < size; i12++) {
            View view = (View) arrayList.get(i12);
            if (view.getVisibility() != 8) {
                a aVar = ((b) view.getLayoutParams()).f367a;
                b bVar = (b) view.getLayoutParams();
                View view2 = bVar.f376k;
                if (view2 == null && bVar.f372f != -1) {
                    throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
                }
                i0.c cVar = C;
                if (view2 != null) {
                    rectG = g();
                    rectG2 = g();
                    try {
                        j(view2, rectG);
                        b bVar2 = (b) view.getLayoutParams();
                        int measuredWidth = view.getMeasuredWidth();
                        int measuredHeight = view.getMeasuredHeight();
                        k(layoutDirection, rectG, rectG2, bVar2, measuredWidth, measuredHeight);
                        h(bVar2, rectG2, measuredWidth, measuredHeight);
                        view.layout(rectG2.left, rectG2.top, rectG2.right, rectG2.bottom);
                    } finally {
                        rectG.setEmpty();
                        cVar.d(rectG);
                        rectG2.setEmpty();
                        cVar.d(rectG2);
                    }
                } else {
                    int i13 = bVar.f371e;
                    if (i13 >= 0) {
                        b bVar3 = (b) view.getLayoutParams();
                        int i14 = bVar3.f369c;
                        if (i14 == 0) {
                            i14 = 8388661;
                        }
                        int absoluteGravity = Gravity.getAbsoluteGravity(i14, layoutDirection);
                        int i15 = absoluteGravity & 7;
                        int i16 = absoluteGravity & 112;
                        int width = getWidth();
                        int height = getHeight();
                        int measuredWidth2 = view.getMeasuredWidth();
                        int measuredHeight2 = view.getMeasuredHeight();
                        if (layoutDirection == 1) {
                            i13 = width - i13;
                        }
                        int iL = l(i13) - measuredWidth2;
                        if (i15 == 1) {
                            iL += measuredWidth2 / 2;
                        } else if (i15 == 5) {
                            iL += measuredWidth2;
                        }
                        int i17 = i16 != 16 ? i16 != 80 ? 0 : measuredHeight2 : measuredHeight2 / 2;
                        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) bVar3).leftMargin, Math.min(iL, ((width - getPaddingRight()) - measuredWidth2) - ((ViewGroup.MarginLayoutParams) bVar3).rightMargin));
                        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) bVar3).topMargin, Math.min(i17, ((height - getPaddingBottom()) - measuredHeight2) - ((ViewGroup.MarginLayoutParams) bVar3).bottomMargin));
                        view.layout(iMax, iMax2, measuredWidth2 + iMax, measuredHeight2 + iMax2);
                    } else {
                        b bVar4 = (b) view.getLayoutParams();
                        rectG = g();
                        rectG.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) bVar4).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) bVar4).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) bVar4).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) bVar4).bottomMargin);
                        if (this.f361k != null) {
                            WeakHashMap weakHashMap2 = k0.f3286a;
                            if (getFitsSystemWindows() && !view.getFitsSystemWindows()) {
                                rectG.left = this.f361k.b() + rectG.left;
                                rectG.top = this.f361k.d() + rectG.top;
                                rectG.right -= this.f361k.c();
                                rectG.bottom -= this.f361k.a();
                            }
                        }
                        rectG2 = g();
                        int i18 = bVar4.f369c;
                        if ((i18 & 7) == 0) {
                            i18 |= 8388611;
                        }
                        if ((i18 & 112) == 0) {
                            i18 |= 48;
                        }
                        int i19 = layoutDirection;
                        Gravity.apply(i18, view.getMeasuredWidth(), view.getMeasuredHeight(), rectG, rectG2, i19);
                        layoutDirection = i19;
                        view.layout(rectG2.left, rectG2.top, rectG2.right, rectG2.bottom);
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:74:0x0161  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onMeasure(int r27, int r28) {
        /*
            Method dump skipped, instruction units count: 463
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f9, float f10, boolean z5) {
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                ((b) childAt.getLayoutParams()).getClass();
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f9, float f10) {
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                ((b) childAt.getLayoutParams()).getClass();
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i6, int i9, int[] iArr) {
        e(i6, i9, 0, iArr);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i6, int i9, int i10, int i11) {
        d(view, i6, i9, i10, i11, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i6) {
        a(view, view2, i6, 0);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof w.c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        w.c cVar = (w.c) parcelable;
        super.onRestoreInstanceState(cVar.f4395a);
        SparseArray sparseArray = cVar.f5710c;
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            int id = childAt.getId();
            a aVar = m(childAt).f367a;
            if (id != -1 && aVar != null) {
            }
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        AbsSavedState absSavedState;
        w.c cVar = new w.c(super.onSaveInstanceState());
        SparseArray sparseArray = new SparseArray();
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            int id = childAt.getId();
            a aVar = ((b) childAt.getLayoutParams()).f367a;
            if (id != -1 && aVar != null && (absSavedState = View.BaseSavedState.EMPTY_STATE) != null) {
                sparseArray.append(id, absSavedState);
            }
        }
        cVar.f5710c = sparseArray;
        return cVar;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i6) {
        f(view, view2, i6, 0);
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        b(view, 0);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        o(motionEvent, 1);
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        if (actionMasked != 1 && actionMasked != 3) {
            return zOnTouchEvent;
        }
        q();
        return zOnTouchEvent;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00fb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void p() {
        /*
            Method dump skipped, instruction units count: 391
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.p():void");
    }

    public final void q() {
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            ((b) getChildAt(i6).getLayoutParams()).getClass();
        }
        this.f356e = false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z5) {
        a aVar = ((b) view.getLayoutParams()).f367a;
        return super.requestChildRectangleOnScreen(view, rect, z5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z5) {
        super.requestDisallowInterceptTouchEvent(z5);
        if (!z5 || this.f356e) {
            return;
        }
        int childCount = getChildCount();
        MotionEvent motionEventObtain = null;
        for (int i6 = 0; i6 < childCount; i6++) {
            if (((b) getChildAt(i6).getLayoutParams()).f367a != null && motionEventObtain == null) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
            }
        }
        if (motionEventObtain != null) {
            motionEventObtain.recycle();
        }
        q();
        this.f356e = true;
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z5) {
        super.setFitsSystemWindows(z5);
        t();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f364v = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = this.f363m;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f363m = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.f363m.setState(getDrawableState());
                }
                Drawable drawable3 = this.f363m;
                WeakHashMap weakHashMap = k0.f3286a;
                drawable3.setLayoutDirection(getLayoutDirection());
                this.f363m.setVisible(getVisibility() == 0, false);
                this.f363m.setCallback(this);
            }
            WeakHashMap weakHashMap2 = k0.f3286a;
            postInvalidateOnAnimation();
        }
    }

    public void setStatusBarBackgroundColor(int i6) {
        setStatusBarBackground(new ColorDrawable(i6));
    }

    public void setStatusBarBackgroundResource(int i6) {
        setStatusBarBackground(i6 != 0 ? getContext().getDrawable(i6) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i6) {
        super.setVisibility(i6);
        boolean z5 = i6 == 0;
        Drawable drawable = this.f363m;
        if (drawable == null || drawable.isVisible() == z5) {
            return;
        }
        this.f363m.setVisible(z5, false);
    }

    public final void t() {
        WeakHashMap weakHashMap = k0.f3286a;
        if (!getFitsSystemWindows()) {
            d0.i(this, null);
            return;
        }
        if (this.f365w == null) {
            this.f365w = new h(28, this);
        }
        d0.i(this, this.f365w);
        setSystemUiVisibility(1280);
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f363m;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof b ? new b((b) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new b((ViewGroup.MarginLayoutParams) layoutParams) : new b(layoutParams);
    }
}
