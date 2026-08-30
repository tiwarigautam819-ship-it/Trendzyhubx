package m;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.ToggleButton;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class c1 extends ToggleButton implements m0.k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k2.n f3934a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s0 f3935b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public s f3936c;

    public c1(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.buttonStyleToggle);
        v2.a(getContext(), this);
        k2.n nVar = new k2.n(this);
        this.f3934a = nVar;
        nVar.e(attributeSet, R.attr.buttonStyleToggle);
        s0 s0Var = new s0(this);
        this.f3935b = s0Var;
        s0Var.f(attributeSet, R.attr.buttonStyleToggle);
        getEmojiTextViewHelper().a(attributeSet, R.attr.buttonStyleToggle);
    }

    private s getEmojiTextViewHelper() {
        if (this.f3936c == null) {
            this.f3936c = new s(this);
        }
        return this.f3936c;
    }

    @Override // android.widget.ToggleButton, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        k2.n nVar = this.f3934a;
        if (nVar != null) {
            nVar.a();
        }
        s0 s0Var = this.f3935b;
        if (s0Var != null) {
            s0Var.b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        k2.n nVar = this.f3934a;
        if (nVar != null) {
            return nVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        k2.n nVar = this.f3934a;
        if (nVar != null) {
            return nVar.c();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f3935b.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f3935b.e();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z5) {
        super.setAllCaps(z5);
        getEmojiTextViewHelper().b(z5);
    }

    @Override // android.widget.ToggleButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        k2.n nVar = this.f3934a;
        if (nVar != null) {
            nVar.g();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i6) {
        super.setBackgroundResource(i6);
        k2.n nVar = this.f3934a;
        if (nVar != null) {
            nVar.h(i6);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        s0 s0Var = this.f3935b;
        if (s0Var != null) {
            s0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        s0 s0Var = this.f3935b;
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
        k2.n nVar = this.f3934a;
        if (nVar != null) {
            nVar.j(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        k2.n nVar = this.f3934a;
        if (nVar != null) {
            nVar.k(mode);
        }
    }

    @Override // m0.k
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        s0 s0Var = this.f3935b;
        s0Var.l(colorStateList);
        s0Var.b();
    }

    @Override // m0.k
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        s0 s0Var = this.f3935b;
        s0Var.m(mode);
        s0Var.b();
    }
}
