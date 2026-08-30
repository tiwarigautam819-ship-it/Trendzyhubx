package k1;

import android.content.pm.PackageInfo;
import android.os.Build;
import android.webkit.WebView;
import java.lang.reflect.InvocationTargetException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i extends c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Pattern f3503d;

    public i() {
        super("ALGORITHMIC_DARKENING", "ALGORITHMIC_DARKENING");
        this.f3503d = Pattern.compile("\\A\\d+");
    }

    @Override // k1.c
    public final boolean a() {
        return Build.VERSION.SDK_INT >= 33;
    }

    @Override // k1.c
    public final boolean b() {
        int i6;
        PackageInfo packageInfoC;
        boolean zB = super.b();
        if (!zB || (i6 = Build.VERSION.SDK_INT) >= 29) {
            return zB;
        }
        int i9 = j1.d.f3341a;
        if (i6 >= 26) {
            packageInfoC = WebView.getCurrentWebViewPackage();
        } else {
            try {
                packageInfoC = j1.d.c();
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                packageInfoC = null;
            }
        }
        if (packageInfoC == null) {
            return false;
        }
        Matcher matcher = this.f3503d.matcher(packageInfoC.versionName);
        return matcher.find() && Integer.parseInt(packageInfoC.versionName.substring(matcher.start(), matcher.end())) >= 105;
    }
}
