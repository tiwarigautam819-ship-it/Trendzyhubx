package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import j0.k0;
import m.l3;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class b extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f307a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f308b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f309c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f310d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f311e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f312f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f313g;
    public boolean h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f314i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[] f315j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Drawable f316k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f317l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f318m;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f319v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f320w;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class a extends LinearLayout.LayoutParams {
        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public b(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void c(Canvas canvas, int i6) {
        this.f316k.setBounds(getPaddingLeft() + this.f320w, i6, (getWidth() - getPaddingRight()) - this.f320w, this.f318m + i6);
        this.f316k.draw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    public final void d(Canvas canvas, int i6) {
        this.f316k.setBounds(i6, getPaddingTop() + this.f320w, this.f317l + i6, (getHeight() - getPaddingBottom()) - this.f320w);
        this.f316k.draw(canvas);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public a generateDefaultLayoutParams() {
        int i6 = this.f310d;
        if (i6 == 0) {
            return new a(-2, -2);
        }
        if (i6 == 1) {
            return new a(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public a generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a ? new a((a) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new a((ViewGroup.MarginLayoutParams) layoutParams) : new a(layoutParams);
    }

    @Override // android.view.View
    public int getBaseline() {
        int i6;
        if (this.f308b < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i9 = this.f308b;
        if (childCount <= i9) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i9);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.f308b == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int bottom = this.f309c;
        if (this.f310d == 1 && (i6 = this.f311e & 112) != 48) {
            if (i6 == 16) {
                bottom += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f312f) / 2;
            } else if (i6 == 80) {
                bottom = ((getBottom() - getTop()) - getPaddingBottom()) - this.f312f;
            }
        }
        return bottom + ((LinearLayout.LayoutParams) ((a) childAt.getLayoutParams())).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.f308b;
    }

    public Drawable getDividerDrawable() {
        return this.f316k;
    }

    public int getDividerPadding() {
        return this.f320w;
    }

    public int getDividerWidth() {
        return this.f317l;
    }

    public int getGravity() {
        return this.f311e;
    }

    public int getOrientation() {
        return this.f310d;
    }

    public int getShowDividers() {
        return this.f319v;
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f313g;
    }

    public final boolean h(int i6) {
        if (i6 == 0) {
            return (this.f319v & 1) != 0;
        }
        if (i6 == getChildCount()) {
            return (this.f319v & 4) != 0;
        }
        if ((this.f319v & 2) != 0) {
            for (int i9 = i6 - 1; i9 >= 0; i9--) {
                if (getChildAt(i9).getVisibility() != 8) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int right;
        int left;
        int i6;
        if (this.f316k == null) {
            return;
        }
        int i9 = 0;
        if (this.f310d == 1) {
            int virtualChildCount = getVirtualChildCount();
            while (i9 < virtualChildCount) {
                View childAt = getChildAt(i9);
                if (childAt != null && childAt.getVisibility() != 8 && h(i9)) {
                    c(canvas, (childAt.getTop() - ((LinearLayout.LayoutParams) ((a) childAt.getLayoutParams())).topMargin) - this.f318m);
                }
                i9++;
            }
            if (h(virtualChildCount)) {
                View childAt2 = getChildAt(virtualChildCount - 1);
                c(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.f318m : childAt2.getBottom() + ((LinearLayout.LayoutParams) ((a) childAt2.getLayoutParams())).bottomMargin);
                return;
            }
            return;
        }
        int virtualChildCount2 = getVirtualChildCount();
        boolean z5 = l3.f4025a;
        boolean z8 = getLayoutDirection() == 1;
        while (i9 < virtualChildCount2) {
            View childAt3 = getChildAt(i9);
            if (childAt3 != null && childAt3.getVisibility() != 8 && h(i9)) {
                a aVar = (a) childAt3.getLayoutParams();
                d(canvas, z8 ? childAt3.getRight() + ((LinearLayout.LayoutParams) aVar).rightMargin : (childAt3.getLeft() - ((LinearLayout.LayoutParams) aVar).leftMargin) - this.f317l);
            }
            i9++;
        }
        if (h(virtualChildCount2)) {
            View childAt4 = getChildAt(virtualChildCount2 - 1);
            if (childAt4 != null) {
                a aVar2 = (a) childAt4.getLayoutParams();
                if (z8) {
                    left = childAt4.getLeft() - ((LinearLayout.LayoutParams) aVar2).leftMargin;
                    i6 = this.f317l;
                    right = left - i6;
                } else {
                    right = childAt4.getRight() + ((LinearLayout.LayoutParams) aVar2).rightMargin;
                }
            } else if (z8) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i6 = this.f317l;
                right = left - i6;
            }
            d(canvas, right);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01a9  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onLayout(boolean r23, int r24, int r25, int r26, int r27) {
        /*
            Method dump skipped, instruction units count: 461
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.b.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:228:0x04e3  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x04f8  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0526  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0536  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x053d  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x0547  */
    /* JADX WARN: Removed duplicated region for block: B:366:0x079c  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0148  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onMeasure(int r39, int r40) {
        /*
            Method dump skipped, instruction units count: 2150
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.b.onMeasure(int, int):void");
    }

    public void setBaselineAligned(boolean z5) {
        this.f307a = z5;
    }

    public void setBaselineAlignedChildIndex(int i6) {
        if (i6 >= 0 && i6 < getChildCount()) {
            this.f308b = i6;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.f316k) {
            return;
        }
        this.f316k = drawable;
        if (drawable != null) {
            this.f317l = drawable.getIntrinsicWidth();
            this.f318m = drawable.getIntrinsicHeight();
        } else {
            this.f317l = 0;
            this.f318m = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i6) {
        this.f320w = i6;
    }

    public void setGravity(int i6) {
        if (this.f311e != i6) {
            if ((8388615 & i6) == 0) {
                i6 |= 8388611;
            }
            if ((i6 & 112) == 0) {
                i6 |= 48;
            }
            this.f311e = i6;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i6) {
        int i9 = i6 & 8388615;
        int i10 = this.f311e;
        if ((8388615 & i10) != i9) {
            this.f311e = i9 | ((-8388616) & i10);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z5) {
        this.h = z5;
    }

    public void setOrientation(int i6) {
        if (this.f310d != i6) {
            this.f310d = i6;
            requestLayout();
        }
    }

    public void setShowDividers(int i6) {
        if (i6 != this.f319v) {
            requestLayout();
        }
        this.f319v = i6;
    }

    public void setVerticalGravity(int i6) {
        int i9 = i6 & 112;
        int i10 = this.f311e;
        if ((i10 & 112) != i9) {
            this.f311e = i9 | (i10 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f9) {
        this.f313g = Math.max(0.0f, f9);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    public b(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f307a = true;
        this.f308b = -1;
        this.f309c = 0;
        this.f311e = 8388659;
        int[] iArr = f.a.f2504n;
        c5.h hVarQ = c5.h.q(context, attributeSet, iArr, i6);
        k0.g(this, context, iArr, attributeSet, (TypedArray) hVarQ.f1061c, i6, 0);
        TypedArray typedArray = (TypedArray) hVarQ.f1061c;
        int i9 = typedArray.getInt(1, -1);
        if (i9 >= 0) {
            setOrientation(i9);
        }
        int i10 = typedArray.getInt(0, -1);
        if (i10 >= 0) {
            setGravity(i10);
        }
        boolean z5 = typedArray.getBoolean(2, true);
        if (!z5) {
            setBaselineAligned(z5);
        }
        this.f313g = typedArray.getFloat(4, -1.0f);
        this.f308b = typedArray.getInt(3, -1);
        this.h = typedArray.getBoolean(7, false);
        setDividerDrawable(hVarQ.k(5));
        this.f319v = typedArray.getInt(8, 0);
        this.f320w = typedArray.getDimensionPixelSize(6, 0);
        hVarQ.s();
    }
}
