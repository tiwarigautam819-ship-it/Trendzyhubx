package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.YaarWin.app.R;
import j0.k0;
import j0.o0;
import l.b0;
import l.n;
import m.l3;
import z7.l;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class ActionBarContextView extends ViewGroup {
    public boolean A;
    public final int B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i8.i f192a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f193b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ActionMenuView f194c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public a f195d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f196e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public o0 f197f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f198g;
    public boolean h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public CharSequence f199i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f200j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public View f201k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public View f202l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public View f203m;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public LinearLayout f204v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public TextView f205w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public TextView f206x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f207y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f208z;

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        int resourceId;
        super(context, attributeSet, R.attr.actionModeStyle);
        this.f192a = new i8.i(this);
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f193b = context;
        } else {
            this.f193b = new ContextThemeWrapper(context, typedValue.resourceId);
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f.a.f2495d, R.attr.actionModeStyle, 0);
        setBackground((!typedArrayObtainStyledAttributes.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0)) == 0) ? typedArrayObtainStyledAttributes.getDrawable(0) : l.j(context, resourceId));
        this.f207y = typedArrayObtainStyledAttributes.getResourceId(5, 0);
        this.f208z = typedArrayObtainStyledAttributes.getResourceId(4, 0);
        this.f196e = typedArrayObtainStyledAttributes.getLayoutDimension(3, 0);
        this.B = typedArrayObtainStyledAttributes.getResourceId(2, R.layout.abc_action_mode_close_item_material);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static int f(View view, int i6, int i9) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE), i9);
        return Math.max(0, i6 - view.getMeasuredWidth());
    }

    public static int g(View view, int i6, int i9, int i10, boolean z5) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i11 = ((i10 - measuredHeight) / 2) + i9;
        if (z5) {
            view.layout(i6 - measuredWidth, i11, i6, measuredHeight + i11);
        } else {
            view.layout(i6, i11, i6 + measuredWidth, measuredHeight + i11);
        }
        return z5 ? -measuredWidth : measuredWidth;
    }

    public final void c(k.b bVar) {
        View view = this.f201k;
        if (view == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(this.B, (ViewGroup) this, false);
            this.f201k = viewInflate;
            addView(viewInflate);
        } else if (view.getParent() == null) {
            addView(this.f201k);
        }
        View viewFindViewById = this.f201k.findViewById(R.id.action_mode_close_button);
        this.f202l = viewFindViewById;
        viewFindViewById.setOnClickListener(new g.d(1, bVar));
        n nVarC = bVar.c();
        a aVar = this.f195d;
        if (aVar != null) {
            aVar.c();
            m.e eVar = aVar.B;
            if (eVar != null && eVar.b()) {
                eVar.f3739i.dismiss();
            }
        }
        a aVar2 = new a(getContext());
        this.f195d = aVar2;
        aVar2.f300l = true;
        aVar2.f301m = true;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        nVarC.b(this.f195d, this.f193b);
        a aVar3 = this.f195d;
        b0 b0Var = aVar3.h;
        if (b0Var == null) {
            b0 b0Var2 = (b0) aVar3.f3609d.inflate(aVar3.f3611f, (ViewGroup) this, false);
            aVar3.h = b0Var2;
            b0Var2.a(aVar3.f3608c);
            aVar3.d();
        }
        b0 b0Var3 = aVar3.h;
        if (b0Var != b0Var3) {
            ((ActionMenuView) b0Var3).setPresenter(aVar3);
        }
        ActionMenuView actionMenuView = (ActionMenuView) b0Var3;
        this.f194c = actionMenuView;
        actionMenuView.setBackground(null);
        addView(this.f194c, layoutParams);
    }

    public final void d() {
        if (this.f204v == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f204v = linearLayout;
            this.f205w = (TextView) linearLayout.findViewById(R.id.action_bar_title);
            this.f206x = (TextView) this.f204v.findViewById(R.id.action_bar_subtitle);
            int i6 = this.f207y;
            if (i6 != 0) {
                this.f205w.setTextAppearance(getContext(), i6);
            }
            int i9 = this.f208z;
            if (i9 != 0) {
                this.f206x.setTextAppearance(getContext(), i9);
            }
        }
        this.f205w.setText(this.f199i);
        this.f206x.setText(this.f200j);
        boolean zIsEmpty = TextUtils.isEmpty(this.f199i);
        boolean zIsEmpty2 = TextUtils.isEmpty(this.f200j);
        this.f206x.setVisibility(!zIsEmpty2 ? 0 : 8);
        this.f204v.setVisibility((zIsEmpty && zIsEmpty2) ? 8 : 0);
        if (this.f204v.getParent() == null) {
            addView(this.f204v);
        }
    }

    public final void e() {
        removeAllViews();
        this.f203m = null;
        this.f194c = null;
        this.f195d = null;
        View view = this.f202l;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public int getAnimatedVisibility() {
        return this.f197f != null ? this.f192a.f3236c : getVisibility();
    }

    public int getContentHeight() {
        return this.f196e;
    }

    public CharSequence getSubtitle() {
        return this.f200j;
    }

    public CharSequence getTitle() {
        return this.f199i;
    }

    @Override // android.view.View
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public final void setVisibility(int i6) {
        if (i6 != getVisibility()) {
            o0 o0Var = this.f197f;
            if (o0Var != null) {
                o0Var.b();
            }
            super.setVisibility(i6);
        }
    }

    public final o0 i(int i6, long j3) {
        o0 o0Var = this.f197f;
        if (o0Var != null) {
            o0Var.b();
        }
        i8.i iVar = this.f192a;
        if (i6 != 0) {
            o0 o0VarA = k0.a(this);
            o0VarA.a(0.0f);
            o0VarA.c(j3);
            ((ActionBarContextView) iVar.f3237d).f197f = o0VarA;
            iVar.f3236c = i6;
            o0VarA.d(iVar);
            return o0VarA;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        o0 o0VarA2 = k0.a(this);
        o0VarA2.a(1.0f);
        o0VarA2.c(j3);
        ((ActionBarContextView) iVar.f3237d).f197f = o0VarA2;
        iVar.f3236c = i6;
        o0VarA2.d(iVar);
        return o0VarA2;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, f.a.f2492a, R.attr.actionBarStyle, 0);
        setContentHeight(typedArrayObtainStyledAttributes.getLayoutDimension(13, 0));
        typedArrayObtainStyledAttributes.recycle();
        a aVar = this.f195d;
        if (aVar != null) {
            Configuration configuration2 = aVar.f3607b.getResources().getConfiguration();
            int i6 = configuration2.screenWidthDp;
            int i9 = configuration2.screenHeightDp;
            aVar.f304x = (configuration2.smallestScreenWidthDp > 600 || i6 > 600 || (i6 > 960 && i9 > 720) || (i6 > 720 && i9 > 960)) ? 5 : (i6 >= 500 || (i6 > 640 && i9 > 480) || (i6 > 480 && i9 > 640)) ? 4 : i6 >= 360 ? 3 : 2;
            n nVar = aVar.f3608c;
            if (nVar != null) {
                nVar.p(true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a aVar = this.f195d;
        if (aVar != null) {
            aVar.c();
            m.e eVar = this.f195d.B;
            if (eVar == null || !eVar.b()) {
                return;
            }
            eVar.f3739i.dismiss();
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.h = false;
        }
        if (!this.h) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.h = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.h = false;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z5, int i6, int i9, int i10, int i11) {
        boolean z8 = l3.f4025a;
        boolean z9 = getLayoutDirection() == 1;
        int paddingRight = z9 ? (i10 - i6) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i11 - i9) - getPaddingTop()) - getPaddingBottom();
        View view = this.f201k;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f201k.getLayoutParams();
            int i12 = z9 ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i13 = z9 ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int i14 = z9 ? paddingRight - i12 : paddingRight + i12;
            int iG = g(this.f201k, i14, paddingTop, paddingTop2, z9) + i14;
            paddingRight = z9 ? iG - i13 : iG + i13;
        }
        LinearLayout linearLayout = this.f204v;
        if (linearLayout != null && this.f203m == null && linearLayout.getVisibility() != 8) {
            paddingRight += g(this.f204v, paddingRight, paddingTop, paddingTop2, z9);
        }
        View view2 = this.f203m;
        if (view2 != null) {
            g(view2, paddingRight, paddingTop, paddingTop2, z9);
        }
        int paddingLeft = z9 ? getPaddingLeft() : (i10 - i6) - getPaddingRight();
        ActionMenuView actionMenuView = this.f194c;
        if (actionMenuView != null) {
            g(actionMenuView, paddingLeft, paddingTop, paddingTop2, !z9);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i6, int i9) {
        if (View.MeasureSpec.getMode(i6) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_width=\"match_parent\" (or fill_parent)"));
        }
        if (View.MeasureSpec.getMode(i9) == 0) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_height=\"wrap_content\""));
        }
        int size = View.MeasureSpec.getSize(i6);
        int size2 = this.f196e;
        if (size2 <= 0) {
            size2 = View.MeasureSpec.getSize(i9);
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int iMin = size2 - paddingBottom;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMin, Integer.MIN_VALUE);
        View view = this.f201k;
        if (view != null) {
            int iF = f(view, paddingLeft, iMakeMeasureSpec);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f201k.getLayoutParams();
            paddingLeft = iF - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = this.f194c;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = f(this.f194c, paddingLeft, iMakeMeasureSpec);
        }
        LinearLayout linearLayout = this.f204v;
        if (linearLayout != null && this.f203m == null) {
            if (this.A) {
                this.f204v.measure(View.MeasureSpec.makeMeasureSpec(0, 0), iMakeMeasureSpec);
                int measuredWidth = this.f204v.getMeasuredWidth();
                boolean z5 = measuredWidth <= paddingLeft;
                if (z5) {
                    paddingLeft -= measuredWidth;
                }
                this.f204v.setVisibility(z5 ? 0 : 8);
            } else {
                paddingLeft = f(linearLayout, paddingLeft, iMakeMeasureSpec);
            }
        }
        View view2 = this.f203m;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i10 = layoutParams.width;
            int i11 = i10 != -2 ? 1073741824 : Integer.MIN_VALUE;
            if (i10 >= 0) {
                paddingLeft = Math.min(i10, paddingLeft);
            }
            int i12 = layoutParams.height;
            int i13 = i12 == -2 ? Integer.MIN_VALUE : 1073741824;
            if (i12 >= 0) {
                iMin = Math.min(i12, iMin);
            }
            this.f203m.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i11), View.MeasureSpec.makeMeasureSpec(iMin, i13));
        }
        if (this.f196e > 0) {
            setMeasuredDimension(size, size2);
            return;
        }
        int childCount = getChildCount();
        int i14 = 0;
        for (int i15 = 0; i15 < childCount; i15++) {
            int measuredHeight = getChildAt(i15).getMeasuredHeight() + paddingBottom;
            if (measuredHeight > i14) {
                i14 = measuredHeight;
            }
        }
        setMeasuredDimension(size, i14);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f198g = false;
        }
        if (!this.f198g) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.f198g = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.f198g = false;
        return true;
    }

    public void setContentHeight(int i6) {
        this.f196e = i6;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f203m;
        if (view2 != null) {
            removeView(view2);
        }
        this.f203m = view;
        if (view != null && (linearLayout = this.f204v) != null) {
            removeView(linearLayout);
            this.f204v = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f200j = charSequence;
        d();
    }

    public void setTitle(CharSequence charSequence) {
        this.f199i = charSequence;
        d();
        k0.i(this, charSequence);
    }

    public void setTitleOptional(boolean z5) {
        if (z5 != this.A) {
            requestLayout();
        }
        this.A = z5;
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }
}
