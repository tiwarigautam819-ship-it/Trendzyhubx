package m;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ActionMode;
import android.view.DragEvent;
import android.view.inputmethod.InputMethodManager;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import android.widget.TextView;
import com.YaarWin.app.R;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class r extends EditText implements j0.s, m0.k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k2.n f4074a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s0 f4075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final w f4076c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final m0.j f4077d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final w f4078e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public q f4079f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.editTextStyle);
        w2.a(context);
        v2.a(getContext(), this);
        k2.n nVar = new k2.n(this);
        this.f4074a = nVar;
        nVar.e(attributeSet, R.attr.editTextStyle);
        s0 s0Var = new s0(this);
        this.f4075b = s0Var;
        s0Var.f(attributeSet, R.attr.editTextStyle);
        s0Var.b();
        w wVar = new w();
        wVar.f4139b = this;
        this.f4076c = wVar;
        this.f4077d = new m0.j();
        w wVar2 = new w(this);
        this.f4078e = wVar2;
        wVar2.b(attributeSet, R.attr.editTextStyle);
        KeyListener keyListener = getKeyListener();
        if (keyListener instanceof NumberKeyListener) {
            return;
        }
        boolean zIsFocusable = super.isFocusable();
        boolean zIsClickable = super.isClickable();
        boolean zIsLongClickable = super.isLongClickable();
        int inputType = super.getInputType();
        KeyListener keyListenerA = wVar2.a(keyListener);
        if (keyListenerA == keyListener) {
            return;
        }
        super.setKeyListener(keyListenerA);
        super.setRawInputType(inputType);
        super.setFocusable(zIsFocusable);
        super.setClickable(zIsClickable);
        super.setLongClickable(zIsLongClickable);
    }

    private q getSuperCaller() {
        if (this.f4079f == null) {
            this.f4079f = new q(this);
        }
        return this.f4079f;
    }

    @Override // j0.s
    public final j0.f a(j0.f fVar) {
        this.f4077d.getClass();
        return m0.j.a(this, fVar);
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        k2.n nVar = this.f4074a;
        if (nVar != null) {
            nVar.a();
        }
        s0 s0Var = this.f4075b;
        if (s0Var != null) {
            s0Var.b();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return i2.t.r(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        k2.n nVar = this.f4074a;
        if (nVar != null) {
            return nVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        k2.n nVar = this.f4074a;
        if (nVar != null) {
            return nVar.c();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f4075b.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f4075b.e();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        w wVar;
        if (Build.VERSION.SDK_INT >= 28 || (wVar = this.f4076c) == null) {
            return super.getTextClassifier();
        }
        TextClassifier textClassifier = (TextClassifier) wVar.f4140c;
        return textClassifier == null ? m0.a((TextView) wVar.f4139b) : textClassifier;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0057 A[PHI: r1
      0x0057: PHI (r1v10 java.lang.String[]) = (r1v5 java.lang.String[]), (r1v11 java.lang.String[]) binds: [B:30:0x006a, B:22:0x0055] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0071  */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.view.inputmethod.InputConnection onCreateInputConnection(android.view.inputmethod.EditorInfo r8) {
        /*
            r7 = this;
            android.view.inputmethod.InputConnection r0 = super.onCreateInputConnection(r8)
            m.s0 r1 = r7.f4075b
            r1.getClass()
            m.s0.h(r8, r0, r7)
            d4.a.d(r8, r0, r7)
            if (r0 == 0) goto L77
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 30
            if (r1 > r2) goto L77
            java.lang.String[] r2 = j0.k0.d(r7)
            if (r2 == 0) goto L77
            java.lang.String r3 = "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"
            java.lang.String r4 = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"
            r5 = 25
            if (r1 < r5) goto L29
            l0.a.a(r8, r2)
            goto L3e
        L29:
            android.os.Bundle r6 = r8.extras
            if (r6 != 0) goto L34
            android.os.Bundle r6 = new android.os.Bundle
            r6.<init>()
            r8.extras = r6
        L34:
            android.os.Bundle r6 = r8.extras
            r6.putStringArray(r4, r2)
            android.os.Bundle r6 = r8.extras
            r6.putStringArray(r3, r2)
        L3e:
            com.google.firebase.messaging.j0 r2 = new com.google.firebase.messaging.j0
            r6 = 4
            r2.<init>(r6, r7)
            if (r1 < r5) goto L4d
            l0.d r1 = new l0.d
            r1.<init>(r0, r2)
        L4b:
            r0 = r1
            goto L77
        L4d:
            java.lang.String[] r6 = l0.c.f3742a
            if (r1 < r5) goto L59
            java.lang.String[] r1 = l0.a.b(r8)
            if (r1 == 0) goto L6d
        L57:
            r6 = r1
            goto L6d
        L59:
            android.os.Bundle r1 = r8.extras
            if (r1 != 0) goto L5e
            goto L6d
        L5e:
            java.lang.String[] r1 = r1.getStringArray(r4)
            if (r1 != 0) goto L6a
            android.os.Bundle r1 = r8.extras
            java.lang.String[] r1 = r1.getStringArray(r3)
        L6a:
            if (r1 == 0) goto L6d
            goto L57
        L6d:
            int r1 = r6.length
            if (r1 != 0) goto L71
            goto L77
        L71:
            l0.e r1 = new l0.e
            r1.<init>(r0, r2)
            goto L4b
        L77:
            m.w r1 = r7.f4078e
            r0.b r8 = r1.c(r0, r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: m.r.onCreateInputConnection(android.view.inputmethod.EditorInfo):android.view.inputmethod.InputConnection");
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        int i6 = Build.VERSION.SDK_INT;
        if (i6 < 30 || i6 >= 33) {
            return;
        }
        ((InputMethodManager) getContext().getSystemService("input_method")).isActive(this);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onDragEvent(DragEvent dragEvent) {
        Activity activity;
        int i6 = Build.VERSION.SDK_INT;
        boolean zA = false;
        if (i6 < 31 && i6 >= 24 && dragEvent.getLocalState() == null && j0.k0.d(this) != null) {
            Context context = getContext();
            while (true) {
                if (!(context instanceof ContextWrapper)) {
                    activity = null;
                    break;
                }
                if (context instanceof Activity) {
                    activity = (Activity) context;
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            }
            if (activity == null) {
                Log.i("ReceiveContent", "Can't handle drop: no activity: view=" + this);
            } else if (dragEvent.getAction() != 1 && dragEvent.getAction() == 3) {
                zA = z.a(dragEvent, this, activity);
            }
        }
        if (zA) {
            return true;
        }
        return super.onDragEvent(dragEvent);
    }

    @Override // android.widget.EditText, android.widget.TextView
    public final boolean onTextContextMenuItem(int i6) {
        j0.c hVar;
        int i9 = Build.VERSION.SDK_INT;
        if (i9 >= 31 || j0.k0.d(this) == null || !(i6 == 16908322 || i6 == 16908337)) {
            return super.onTextContextMenuItem(i6);
        }
        ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
        ClipData primaryClip = clipboardManager == null ? null : clipboardManager.getPrimaryClip();
        if (primaryClip != null && primaryClip.getItemCount() > 0) {
            if (i9 >= 31) {
                hVar = new k1.h(primaryClip, 1);
            } else {
                j0.d dVar = new j0.d();
                dVar.f3260b = primaryClip;
                dVar.f3261c = 1;
                hVar = dVar;
            }
            hVar.p(i6 == 16908322 ? 0 : 1);
            j0.k0.f(this, hVar.build());
        }
        return true;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        k2.n nVar = this.f4074a;
        if (nVar != null) {
            nVar.g();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i6) {
        super.setBackgroundResource(i6);
        k2.n nVar = this.f4074a;
        if (nVar != null) {
            nVar.h(i6);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        s0 s0Var = this.f4075b;
        if (s0Var != null) {
            s0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        s0 s0Var = this.f4075b;
        if (s0Var != null) {
            s0Var.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(i2.t.s(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z5) {
        this.f4078e.d(z5);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f4078e.a(keyListener));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        k2.n nVar = this.f4074a;
        if (nVar != null) {
            nVar.j(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        k2.n nVar = this.f4074a;
        if (nVar != null) {
            nVar.k(mode);
        }
    }

    @Override // m0.k
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        s0 s0Var = this.f4075b;
        s0Var.l(colorStateList);
        s0Var.b();
    }

    @Override // m0.k
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        s0 s0Var = this.f4075b;
        s0Var.m(mode);
        s0Var.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i6) {
        super.setTextAppearance(context, i6);
        s0 s0Var = this.f4075b;
        if (s0Var != null) {
            s0Var.g(context, i6);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        w wVar;
        if (Build.VERSION.SDK_INT >= 28 || (wVar = this.f4076c) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            wVar.f4140c = textClassifier;
        }
    }

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        return Build.VERSION.SDK_INT >= 28 ? super.getText() : super.getEditableText();
    }
}
