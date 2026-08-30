package r0;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;
import p0.k;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i implements TextWatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EditText f4957a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public h f4958b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4959c = true;

    public i(EditText editText) {
        this.f4957a = editText;
    }

    public static void a(EditText editText, int i6) {
        int length;
        if (i6 == 1 && editText != null && editText.isAttachedToWindow()) {
            Editable editableText = editText.getEditableText();
            int selectionStart = Selection.getSelectionStart(editableText);
            int selectionEnd = Selection.getSelectionEnd(editableText);
            k kVarA = k.a();
            if (editableText == null) {
                length = 0;
            } else {
                kVarA.getClass();
                length = editableText.length();
            }
            kVarA.e(editableText, 0, length);
            if (selectionStart >= 0 && selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionStart, selectionEnd);
            } else if (selectionStart >= 0) {
                Selection.setSelection(editableText, selectionStart);
            } else if (selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionEnd);
            }
        }
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i6, int i9, int i10) throws Throwable {
        EditText editText = this.f4957a;
        if (editText.isInEditMode() || !this.f4959c || k.f4586k == null || i9 > i10 || !(charSequence instanceof Spannable)) {
            return;
        }
        int iB = k.a().b();
        if (iB != 0) {
            if (iB == 1) {
                k.a().e((Spannable) charSequence, i6, i10 + i6);
                return;
            } else if (iB != 3) {
                return;
            }
        }
        k kVarA = k.a();
        if (this.f4958b == null) {
            this.f4958b = new h(editText);
        }
        kVarA.f(this.f4958b);
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i6, int i9, int i10) {
    }
}
