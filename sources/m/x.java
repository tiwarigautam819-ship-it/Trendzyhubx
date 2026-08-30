package m;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.RadioButton;
import com.YaarWin.app.R;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class x extends RadioButton implements m0.k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final o f4150a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final k2.n f4151b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final s0 f4152c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public s f4153d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.radioButtonStyle);
        w2.a(context);
        v2.a(getContext(), this);
        o oVar = new o(this);
        this.f4150a = oVar;
        oVar.c(attributeSet, R.attr.radioButtonStyle);
        k2.n nVar = new k2.n(this);
        this.f4151b = nVar;
        nVar.e(attributeSet, R.attr.radioButtonStyle);
        s0 s0Var = new s0(this);
        this.f4152c = s0Var;
        s0Var.f(attributeSet, R.attr.radioButtonStyle);
        getEmojiTextViewHelper().a(attributeSet, R.attr.radioButtonStyle);
    }

    private s getEmojiTextViewHelper() {
        if (this.f4153d == null) {
            this.f4153d = new s(this);
        }
        return this.f4153d;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        k2.n nVar = this.f4151b;
        if (nVar != null) {
            nVar.a();
        }
        s0 s0Var = this.f4152c;
        if (s0Var != null) {
            s0Var.b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        k2.n nVar = this.f4151b;
        if (nVar != null) {
            return nVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        k2.n nVar = this.f4151b;
        if (nVar != null) {
            return nVar.c();
        }
        return null;
    }

    public ColorStateList getSupportButtonTintList() {
        o oVar = this.f4150a;
        if (oVar != null) {
            return oVar.f4051a;
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        o oVar = this.f4150a;
        if (oVar != null) {
            return oVar.f4052b;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f4152c.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f4152c.e();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z5) {
        super.setAllCaps(z5);
        getEmojiTextViewHelper().b(z5);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        k2.n nVar = this.f4151b;
        if (nVar != null) {
            nVar.g();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i6) {
        super.setBackgroundResource(i6);
        k2.n nVar = this.f4151b;
        if (nVar != null) {
            nVar.h(i6);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        o oVar = this.f4150a;
        if (oVar != null) {
            if (oVar.f4055e) {
                oVar.f4055e = false;
            } else {
                oVar.f4055e = true;
                oVar.a();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        s0 s0Var = this.f4152c;
        if (s0Var != null) {
            s0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        s0 s0Var = this.f4152c;
        if (s0Var != null) {
            s0Var.b();
        }
    }

    public void setEmojiCompatEnabled(boolean z5) {
        getEmojiTextViewHelper().c(z5);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(((b2.k) getEmojiTextViewHelper().f4082b.f3502b).f(inputFilterArr));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        k2.n nVar = this.f4151b;
        if (nVar != null) {
            nVar.j(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        k2.n nVar = this.f4151b;
        if (nVar != null) {
            nVar.k(mode);
        }
    }

    public void setSupportButtonTintList(ColorStateList colorStateList) {
        o oVar = this.f4150a;
        if (oVar != null) {
            oVar.f4051a = colorStateList;
            oVar.f4053c = true;
            oVar.a();
        }
    }

    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        o oVar = this.f4150a;
        if (oVar != null) {
            oVar.f4052b = mode;
            oVar.f4054d = true;
            oVar.a();
        }
    }

    @Override // m0.k
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        s0 s0Var = this.f4152c;
        s0Var.l(colorStateList);
        s0Var.b();
    }

    @Override // m0.k
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        s0 s0Var = this.f4152c;
        s0Var.m(mode);
        s0Var.b();
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i6) {
        setButtonDrawable(z7.l.j(getContext(), i6));
    }
}
