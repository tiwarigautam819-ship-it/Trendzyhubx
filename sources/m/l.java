package m;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import com.YaarWin.app.R;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class l extends Button implements m0.k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k2.n f4012a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s0 f4013b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public s f4014c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.buttonStyle);
        w2.a(context);
        v2.a(getContext(), this);
        k2.n nVar = new k2.n(this);
        this.f4012a = nVar;
        nVar.e(attributeSet, R.attr.buttonStyle);
        s0 s0Var = new s0(this);
        this.f4013b = s0Var;
        s0Var.f(attributeSet, R.attr.buttonStyle);
        s0Var.b();
        getEmojiTextViewHelper().a(attributeSet, R.attr.buttonStyle);
    }

    private s getEmojiTextViewHelper() {
        if (this.f4014c == null) {
            this.f4014c = new s(this);
        }
        return this.f4014c;
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        k2.n nVar = this.f4012a;
        if (nVar != null) {
            nVar.a();
        }
        s0 s0Var = this.f4013b;
        if (s0Var != null) {
            s0Var.b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (l3.f4027c) {
            return super.getAutoSizeMaxTextSize();
        }
        s0 s0Var = this.f4013b;
        if (s0Var != null) {
            return Math.round(s0Var.f4090i.f3922e);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (l3.f4027c) {
            return super.getAutoSizeMinTextSize();
        }
        s0 s0Var = this.f4013b;
        if (s0Var != null) {
            return Math.round(s0Var.f4090i.f3921d);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (l3.f4027c) {
            return super.getAutoSizeStepGranularity();
        }
        s0 s0Var = this.f4013b;
        if (s0Var != null) {
            return Math.round(s0Var.f4090i.f3920c);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (l3.f4027c) {
            return super.getAutoSizeTextAvailableSizes();
        }
        s0 s0Var = this.f4013b;
        return s0Var != null ? s0Var.f4090i.f3923f : new int[0];
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        if (l3.f4027c) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        s0 s0Var = this.f4013b;
        if (s0Var != null) {
            return s0Var.f4090i.f3918a;
        }
        return 0;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return i2.t.r(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        k2.n nVar = this.f4012a;
        if (nVar != null) {
            return nVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        k2.n nVar = this.f4012a;
        if (nVar != null) {
            return nVar.c();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f4013b.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f4013b.e();
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z5, int i6, int i9, int i10, int i11) {
        super.onLayout(z5, i6, i9, i10, i11);
        s0 s0Var = this.f4013b;
        if (s0Var == null || l3.f4027c) {
            return;
        }
        s0Var.f4090i.a();
    }

    @Override // android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i6, int i9, int i10) {
        super.onTextChanged(charSequence, i6, i9, i10);
        s0 s0Var = this.f4013b;
        if (s0Var != null) {
            b1 b1Var = s0Var.f4090i;
            if (l3.f4027c || !b1Var.f()) {
                return;
            }
            b1Var.a();
        }
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z5) {
        super.setAllCaps(z5);
        getEmojiTextViewHelper().b(z5);
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithConfiguration(int i6, int i9, int i10, int i11) {
        if (l3.f4027c) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i6, i9, i10, i11);
            return;
        }
        s0 s0Var = this.f4013b;
        if (s0Var != null) {
            s0Var.i(i6, i9, i10, i11);
        }
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i6) {
        if (l3.f4027c) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i6);
            return;
        }
        s0 s0Var = this.f4013b;
        if (s0Var != null) {
            s0Var.j(iArr, i6);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i6) {
        if (l3.f4027c) {
            super.setAutoSizeTextTypeWithDefaults(i6);
            return;
        }
        s0 s0Var = this.f4013b;
        if (s0Var != null) {
            s0Var.k(i6);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        k2.n nVar = this.f4012a;
        if (nVar != null) {
            nVar.g();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i6) {
        super.setBackgroundResource(i6);
        k2.n nVar = this.f4012a;
        if (nVar != null) {
            nVar.h(i6);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(i2.t.s(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z5) {
        getEmojiTextViewHelper().c(z5);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(((b2.k) getEmojiTextViewHelper().f4082b.f3502b).f(inputFilterArr));
    }

    public void setSupportAllCaps(boolean z5) {
        s0 s0Var = this.f4013b;
        if (s0Var != null) {
            s0Var.f4083a.setAllCaps(z5);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        k2.n nVar = this.f4012a;
        if (nVar != null) {
            nVar.j(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        k2.n nVar = this.f4012a;
        if (nVar != null) {
            nVar.k(mode);
        }
    }

    @Override // m0.k
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        s0 s0Var = this.f4013b;
        s0Var.l(colorStateList);
        s0Var.b();
    }

    @Override // m0.k
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        s0 s0Var = this.f4013b;
        s0Var.m(mode);
        s0Var.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i6) {
        super.setTextAppearance(context, i6);
        s0 s0Var = this.f4013b;
        if (s0Var != null) {
            s0Var.g(context, i6);
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i6, float f9) {
        boolean z5 = l3.f4027c;
        if (z5) {
            super.setTextSize(i6, f9);
            return;
        }
        s0 s0Var = this.f4013b;
        if (s0Var != null) {
            b1 b1Var = s0Var.f4090i;
            if (z5 || b1Var.f()) {
                return;
            }
            b1Var.g(i6, f9);
        }
    }
}
