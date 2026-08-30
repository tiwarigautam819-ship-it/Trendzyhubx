package m;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import com.YaarWin.app.R;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class n extends CheckedTextView implements m0.k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final o f4044a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final k2.n f4045b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final s0 f4046c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public s f4047d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(Context context, AttributeSet attributeSet) {
        int resourceId;
        int resourceId2;
        super(context, attributeSet, R.attr.checkedTextViewStyle);
        w2.a(context);
        v2.a(getContext(), this);
        s0 s0Var = new s0(this);
        this.f4046c = s0Var;
        s0Var.f(attributeSet, R.attr.checkedTextViewStyle);
        s0Var.b();
        k2.n nVar = new k2.n(this);
        this.f4045b = nVar;
        nVar.e(attributeSet, R.attr.checkedTextViewStyle);
        this.f4044a = new o(this);
        Context context2 = getContext();
        int[] iArr = f.a.f2502l;
        c5.h hVarQ = c5.h.q(context2, attributeSet, iArr, R.attr.checkedTextViewStyle);
        TypedArray typedArray = (TypedArray) hVarQ.f1061c;
        j0.k0.g(this, getContext(), iArr, attributeSet, (TypedArray) hVarQ.f1061c, R.attr.checkedTextViewStyle, 0);
        try {
            if (typedArray.hasValue(1) && (resourceId2 = typedArray.getResourceId(1, 0)) != 0) {
                try {
                    setCheckMarkDrawable(z7.l.j(getContext(), resourceId2));
                } catch (Resources.NotFoundException unused) {
                    if (typedArray.hasValue(0)) {
                        setCheckMarkDrawable(z7.l.j(getContext(), resourceId));
                    }
                }
            } else if (typedArray.hasValue(0) && (resourceId = typedArray.getResourceId(0, 0)) != 0) {
                setCheckMarkDrawable(z7.l.j(getContext(), resourceId));
            }
            if (typedArray.hasValue(2)) {
                setCheckMarkTintList(hVarQ.j(2));
            }
            if (typedArray.hasValue(3)) {
                setCheckMarkTintMode(g1.b(typedArray.getInt(3, -1), null));
            }
            hVarQ.s();
            getEmojiTextViewHelper().a(attributeSet, R.attr.checkedTextViewStyle);
        } catch (Throwable th) {
            hVarQ.s();
            throw th;
        }
    }

    private s getEmojiTextViewHelper() {
        if (this.f4047d == null) {
            this.f4047d = new s(this);
        }
        return this.f4047d;
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        s0 s0Var = this.f4046c;
        if (s0Var != null) {
            s0Var.b();
        }
        k2.n nVar = this.f4045b;
        if (nVar != null) {
            nVar.a();
        }
        o oVar = this.f4044a;
        if (oVar != null) {
            oVar.b();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return i2.t.r(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        k2.n nVar = this.f4045b;
        if (nVar != null) {
            return nVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        k2.n nVar = this.f4045b;
        if (nVar != null) {
            return nVar.c();
        }
        return null;
    }

    public ColorStateList getSupportCheckMarkTintList() {
        o oVar = this.f4044a;
        if (oVar != null) {
            return oVar.f4051a;
        }
        return null;
    }

    public PorterDuff.Mode getSupportCheckMarkTintMode() {
        o oVar = this.f4044a;
        if (oVar != null) {
            return oVar.f4052b;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f4046c.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f4046c.e();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        d4.a.d(editorInfo, inputConnectionOnCreateInputConnection, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z5) {
        super.setAllCaps(z5);
        getEmojiTextViewHelper().b(z5);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        k2.n nVar = this.f4045b;
        if (nVar != null) {
            nVar.g();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i6) {
        super.setBackgroundResource(i6);
        k2.n nVar = this.f4045b;
        if (nVar != null) {
            nVar.h(i6);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        o oVar = this.f4044a;
        if (oVar != null) {
            if (oVar.f4055e) {
                oVar.f4055e = false;
            } else {
                oVar.f4055e = true;
                oVar.b();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        s0 s0Var = this.f4046c;
        if (s0Var != null) {
            s0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        s0 s0Var = this.f4046c;
        if (s0Var != null) {
            s0Var.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(i2.t.s(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z5) {
        getEmojiTextViewHelper().c(z5);
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        k2.n nVar = this.f4045b;
        if (nVar != null) {
            nVar.j(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        k2.n nVar = this.f4045b;
        if (nVar != null) {
            nVar.k(mode);
        }
    }

    public void setSupportCheckMarkTintList(ColorStateList colorStateList) {
        o oVar = this.f4044a;
        if (oVar != null) {
            oVar.f4051a = colorStateList;
            oVar.f4053c = true;
            oVar.b();
        }
    }

    public void setSupportCheckMarkTintMode(PorterDuff.Mode mode) {
        o oVar = this.f4044a;
        if (oVar != null) {
            oVar.f4052b = mode;
            oVar.f4054d = true;
            oVar.b();
        }
    }

    @Override // m0.k
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        s0 s0Var = this.f4046c;
        s0Var.l(colorStateList);
        s0Var.b();
    }

    @Override // m0.k
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        s0 s0Var = this.f4046c;
        s0Var.m(mode);
        s0Var.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i6) {
        super.setTextAppearance(context, i6);
        s0 s0Var = this.f4046c;
        if (s0Var != null) {
            s0Var.g(context, i6);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i6) {
        setCheckMarkDrawable(z7.l.j(getContext(), i6));
    }
}
