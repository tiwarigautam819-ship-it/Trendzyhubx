package r0;

import android.text.InputFilter;
import android.text.Spanned;
import android.widget.TextView;
import p0.k;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements InputFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f4948a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public c f4949b;

    public d(TextView textView) {
        this.f4948a = textView;
    }

    @Override // android.text.InputFilter
    public final CharSequence filter(CharSequence charSequence, int i6, int i9, Spanned spanned, int i10, int i11) {
        TextView textView = this.f4948a;
        if (textView.isInEditMode()) {
            return charSequence;
        }
        int iB = k.a().b();
        if (iB != 0) {
            if (iB == 1) {
                if ((i11 == 0 && i10 == 0 && spanned.length() == 0 && charSequence == textView.getText()) || charSequence == null) {
                    return charSequence;
                }
                if (i6 != 0 || i9 != charSequence.length()) {
                    charSequence = charSequence.subSequence(i6, i9);
                }
                return k.a().e(charSequence, 0, charSequence.length());
            }
            if (iB != 3) {
                return charSequence;
            }
        }
        k kVarA = k.a();
        if (this.f4949b == null) {
            this.f4949b = new c(textView, this);
        }
        kVarA.f(this.f4949b);
        return charSequence;
    }
}
