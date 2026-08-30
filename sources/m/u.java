package m;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.MultiAutoCompleteTextView;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class u extends MultiAutoCompleteTextView implements m0.k {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f4111d = {R.attr.popupBackground};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k2.n f4112a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s0 f4113b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final w f4114c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.YaarWin.app.R.attr.autoCompleteTextViewStyle);
        w2.a(context);
        v2.a(getContext(), this);
        c5.h hVarQ = c5.h.q(getContext(), attributeSet, f4111d, com.YaarWin.app.R.attr.autoCompleteTextViewStyle);
        if (((TypedArray) hVarQ.f1061c).hasValue(0)) {
            setDropDownBackgroundDrawable(hVarQ.k(0));
        }
        hVarQ.s();
        k2.n nVar = new k2.n(this);
        this.f4112a = nVar;
        nVar.e(attributeSet, com.YaarWin.app.R.attr.autoCompleteTextViewStyle);
        s0 s0Var = new s0(this);
        this.f4113b = s0Var;
        s0Var.f(attributeSet, com.YaarWin.app.R.attr.autoCompleteTextViewStyle);
        s0Var.b();
        w wVar = new w(this);
        this.f4114c = wVar;
        wVar.b(attributeSet, com.YaarWin.app.R.attr.autoCompleteTextViewStyle);
        KeyListener keyListener = getKeyListener();
        if (keyListener instanceof NumberKeyListener) {
            return;
        }
        boolean zIsFocusable = super.isFocusable();
        boolean zIsClickable = super.isClickable();
        boolean zIsLongClickable = super.isLongClickable();
        int inputType = super.getInputType();
        KeyListener keyListenerA = wVar.a(keyListener);
        if (keyListenerA == keyListener) {
            return;
        }
        super.setKeyListener(keyListenerA);
        super.setRawInputType(inputType);
        super.setFocusable(zIsFocusable);
        super.setClickable(zIsClickable);
        super.setLongClickable(zIsLongClickable);
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        k2.n nVar = this.f4112a;
        if (nVar != null) {
            nVar.a();
        }
        s0 s0Var = this.f4113b;
        if (s0Var != null) {
            s0Var.b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        k2.n nVar = this.f4112a;
        if (nVar != null) {
            return nVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        k2.n nVar = this.f4112a;
        if (nVar != null) {
            return nVar.c();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f4113b.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f4113b.e();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        d4.a.d(editorInfo, inputConnectionOnCreateInputConnection, this);
        return this.f4114c.c(inputConnectionOnCreateInputConnection, editorInfo);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        k2.n nVar = this.f4112a;
        if (nVar != null) {
            nVar.g();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i6) {
        super.setBackgroundResource(i6);
        k2.n nVar = this.f4112a;
        if (nVar != null) {
            nVar.h(i6);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        s0 s0Var = this.f4113b;
        if (s0Var != null) {
            s0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        s0 s0Var = this.f4113b;
        if (s0Var != null) {
            s0Var.b();
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i6) {
        setDropDownBackgroundDrawable(z7.l.j(getContext(), i6));
    }

    public void setEmojiCompatEnabled(boolean z5) {
        this.f4114c.d(z5);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f4114c.a(keyListener));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        k2.n nVar = this.f4112a;
        if (nVar != null) {
            nVar.j(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        k2.n nVar = this.f4112a;
        if (nVar != null) {
            nVar.k(mode);
        }
    }

    @Override // m0.k
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        s0 s0Var = this.f4113b;
        s0Var.l(colorStateList);
        s0Var.b();
    }

    @Override // m0.k
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        s0 s0Var = this.f4113b;
        s0Var.m(mode);
        s0Var.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i6) {
        super.setTextAppearance(context, i6);
        s0 s0Var = this.f4113b;
        if (s0Var != null) {
            s0Var.g(context, i6);
        }
    }
}
