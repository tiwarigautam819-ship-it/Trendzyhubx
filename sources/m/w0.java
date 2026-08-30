package m;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class w0 extends TextView implements m0.k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k2.n f4141a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s0 f4142b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final w f4143c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public s f4144d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4145e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public k1.h f4146f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Future f4147g;

    public w0(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    private s getEmojiTextViewHelper() {
        if (this.f4144d == null) {
            this.f4144d = new s(this);
        }
        return this.f4144d;
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        k2.n nVar = this.f4141a;
        if (nVar != null) {
            nVar.a();
        }
        s0 s0Var = this.f4142b;
        if (s0Var != null) {
            s0Var.b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (l3.f4027c) {
            return super.getAutoSizeMaxTextSize();
        }
        s0 s0Var = this.f4142b;
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
        s0 s0Var = this.f4142b;
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
        s0 s0Var = this.f4142b;
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
        s0 s0Var = this.f4142b;
        return s0Var != null ? s0Var.f4090i.f3923f : new int[0];
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        if (l3.f4027c) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        s0 s0Var = this.f4142b;
        if (s0Var != null) {
            return s0Var.f4090i.f3918a;
        }
        return 0;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return i2.t.r(super.getCustomSelectionActionModeCallback());
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return getPaddingTop() - getPaint().getFontMetricsInt().top;
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return getPaddingBottom() + getPaint().getFontMetricsInt().bottom;
    }

    public t0 getSuperCaller() {
        if (this.f4146f == null) {
            int i6 = Build.VERSION.SDK_INT;
            if (i6 >= 34) {
                this.f4146f = new v0(this);
            } else if (i6 >= 28) {
                this.f4146f = new u0(this);
            } else if (i6 >= 26) {
                this.f4146f = new k1.h(18, this);
            }
        }
        return this.f4146f;
    }

    public ColorStateList getSupportBackgroundTintList() {
        k2.n nVar = this.f4141a;
        if (nVar != null) {
            return nVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        k2.n nVar = this.f4141a;
        if (nVar != null) {
            return nVar.c();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f4142b.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f4142b.e();
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        Future future = this.f4147g;
        if (future != null) {
            try {
                this.f4147g = null;
                if (future.get() != null) {
                    throw new ClassCastException();
                }
                if (Build.VERSION.SDK_INT >= 29) {
                    throw null;
                }
                i2.t.h(this);
                throw null;
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        w wVar;
        if (Build.VERSION.SDK_INT >= 28 || (wVar = this.f4143c) == null) {
            return super.getTextClassifier();
        }
        TextClassifier textClassifier = (TextClassifier) wVar.f4140c;
        return textClassifier == null ? m0.a((TextView) wVar.f4139b) : textClassifier;
    }

    public h0.b getTextMetricsParamsCompat() {
        return i2.t.h(this);
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f4142b.getClass();
        s0.h(editorInfo, inputConnectionOnCreateInputConnection, this);
        d4.a.d(editorInfo, inputConnectionOnCreateInputConnection, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        int i6 = Build.VERSION.SDK_INT;
        if (i6 < 30 || i6 >= 33 || !onCheckIsTextEditor()) {
            return;
        }
        ((InputMethodManager) getContext().getSystemService("input_method")).isActive(this);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z5, int i6, int i9, int i10, int i11) {
        super.onLayout(z5, i6, i9, i10, i11);
        s0 s0Var = this.f4142b;
        if (s0Var == null || l3.f4027c) {
            return;
        }
        s0Var.f4090i.a();
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i6, int i9) {
        Future future = this.f4147g;
        if (future != null) {
            try {
                this.f4147g = null;
                if (future.get() != null) {
                    throw new ClassCastException();
                }
                if (Build.VERSION.SDK_INT >= 29) {
                    throw null;
                }
                i2.t.h(this);
                throw null;
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        super.onMeasure(i6, i9);
    }

    @Override // android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i6, int i9, int i10) {
        super.onTextChanged(charSequence, i6, i9, i10);
        s0 s0Var = this.f4142b;
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
        s0 s0Var = this.f4142b;
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
        s0 s0Var = this.f4142b;
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
        s0 s0Var = this.f4142b;
        if (s0Var != null) {
            s0Var.k(i6);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        k2.n nVar = this.f4141a;
        if (nVar != null) {
            nVar.g();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i6) {
        super.setBackgroundResource(i6);
        k2.n nVar = this.f4141a;
        if (nVar != null) {
            nVar.h(i6);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        s0 s0Var = this.f4142b;
        if (s0Var != null) {
            s0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        s0 s0Var = this.f4142b;
        if (s0Var != null) {
            s0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        s0 s0Var = this.f4142b;
        if (s0Var != null) {
            s0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        s0 s0Var = this.f4142b;
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

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(((b2.k) getEmojiTextViewHelper().f4082b.f3502b).f(inputFilterArr));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i6) {
        if (Build.VERSION.SDK_INT >= 28) {
            getSuperCaller().j(i6);
        } else {
            i2.t.m(this, i6);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i6) {
        if (Build.VERSION.SDK_INT >= 28) {
            getSuperCaller().a(i6);
        } else {
            i2.t.n(this, i6);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i6) {
        i2.t.o(this, i6);
    }

    public void setPrecomputedText(h0.c cVar) {
        if (Build.VERSION.SDK_INT >= 29) {
            throw null;
        }
        i2.t.h(this);
        throw null;
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        k2.n nVar = this.f4141a;
        if (nVar != null) {
            nVar.j(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        k2.n nVar = this.f4141a;
        if (nVar != null) {
            nVar.k(mode);
        }
    }

    @Override // m0.k
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        s0 s0Var = this.f4142b;
        s0Var.l(colorStateList);
        s0Var.b();
    }

    @Override // m0.k
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        s0 s0Var = this.f4142b;
        s0Var.m(mode);
        s0Var.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i6) {
        super.setTextAppearance(context, i6);
        s0 s0Var = this.f4142b;
        if (s0Var != null) {
            s0Var.g(context, i6);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        w wVar;
        if (Build.VERSION.SDK_INT >= 28 || (wVar = this.f4143c) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            wVar.f4140c = textClassifier;
        }
    }

    public void setTextFuture(Future<h0.c> future) {
        this.f4147g = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(h0.b bVar) {
        TextDirectionHeuristic textDirectionHeuristic;
        TextDirectionHeuristic textDirectionHeuristic2 = bVar.f2883b;
        TextDirectionHeuristic textDirectionHeuristic3 = TextDirectionHeuristics.FIRSTSTRONG_RTL;
        int i6 = 1;
        if (textDirectionHeuristic2 != textDirectionHeuristic3 && textDirectionHeuristic2 != (textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR)) {
            if (textDirectionHeuristic2 == TextDirectionHeuristics.ANYRTL_LTR) {
                i6 = 2;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.LTR) {
                i6 = 3;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.RTL) {
                i6 = 4;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.LOCALE) {
                i6 = 5;
            } else if (textDirectionHeuristic2 == textDirectionHeuristic) {
                i6 = 6;
            } else if (textDirectionHeuristic2 == textDirectionHeuristic3) {
                i6 = 7;
            }
        }
        setTextDirection(i6);
        getPaint().set(bVar.f2882a);
        setBreakStrategy(bVar.f2884c);
        setHyphenationFrequency(bVar.f2885d);
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i6, float f9) {
        boolean z5 = l3.f4027c;
        if (z5) {
            super.setTextSize(i6, f9);
            return;
        }
        s0 s0Var = this.f4142b;
        if (s0Var != null) {
            b1 b1Var = s0Var.f4090i;
            if (z5 || b1Var.f()) {
                return;
            }
            b1Var.g(i6, f9);
        }
    }

    @Override // android.widget.TextView
    public final void setTypeface(Typeface typeface, int i6) {
        Typeface typefaceCreate;
        if (this.f4145e) {
            return;
        }
        if (typeface == null || i6 <= 0) {
            typefaceCreate = null;
        } else {
            Context context = getContext();
            x2.a aVar = c0.f.f996a;
            if (context == null) {
                throw new IllegalArgumentException("Context cannot be null");
            }
            typefaceCreate = Typeface.create(typeface, i6);
        }
        this.f4145e = true;
        if (typefaceCreate != null) {
            typeface = typefaceCreate;
        }
        try {
            super.setTypeface(typeface, i6);
        } finally {
            this.f4145e = false;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w0(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        w2.a(context);
        this.f4145e = false;
        this.f4146f = null;
        v2.a(getContext(), this);
        k2.n nVar = new k2.n(this);
        this.f4141a = nVar;
        nVar.e(attributeSet, i6);
        s0 s0Var = new s0(this);
        this.f4142b = s0Var;
        s0Var.f(attributeSet, i6);
        s0Var.b();
        w wVar = new w();
        wVar.f4139b = this;
        this.f4143c = wVar;
        getEmojiTextViewHelper().a(attributeSet, i6);
    }

    @Override // android.widget.TextView
    public final void setLineHeight(int i6, float f9) {
        int i9 = Build.VERSION.SDK_INT;
        if (i9 >= 34) {
            getSuperCaller().o(i6, f9);
        } else if (i9 >= 34) {
            j0.u.h(this, i6, f9);
        } else {
            i2.t.o(this, Math.round(TypedValue.applyDimension(i6, f9, getResources().getDisplayMetrics())));
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i6, int i9, int i10, int i11) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i6 != 0 ? z7.l.j(context, i6) : null, i9 != 0 ? z7.l.j(context, i9) : null, i10 != 0 ? z7.l.j(context, i10) : null, i11 != 0 ? z7.l.j(context, i11) : null);
        s0 s0Var = this.f4142b;
        if (s0Var != null) {
            s0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i6, int i9, int i10, int i11) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i6 != 0 ? z7.l.j(context, i6) : null, i9 != 0 ? z7.l.j(context, i9) : null, i10 != 0 ? z7.l.j(context, i10) : null, i11 != 0 ? z7.l.j(context, i11) : null);
        s0 s0Var = this.f4142b;
        if (s0Var != null) {
            s0Var.b();
        }
    }
}
