package m;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class l0 extends Spinner {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int[] f4015i = {R.attr.spinnerMode};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k2.n f4016a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f4017b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c0 f4018c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public SpinnerAdapter f4019d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f4020e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final k0 f4021f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4022g;
    public final Rect h;

    /* JADX WARN: Removed duplicated region for block: B:26:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public l0(android.content.Context r13, android.util.AttributeSet r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 219
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: m.l0.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public final int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i6 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMax = Math.max(0, getSelectedItemPosition());
        int iMin = Math.min(spinnerAdapter.getCount(), iMax + 15);
        View view = null;
        int iMax2 = 0;
        for (int iMax3 = Math.max(0, iMax - (15 - (iMin - iMax))); iMax3 < iMin; iMax3++) {
            int itemViewType = spinnerAdapter.getItemViewType(iMax3);
            if (itemViewType != i6) {
                view = null;
                i6 = itemViewType;
            }
            view = spinnerAdapter.getView(iMax3, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax2 = Math.max(iMax2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return iMax2;
        }
        Rect rect = this.h;
        drawable.getPadding(rect);
        return rect.left + rect.right + iMax2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        k2.n nVar = this.f4016a;
        if (nVar != null) {
            nVar.a();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        k0 k0Var = this.f4021f;
        return k0Var != null ? k0Var.b() : super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        k0 k0Var = this.f4021f;
        return k0Var != null ? k0Var.m() : super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        return this.f4021f != null ? this.f4022g : super.getDropDownWidth();
    }

    public final k0 getInternalPopup() {
        return this.f4021f;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        k0 k0Var = this.f4021f;
        return k0Var != null ? k0Var.d() : super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f4017b;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        k0 k0Var = this.f4021f;
        return k0Var != null ? k0Var.o() : super.getPrompt();
    }

    public ColorStateList getSupportBackgroundTintList() {
        k2.n nVar = this.f4016a;
        if (nVar != null) {
            return nVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        k2.n nVar = this.f4016a;
        if (nVar != null) {
            return nVar.c();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        k0 k0Var = this.f4021f;
        if (k0Var == null || !k0Var.a()) {
            return;
        }
        k0Var.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onMeasure(int i6, int i9) {
        super.onMeasure(i6, i9);
        if (this.f4021f == null || View.MeasureSpec.getMode(i6) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i6)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        j0 j0Var = (j0) parcelable;
        super.onRestoreInstanceState(j0Var.getSuperState());
        if (!j0Var.f4002a || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new l.e(2, this));
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final Parcelable onSaveInstanceState() {
        j0 j0Var = new j0(super.onSaveInstanceState());
        k0 k0Var = this.f4021f;
        j0Var.f4002a = k0Var != null && k0Var.a();
        return j0Var;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        c0 c0Var = this.f4018c;
        if (c0Var == null || !c0Var.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean performClick() {
        k0 k0Var = this.f4021f;
        if (k0Var == null) {
            return super.performClick();
        }
        if (k0Var.a()) {
            return true;
        }
        k0Var.k(getTextDirection(), getTextAlignment());
        return true;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        k2.n nVar = this.f4016a;
        if (nVar != null) {
            nVar.g();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i6) {
        super.setBackgroundResource(i6);
        k2.n nVar = this.f4016a;
        if (nVar != null) {
            nVar.h(i6);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i6) {
        k0 k0Var = this.f4021f;
        if (k0Var == null) {
            super.setDropDownHorizontalOffset(i6);
        } else {
            k0Var.i(i6);
            k0Var.j(i6);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i6) {
        k0 k0Var = this.f4021f;
        if (k0Var != null) {
            k0Var.h(i6);
        } else {
            super.setDropDownVerticalOffset(i6);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i6) {
        if (this.f4021f != null) {
            this.f4022g = i6;
        } else {
            super.setDropDownWidth(i6);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        k0 k0Var = this.f4021f;
        if (k0Var != null) {
            k0Var.g(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i6) {
        setPopupBackgroundDrawable(z7.l.j(getPopupContext(), i6));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        k0 k0Var = this.f4021f;
        if (k0Var != null) {
            k0Var.f(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        k2.n nVar = this.f4016a;
        if (nVar != null) {
            nVar.j(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        k2.n nVar = this.f4016a;
        if (nVar != null) {
            nVar.k(mode);
        }
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f4020e) {
            this.f4019d = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        k0 k0Var = this.f4021f;
        if (k0Var != null) {
            Context context = this.f4017b;
            if (context == null) {
                context = getContext();
            }
            Resources.Theme theme = context.getTheme();
            f0 f0Var = new f0();
            f0Var.f3949a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                f0Var.f3950b = (ListAdapter) spinnerAdapter;
            }
            if (theme != null && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                d0.a((ThemedSpinnerAdapter) spinnerAdapter, theme);
            }
            k0Var.p(f0Var);
        }
    }
}
