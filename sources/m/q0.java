package m;

import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class q0 {
    public static int a(TextView textView) {
        return textView.getAutoSizeStepGranularity();
    }

    public static void b(TextView textView, int i6, int i9, int i10, int i11) {
        textView.setAutoSizeTextTypeUniformWithConfiguration(i6, i9, i10, i11);
    }

    public static void c(TextView textView, int[] iArr, int i6) {
        textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i6);
    }

    public static boolean d(TextView textView, String str) {
        return textView.setFontVariationSettings(str);
    }
}
