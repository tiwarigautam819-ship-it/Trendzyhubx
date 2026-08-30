package f0;

import android.os.Build;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    static {
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 30) {
            d0.b.b(30);
        }
        if (i6 >= 30) {
            d0.b.b(31);
        }
        if (i6 >= 30) {
            d0.b.b(33);
        }
        if (i6 >= 30) {
            d0.b.b(1000000);
        }
    }

    public static final boolean a() {
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 35) {
            return true;
        }
        if (i6 < 34) {
            return false;
        }
        String str = Build.VERSION.CODENAME;
        d7.g.e("CODENAME", str);
        if ("REL".equals(str)) {
            return false;
        }
        Locale locale = Locale.ROOT;
        String upperCase = str.toUpperCase(locale);
        d7.g.e("this as java.lang.String).toUpperCase(Locale.ROOT)", upperCase);
        String upperCase2 = "VanillaIceCream".toUpperCase(locale);
        d7.g.e("this as java.lang.String).toUpperCase(Locale.ROOT)", upperCase2);
        return upperCase.compareTo(upperCase2) >= 0;
    }
}
