package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.b;
import g.m0;
import l.b0;
import l.l;
import l.m;
import l.n;
import l.p;
import l.y;
import m.j;
import m.l3;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class ActionMenuView extends b implements m, b0 {
    public boolean A;
    public androidx.appcompat.widget.a B;
    public m0 C;
    public l D;
    public boolean E;
    public int F;
    public final int G;
    public final int H;
    public j I;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public n f226x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Context f227y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f228z;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class a extends b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f229a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f230b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f231c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f232d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f233e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f234f;

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f9 = context.getResources().getDisplayMetrics().density;
        this.G = (int) (56.0f * f9);
        this.H = (int) (f9 * 4.0f);
        this.f227y = context;
        this.f228z = 0;
    }

    public static a i() {
        a aVar = new a(-2, -2);
        aVar.f229a = false;
        ((LinearLayout.LayoutParams) aVar).gravity = 16;
        return aVar;
    }

    public static a j(ViewGroup.LayoutParams layoutParams) {
        a aVar;
        if (layoutParams == null) {
            return i();
        }
        if (layoutParams instanceof a) {
            a aVar2 = (a) layoutParams;
            aVar = new a(aVar2);
            aVar.f229a = aVar2.f229a;
        } else {
            aVar = new a(layoutParams);
        }
        if (((LinearLayout.LayoutParams) aVar).gravity <= 0) {
            ((LinearLayout.LayoutParams) aVar).gravity = 16;
        }
        return aVar;
    }

    @Override // l.b0
    public final void a(n nVar) {
        this.f226x = nVar;
    }

    @Override // l.m
    public final boolean b(p pVar) {
        return this.f226x.q(pVar, null, 0);
    }

    @Override // androidx.appcompat.widget.b, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // androidx.appcompat.widget.b
    /* JADX INFO: renamed from: e */
    public final /* bridge */ /* synthetic */ b.a generateDefaultLayoutParams() {
        return i();
    }

    @Override // androidx.appcompat.widget.b
    /* JADX INFO: renamed from: f */
    public final b.a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.b
    /* JADX INFO: renamed from: g */
    public final /* bridge */ /* synthetic */ b.a generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return j(layoutParams);
    }

    @Override // androidx.appcompat.widget.b, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return i();
    }

    @Override // androidx.appcompat.widget.b, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return j(layoutParams);
    }

    public Menu getMenu() {
        if (this.f226x == null) {
            Context context = getContext();
            n nVar = new n(context);
            this.f226x = nVar;
            nVar.f3674e = new o5.c(18, this);
            androidx.appcompat.widget.a aVar = new androidx.appcompat.widget.a(context);
            this.B = aVar;
            aVar.f300l = true;
            aVar.f301m = true;
            y eVar = this.C;
            if (eVar == null) {
                eVar = new e5.e(29);
            }
            aVar.f3610e = eVar;
            this.f226x.b(aVar, this.f227y);
            androidx.appcompat.widget.a aVar2 = this.B;
            aVar2.h = this;
            this.f226x = aVar2.f3608c;
        }
        return this.f226x;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        androidx.appcompat.widget.a aVar = this.B;
        m.h hVar = aVar.f297i;
        if (hVar != null) {
            return hVar.getDrawable();
        }
        if (aVar.f299k) {
            return aVar.f298j;
        }
        return null;
    }

    public int getPopupTheme() {
        return this.f228z;
    }

    public int getWindowAnimations() {
        return 0;
    }

    public final boolean k(int i6) {
        boolean zA = false;
        if (i6 == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i6 - 1);
        KeyEvent.Callback childAt2 = getChildAt(i6);
        if (i6 < getChildCount() && (childAt instanceof m.i)) {
            zA = ((m.i) childAt).a();
        }
        return (i6 <= 0 || !(childAt2 instanceof m.i)) ? zA : ((m.i) childAt2).c() | zA;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        androidx.appcompat.widget.a aVar = this.B;
        if (aVar != null) {
            aVar.d();
            if (this.B.e()) {
                this.B.c();
                this.B.l();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        androidx.appcompat.widget.a aVar = this.B;
        if (aVar != null) {
            aVar.c();
            m.e eVar = aVar.B;
            if (eVar == null || !eVar.b()) {
                return;
            }
            eVar.f3739i.dismiss();
        }
    }

    @Override // androidx.appcompat.widget.b, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z5, int i6, int i9, int i10, int i11) {
        int width;
        int paddingLeft;
        if (!this.E) {
            super.onLayout(z5, i6, i9, i10, i11);
            return;
        }
        int childCount = getChildCount();
        int i12 = (i11 - i9) / 2;
        int dividerWidth = getDividerWidth();
        int i13 = i10 - i6;
        int paddingRight = (i13 - getPaddingRight()) - getPaddingLeft();
        boolean z8 = l3.f4025a;
        boolean z9 = getLayoutDirection() == 1;
        int i14 = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < childCount; i16++) {
            View childAt = getChildAt(i16);
            if (childAt.getVisibility() != 8) {
                a aVar = (a) childAt.getLayoutParams();
                if (aVar.f229a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (k(i16)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (z9) {
                        paddingLeft = getPaddingLeft() + ((LinearLayout.LayoutParams) aVar).leftMargin;
                        width = paddingLeft + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) aVar).rightMargin;
                        paddingLeft = width - measuredWidth;
                    }
                    int i17 = i12 - (measuredHeight / 2);
                    childAt.layout(paddingLeft, i17, width, measuredHeight + i17);
                    paddingRight -= measuredWidth;
                    i14 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) aVar).leftMargin) + ((LinearLayout.LayoutParams) aVar).rightMargin;
                    k(i16);
                    i15++;
                }
            }
        }
        if (childCount == 1 && i14 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i18 = (i13 / 2) - (measuredWidth2 / 2);
            int i19 = i12 - (measuredHeight2 / 2);
            childAt2.layout(i18, i19, measuredWidth2 + i18, measuredHeight2 + i19);
            return;
        }
        int i20 = i15 - (i14 ^ 1);
        int iMax = Math.max(0, i20 > 0 ? paddingRight / i20 : 0);
        if (z9) {
            int width2 = getWidth() - getPaddingRight();
            for (int i21 = 0; i21 < childCount; i21++) {
                View childAt3 = getChildAt(i21);
                a aVar2 = (a) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !aVar2.f229a) {
                    int i22 = width2 - ((LinearLayout.LayoutParams) aVar2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i23 = i12 - (measuredHeight3 / 2);
                    childAt3.layout(i22 - measuredWidth3, i23, i22, measuredHeight3 + i23);
                    width2 = i22 - ((measuredWidth3 + ((LinearLayout.LayoutParams) aVar2).leftMargin) + iMax);
                }
            }
            return;
        }
        int paddingLeft2 = getPaddingLeft();
        for (int i24 = 0; i24 < childCount; i24++) {
            View childAt4 = getChildAt(i24);
            a aVar3 = (a) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !aVar3.f229a) {
                int i25 = paddingLeft2 + ((LinearLayout.LayoutParams) aVar3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i26 = i12 - (measuredHeight4 / 2);
                childAt4.layout(i25, i26, i25 + measuredWidth4, measuredHeight4 + i26);
                paddingLeft2 = measuredWidth4 + ((LinearLayout.LayoutParams) aVar3).rightMargin + iMax + i25;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v16, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v41 */
    @Override // androidx.appcompat.widget.b, android.view.View
    public final void onMeasure(int i6, int i9) {
        int i10;
        int i11;
        ?? r11;
        int i12;
        int i13;
        n nVar;
        boolean z5 = this.E;
        boolean z8 = View.MeasureSpec.getMode(i6) == 1073741824;
        this.E = z8;
        if (z5 != z8) {
            this.F = 0;
        }
        int size = View.MeasureSpec.getSize(i6);
        if (this.E && (nVar = this.f226x) != null && size != this.F) {
            this.F = size;
            nVar.p(true);
        }
        int childCount = getChildCount();
        if (!this.E || childCount <= 0) {
            for (int i14 = 0; i14 < childCount; i14++) {
                a aVar = (a) getChildAt(i14).getLayoutParams();
                ((LinearLayout.LayoutParams) aVar).rightMargin = 0;
                ((LinearLayout.LayoutParams) aVar).leftMargin = 0;
            }
            super.onMeasure(i6, i9);
            return;
        }
        int mode = View.MeasureSpec.getMode(i9);
        int size2 = View.MeasureSpec.getSize(i6);
        int size3 = View.MeasureSpec.getSize(i9);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i9, paddingBottom, -2);
        int i15 = size2 - paddingRight;
        int i16 = this.G;
        int i17 = i15 / i16;
        int i18 = i15 % i16;
        if (i17 == 0) {
            setMeasuredDimension(i15, 0);
            return;
        }
        int i19 = (i18 / i17) + i16;
        int childCount2 = getChildCount();
        int iMax = 0;
        int i20 = 0;
        int iMax2 = 0;
        int i21 = 0;
        boolean z9 = false;
        int i22 = 0;
        long j3 = 0;
        while (true) {
            i10 = this.H;
            if (i21 >= childCount2) {
                break;
            }
            View childAt = getChildAt(i21);
            int i23 = size3;
            int i24 = paddingBottom;
            if (childAt.getVisibility() == 8) {
                i12 = i19;
            } else {
                boolean z10 = childAt instanceof ActionMenuItemView;
                i20++;
                if (z10) {
                    childAt.setPadding(i10, 0, i10, 0);
                }
                a aVar2 = (a) childAt.getLayoutParams();
                aVar2.f234f = false;
                aVar2.f231c = 0;
                aVar2.f230b = 0;
                aVar2.f232d = false;
                ((LinearLayout.LayoutParams) aVar2).leftMargin = 0;
                ((LinearLayout.LayoutParams) aVar2).rightMargin = 0;
                aVar2.f233e = z10 && !TextUtils.isEmpty(((ActionMenuItemView) childAt).getText());
                int i25 = aVar2.f229a ? 1 : i17;
                a aVar3 = (a) childAt.getLayoutParams();
                int i26 = i17;
                i12 = i19;
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(childMeasureSpec) - i24, View.MeasureSpec.getMode(childMeasureSpec));
                ActionMenuItemView actionMenuItemView = z10 ? (ActionMenuItemView) childAt : null;
                boolean z11 = (actionMenuItemView == null || TextUtils.isEmpty(actionMenuItemView.getText())) ? false : true;
                boolean z12 = z11;
                if (i25 <= 0 || (z11 && i25 < 2)) {
                    i13 = 0;
                } else {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i12 * i25, Integer.MIN_VALUE), iMakeMeasureSpec);
                    int measuredWidth = childAt.getMeasuredWidth();
                    i13 = measuredWidth / i12;
                    if (measuredWidth % i12 != 0) {
                        i13++;
                    }
                    if (z12 && i13 < 2) {
                        i13 = 2;
                    }
                }
                aVar3.f232d = !aVar3.f229a && z12;
                aVar3.f230b = i13;
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i13 * i12, 1073741824), iMakeMeasureSpec);
                iMax2 = Math.max(iMax2, i13);
                if (aVar2.f232d) {
                    i22++;
                }
                if (aVar2.f229a) {
                    z9 = true;
                }
                i17 = i26 - i13;
                iMax = Math.max(iMax, childAt.getMeasuredHeight());
                if (i13 == 1) {
                    j3 |= (long) (1 << i21);
                }
            }
            i21++;
            size3 = i23;
            paddingBottom = i24;
            i19 = i12;
        }
        int i27 = size3;
        int i28 = i17;
        int i29 = i19;
        boolean z13 = z9 && i20 == 2;
        int i30 = i28;
        boolean z14 = false;
        while (i22 > 0 && i30 > 0) {
            int i31 = Integer.MAX_VALUE;
            long j8 = 0;
            int i32 = 0;
            int i33 = 0;
            while (i33 < childCount2) {
                int i34 = iMax;
                a aVar4 = (a) getChildAt(i33).getLayoutParams();
                boolean z15 = z13;
                if (aVar4.f232d) {
                    int i35 = aVar4.f230b;
                    if (i35 < i31) {
                        j8 = 1 << i33;
                        i31 = i35;
                        i32 = 1;
                    } else if (i35 == i31) {
                        j8 |= 1 << i33;
                        i32++;
                    }
                }
                i33++;
                z13 = z15;
                iMax = i34;
            }
            i11 = iMax;
            boolean z16 = z13;
            j3 |= j8;
            if (i32 > i30) {
                break;
            }
            int i36 = i31 + 1;
            int i37 = 0;
            while (i37 < childCount2) {
                View childAt2 = getChildAt(i37);
                a aVar5 = (a) childAt2.getLayoutParams();
                boolean z17 = z9;
                long j9 = 1 << i37;
                if ((j8 & j9) != 0) {
                    if (z16 && aVar5.f233e) {
                        r11 = 1;
                        r11 = 1;
                        if (i30 == 1) {
                            childAt2.setPadding(i10 + i29, 0, i10, 0);
                        }
                    } else {
                        r11 = 1;
                    }
                    aVar5.f230b += r11;
                    aVar5.f234f = r11;
                    i30--;
                } else if (aVar5.f230b == i36) {
                    j3 |= j9;
                }
                i37++;
                z9 = z17;
            }
            z13 = z16;
            iMax = i11;
            z14 = true;
        }
        i11 = iMax;
        boolean z18 = !z9 && i20 == 1;
        if (i30 > 0 && j3 != 0 && (i30 < i20 - 1 || z18 || iMax2 > 1)) {
            float fBitCount = Long.bitCount(j3);
            if (!z18) {
                if ((j3 & 1) != 0 && !((a) getChildAt(0).getLayoutParams()).f233e) {
                    fBitCount -= 0.5f;
                }
                int i38 = childCount2 - 1;
                if ((j3 & ((long) (1 << i38))) != 0 && !((a) getChildAt(i38).getLayoutParams()).f233e) {
                    fBitCount -= 0.5f;
                }
            }
            int i39 = fBitCount > 0.0f ? (int) ((i30 * i29) / fBitCount) : 0;
            boolean z19 = z14;
            for (int i40 = 0; i40 < childCount2; i40++) {
                if ((j3 & ((long) (1 << i40))) != 0) {
                    View childAt3 = getChildAt(i40);
                    a aVar6 = (a) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        aVar6.f231c = i39;
                        aVar6.f234f = true;
                        if (i40 == 0 && !aVar6.f233e) {
                            ((LinearLayout.LayoutParams) aVar6).leftMargin = (-i39) / 2;
                        }
                        z19 = true;
                    } else if (aVar6.f229a) {
                        aVar6.f231c = i39;
                        aVar6.f234f = true;
                        ((LinearLayout.LayoutParams) aVar6).rightMargin = (-i39) / 2;
                        z19 = true;
                    } else {
                        if (i40 != 0) {
                            ((LinearLayout.LayoutParams) aVar6).leftMargin = i39 / 2;
                        }
                        if (i40 != childCount2 - 1) {
                            ((LinearLayout.LayoutParams) aVar6).rightMargin = i39 / 2;
                        }
                    }
                }
            }
            z14 = z19;
        }
        if (z14) {
            for (int i41 = 0; i41 < childCount2; i41++) {
                View childAt4 = getChildAt(i41);
                a aVar7 = (a) childAt4.getLayoutParams();
                if (aVar7.f234f) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((aVar7.f230b * i29) + aVar7.f231c, 1073741824), childMeasureSpec);
                }
            }
        }
        setMeasuredDimension(i15, mode != 1073741824 ? i11 : i27);
    }

    public void setExpandedActionViewsExclusive(boolean z5) {
        this.B.f305y = z5;
    }

    public void setOnMenuItemClickListener(j jVar) {
        this.I = jVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        androidx.appcompat.widget.a aVar = this.B;
        m.h hVar = aVar.f297i;
        if (hVar != null) {
            hVar.setImageDrawable(drawable);
        } else {
            aVar.f299k = true;
            aVar.f298j = drawable;
        }
    }

    public void setOverflowReserved(boolean z5) {
        this.A = z5;
    }

    public void setPopupTheme(int i6) {
        if (this.f228z != i6) {
            this.f228z = i6;
            if (i6 == 0) {
                this.f227y = getContext();
            } else {
                this.f227y = new ContextThemeWrapper(getContext(), i6);
            }
        }
    }

    public void setPresenter(androidx.appcompat.widget.a aVar) {
        this.B = aVar;
        aVar.h = this;
        this.f226x = aVar.f3608c;
    }

    @Override // androidx.appcompat.widget.b, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }
}
