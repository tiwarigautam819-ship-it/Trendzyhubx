package m;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import com.YaarWin.app.R;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i0 extends x1 implements k0 {
    public CharSequence K;
    public f0 L;
    public final Rect M;
    public int N;
    public final /* synthetic */ l0 O;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i0(l0 l0Var, Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.spinnerStyle, 0);
        this.O = l0Var;
        this.M = new Rect();
        this.f4167w = l0Var;
        this.F = true;
        this.G.setFocusable(true);
        this.f4168x = new g0(0, this);
    }

    @Override // m.k0
    public final void f(CharSequence charSequence) {
        this.K = charSequence;
    }

    @Override // m.k0
    public final void i(int i6) {
        this.N = i6;
    }

    @Override // m.k0
    public final void k(int i6, int i9) {
        ViewTreeObserver viewTreeObserver;
        v vVar = this.G;
        boolean zIsShowing = vVar.isShowing();
        s();
        vVar.setInputMethodMode(2);
        c();
        m1 m1Var = this.f4156c;
        m1Var.setChoiceMode(1);
        m1Var.setTextDirection(i6);
        m1Var.setTextAlignment(i9);
        l0 l0Var = this.O;
        int selectedItemPosition = l0Var.getSelectedItemPosition();
        m1 m1Var2 = this.f4156c;
        if (vVar.isShowing() && m1Var2 != null) {
            m1Var2.setListSelectionHidden(false);
            m1Var2.setSelection(selectedItemPosition);
            if (m1Var2.getChoiceMode() != 0) {
                m1Var2.setItemChecked(selectedItemPosition, true);
            }
        }
        if (zIsShowing || (viewTreeObserver = l0Var.getViewTreeObserver()) == null) {
            return;
        }
        l.e eVar = new l.e(3, this);
        viewTreeObserver.addOnGlobalLayoutListener(eVar);
        vVar.setOnDismissListener(new h0(this, eVar));
    }

    @Override // m.k0
    public final CharSequence o() {
        return this.K;
    }

    @Override // m.x1, m.k0
    public final void p(ListAdapter listAdapter) {
        super.p(listAdapter);
        this.L = (f0) listAdapter;
    }

    public final void s() {
        int i6;
        l0 l0Var = this.O;
        Rect rect = l0Var.h;
        v vVar = this.G;
        Drawable background = vVar.getBackground();
        if (background != null) {
            background.getPadding(rect);
            boolean z5 = l3.f4025a;
            i6 = l0Var.getLayoutDirection() == 1 ? rect.right : -rect.left;
        } else {
            i6 = 0;
            rect.right = 0;
            rect.left = 0;
        }
        int paddingLeft = l0Var.getPaddingLeft();
        int paddingRight = l0Var.getPaddingRight();
        int width = l0Var.getWidth();
        int i9 = l0Var.f4022g;
        if (i9 == -2) {
            int iA = l0Var.a(this.L, vVar.getBackground());
            int i10 = (l0Var.getContext().getResources().getDisplayMetrics().widthPixels - rect.left) - rect.right;
            if (iA > i10) {
                iA = i10;
            }
            r(Math.max(iA, (width - paddingLeft) - paddingRight));
        } else if (i9 == -1) {
            r((width - paddingLeft) - paddingRight);
        } else {
            r(i9);
        }
        boolean z8 = l3.f4025a;
        this.f4159f = l0Var.getLayoutDirection() == 1 ? (((width - paddingRight) - this.f4158e) - this.N) + i6 : paddingLeft + this.N + i6;
    }
}
