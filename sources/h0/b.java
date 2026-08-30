package h0;

import android.os.Build;
import android.text.PrecomputedText;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextPaint f2882a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextDirectionHeuristic f2883b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2884c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2885d;

    public b(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i6, int i9) {
        if (Build.VERSION.SDK_INT >= 29) {
            a.f(textPaint).setBreakStrategy(i6).setHyphenationFrequency(i9).setTextDirection(textDirectionHeuristic).build();
        }
        this.f2882a = textPaint;
        this.f2883b = textDirectionHeuristic;
        this.f2884c = i6;
        this.f2885d = i9;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        int i6 = Build.VERSION.SDK_INT;
        if (this.f2884c != bVar.f2884c || this.f2885d != bVar.f2885d) {
            return false;
        }
        TextPaint textPaint = this.f2882a;
        float textSize = textPaint.getTextSize();
        TextPaint textPaint2 = bVar.f2882a;
        if (textSize != textPaint2.getTextSize() || textPaint.getTextScaleX() != textPaint2.getTextScaleX() || textPaint.getTextSkewX() != textPaint2.getTextSkewX() || textPaint.getLetterSpacing() != textPaint2.getLetterSpacing() || !TextUtils.equals(textPaint.getFontFeatureSettings(), textPaint2.getFontFeatureSettings()) || textPaint.getFlags() != textPaint2.getFlags()) {
            return false;
        }
        if (i6 >= 24) {
            if (!textPaint.getTextLocales().equals(textPaint2.getTextLocales())) {
                return false;
            }
        } else if (!textPaint.getTextLocale().equals(textPaint2.getTextLocale())) {
            return false;
        }
        if (textPaint.getTypeface() == null) {
            if (textPaint2.getTypeface() != null) {
                return false;
            }
        } else if (!textPaint.getTypeface().equals(textPaint2.getTypeface())) {
            return false;
        }
        return this.f2883b == bVar.f2883b;
    }

    public final int hashCode() {
        int i6 = Build.VERSION.SDK_INT;
        TextDirectionHeuristic textDirectionHeuristic = this.f2883b;
        int i9 = this.f2885d;
        int i10 = this.f2884c;
        TextPaint textPaint = this.f2882a;
        return i6 >= 24 ? Objects.hash(Float.valueOf(textPaint.getTextSize()), Float.valueOf(textPaint.getTextScaleX()), Float.valueOf(textPaint.getTextSkewX()), Float.valueOf(textPaint.getLetterSpacing()), Integer.valueOf(textPaint.getFlags()), textPaint.getTextLocales(), textPaint.getTypeface(), Boolean.valueOf(textPaint.isElegantTextHeight()), textDirectionHeuristic, Integer.valueOf(i10), Integer.valueOf(i9)) : Objects.hash(Float.valueOf(textPaint.getTextSize()), Float.valueOf(textPaint.getTextScaleX()), Float.valueOf(textPaint.getTextSkewX()), Float.valueOf(textPaint.getLetterSpacing()), Integer.valueOf(textPaint.getFlags()), textPaint.getTextLocale(), textPaint.getTypeface(), Boolean.valueOf(textPaint.isElegantTextHeight()), textDirectionHeuristic, Integer.valueOf(i10), Integer.valueOf(i9));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        StringBuilder sb2 = new StringBuilder("textSize=");
        TextPaint textPaint = this.f2882a;
        sb2.append(textPaint.getTextSize());
        sb.append(sb2.toString());
        sb.append(", textScaleX=" + textPaint.getTextScaleX());
        sb.append(", textSkewX=" + textPaint.getTextSkewX());
        int i6 = Build.VERSION.SDK_INT;
        sb.append(", letterSpacing=" + textPaint.getLetterSpacing());
        sb.append(", elegantTextHeight=" + textPaint.isElegantTextHeight());
        if (i6 >= 24) {
            sb.append(", textLocale=" + textPaint.getTextLocales());
        } else {
            sb.append(", textLocale=" + textPaint.getTextLocale());
        }
        sb.append(", typeface=" + textPaint.getTypeface());
        if (i6 >= 26) {
            sb.append(", variationSettings=" + textPaint.getFontVariationSettings());
        }
        sb.append(", textDir=" + this.f2883b);
        sb.append(", breakStrategy=" + this.f2884c);
        sb.append(", hyphenationFrequency=" + this.f2885d);
        sb.append("}");
        return sb.toString();
    }

    public b(PrecomputedText.Params params) {
        this.f2882a = params.getTextPaint();
        this.f2883b = params.getTextDirection();
        this.f2884c = params.getBreakStrategy();
        this.f2885d = params.getHyphenationFrequency();
    }
}
