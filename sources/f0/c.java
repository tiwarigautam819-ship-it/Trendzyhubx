package f0;

import android.content.Context;
import android.content.res.Configuration;
import android.icu.text.DecimalFormatSymbols;
import android.os.LocaleList;
import android.os.UserManager;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c {
    public static LocaleList a(Locale... localeArr) {
        return new LocaleList(localeArr);
    }

    public static DecimalFormatSymbols b(Locale locale) {
        return DecimalFormatSymbols.getInstance(locale);
    }

    public static LocaleList c(Configuration configuration) {
        return configuration.getLocales();
    }

    public static boolean d(Context context) {
        return ((UserManager) context.getSystemService(UserManager.class)).isUserUnlocked();
    }
}
