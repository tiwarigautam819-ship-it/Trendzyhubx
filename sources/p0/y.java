package p0;

import android.os.Build;
import android.text.Spannable;
import android.text.SpannableString;
import java.util.stream.IntStream;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class y implements Spannable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f4629a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Spannable f4630b;

    public y(Spannable spannable) {
        this.f4630b = spannable;
    }

    public final void a() {
        Spannable spannable = this.f4630b;
        if (!this.f4629a) {
            if ((Build.VERSION.SDK_INT < 28 ? new o3.a(5) : new x(5)).h(spannable)) {
                this.f4630b = new SpannableString(spannable);
            }
        }
        this.f4629a = true;
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i6) {
        return this.f4630b.charAt(i6);
    }

    @Override // java.lang.CharSequence
    public final IntStream chars() {
        return this.f4630b.chars();
    }

    @Override // java.lang.CharSequence
    public final IntStream codePoints() {
        return this.f4630b.codePoints();
    }

    @Override // android.text.Spanned
    public final int getSpanEnd(Object obj) {
        return this.f4630b.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanFlags(Object obj) {
        return this.f4630b.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanStart(Object obj) {
        return this.f4630b.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public final Object[] getSpans(int i6, int i9, Class cls) {
        return this.f4630b.getSpans(i6, i9, cls);
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.f4630b.length();
    }

    @Override // android.text.Spanned
    public final int nextSpanTransition(int i6, int i9, Class cls) {
        return this.f4630b.nextSpanTransition(i6, i9, cls);
    }

    @Override // android.text.Spannable
    public final void removeSpan(Object obj) {
        a();
        this.f4630b.removeSpan(obj);
    }

    @Override // android.text.Spannable
    public final void setSpan(Object obj, int i6, int i9, int i10) {
        a();
        this.f4630b.setSpan(obj, i6, i9, i10);
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i6, int i9) {
        return this.f4630b.subSequence(i6, i9);
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return this.f4630b.toString();
    }
}
