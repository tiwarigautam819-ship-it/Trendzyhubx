package g;

import android.content.res.Configuration;
import android.os.LocaleList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class y {
    public static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
        LocaleList locales = configuration.getLocales();
        LocaleList locales2 = configuration2.getLocales();
        if (locales.equals(locales2)) {
            return;
        }
        configuration3.setLocales(locales2);
        configuration3.locale = configuration2.locale;
    }

    public static f0.f b(Configuration configuration) {
        return f0.f.b(configuration.getLocales().toLanguageTags());
    }

    public static void c(f0.f fVar) {
        LocaleList.setDefault(LocaleList.forLanguageTags(fVar.f2520a.a()));
    }

    public static void d(Configuration configuration, f0.f fVar) {
        configuration.setLocales(LocaleList.forLanguageTags(fVar.f2520a.a()));
    }
}
