package a0;

import android.content.pm.PackageInfo;
import android.graphics.drawable.Icon;
import android.icu.text.DecimalFormatSymbols;
import android.net.Uri;
import android.text.PrecomputedText;
import android.view.DisplayCutout;
import android.view.ViewConfiguration;
import android.widget.TextView;
import m.w0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static String[] a(DecimalFormatSymbols decimalFormatSymbols) {
        return decimalFormatSymbols.getDigitStrings();
    }

    public static long b(PackageInfo packageInfo) {
        return packageInfo.getLongVersionCode();
    }

    public static int c(Object obj) {
        return ((Icon) obj).getResId();
    }

    public static String d(Object obj) {
        return ((Icon) obj).getResPackage();
    }

    public static int e(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetBottom();
    }

    public static int f(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetLeft();
    }

    public static int g(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetRight();
    }

    public static int h(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetTop();
    }

    public static int i(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledHoverSlop();
    }

    public static PrecomputedText.Params j(w0 w0Var) {
        return w0Var.getTextMetricsParams();
    }

    public static int k(Object obj) {
        return ((Icon) obj).getType();
    }

    public static Uri l(Object obj) {
        return ((Icon) obj).getUri();
    }

    public static void m(TextView textView, int i6) {
        textView.setFirstBaselineToTopHeight(i6);
    }

    public static boolean n(ViewConfiguration viewConfiguration) {
        return viewConfiguration.shouldShowMenuShortcutsWhenKeyboardPresent();
    }
}
