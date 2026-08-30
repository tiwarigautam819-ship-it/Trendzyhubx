package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.YaarWin.app.R;
import j0.k0;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class ButtonBarLayout extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f239a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f240b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f241c;

    public ButtonBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f241c = -1;
        int[] iArr = f.a.f2501k;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        k0.g(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, 0, 0);
        this.f239a = typedArrayObtainStyledAttributes.getBoolean(0, true);
        typedArrayObtainStyledAttributes.recycle();
        if (getOrientation() == 1) {
            setStacked(this.f239a);
        }
    }

    private void setStacked(boolean z5) {
        if (this.f240b != z5) {
            if (!z5 || this.f239a) {
                this.f240b = z5;
                setOrientation(z5 ? 1 : 0);
                setGravity(z5 ? 8388613 : 80);
                View viewFindViewById = findViewById(R.id.spacer);
                if (viewFindViewById != null) {
                    viewFindViewById.setVisibility(z5 ? 8 : 4);
                }
                for (int childCount = getChildCount() - 2; childCount >= 0; childCount--) {
                    bringChildToFront(getChildAt(childCount));
                }
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i6, int i9) {
        int iMakeMeasureSpec;
        boolean z5;
        int i10;
        int size = View.MeasureSpec.getSize(i6);
        int paddingBottom = 0;
        if (this.f239a) {
            if (size > this.f241c && this.f240b) {
                setStacked(false);
            }
            this.f241c = size;
        }
        if (this.f240b || View.MeasureSpec.getMode(i6) != 1073741824) {
            iMakeMeasureSpec = i6;
            z5 = false;
        } else {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
            z5 = true;
        }
        super.onMeasure(iMakeMeasureSpec, i9);
        if (this.f239a && !this.f240b && (getMeasuredWidthAndState() & (-16777216)) == 16777216) {
            setStacked(true);
            z5 = true;
        }
        if (z5) {
            super.onMeasure(i6, i9);
        }
        int childCount = getChildCount();
        int i11 = 0;
        while (true) {
            i10 = -1;
            if (i11 >= childCount) {
                i11 = -1;
                break;
            } else if (getChildAt(i11).getVisibility() == 0) {
                break;
            } else {
                i11++;
            }
        }
        if (i11 >= 0) {
            View childAt = getChildAt(i11);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight() + getPaddingTop() + layoutParams.topMargin + layoutParams.bottomMargin;
            if (this.f240b) {
                int i12 = i11 + 1;
                int childCount2 = getChildCount();
                while (true) {
                    if (i12 >= childCount2) {
                        break;
                    }
                    if (getChildAt(i12).getVisibility() == 0) {
                        i10 = i12;
                        break;
                    }
                    i12++;
                }
                paddingBottom = i10 >= 0 ? getChildAt(i10).getPaddingTop() + ((int) (getResources().getDisplayMetrics().density * 16.0f)) + measuredHeight : measuredHeight;
            } else {
                paddingBottom = getPaddingBottom() + measuredHeight;
            }
        }
        WeakHashMap weakHashMap = k0.f3286a;
        if (getMinimumHeight() != paddingBottom) {
            setMinimumHeight(paddingBottom);
            if (i9 == 0) {
                super.onMeasure(i6, i9);
            }
        }
    }

    public void setAllowStacking(boolean z5) {
        if (this.f239a != z5) {
            this.f239a = z5;
            if (!z5 && this.f240b) {
                setStacked(false);
            }
            requestLayout();
        }
    }
}
