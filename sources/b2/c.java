package b2;

import android.os.Bundle;
import android.view.View;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import x1.r;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f906a = new c();

    public static Bundle b(c2.a aVar, View view, View view2) {
        Bundle bundle = new Bundle();
        List<c2.b> listUnmodifiableList = Collections.unmodifiableList(aVar.f1016c);
        d7.g.e("unmodifiableList(parameters)", listUnmodifiableList);
        for (c2.b bVar : listUnmodifiableList) {
            String str = bVar.f1019b;
            String str2 = bVar.f1018a;
            ArrayList arrayList = bVar.f1020c;
            if (str != null && str.length() > 0) {
                bundle.putString(str2, bVar.f1019b);
            } else if (arrayList.size() > 0) {
                int i6 = 0;
                ArrayList arrayListG = d7.g.a(bVar.f1021d, "relative") ? k2.e.g(view2, arrayList, 0, -1, view2.getClass().getSimpleName()) : k2.e.g(view, arrayList, 0, -1, view.getClass().getSimpleName());
                int size = arrayListG.size();
                while (true) {
                    if (i6 < size) {
                        Object obj = arrayListG.get(i6);
                        i6++;
                        g gVar = (g) obj;
                        if (gVar.a() != null) {
                            String strI = c2.e.i(gVar.a());
                            if (strI.length() > 0) {
                                bundle.putString(str2, strI);
                                break;
                            }
                        }
                    }
                }
            }
        }
        return bundle;
    }

    public static final void c(c2.a aVar, View view, View view2) {
        if (v2.a.b(c.class)) {
            return;
        }
        try {
            String str = aVar.f1014a;
            Bundle bundleB = b(aVar, view, view2);
            f906a.d(bundleB);
            r.c().execute(new a2.i(str, 3, bundleB));
        } catch (Throwable th) {
            v2.a.a(th, c.class);
        }
    }

    public synchronized i a() {
        i iVar;
        i iVar2;
        try {
            iVar = null;
            if (v2.a.b(i.class)) {
                iVar2 = null;
            } else {
                try {
                    iVar2 = i.f926g;
                } catch (Throwable th) {
                    v2.a.a(th, i.class);
                    iVar2 = null;
                }
            }
            if (iVar2 == null) {
                i iVar3 = new i();
                if (!v2.a.b(i.class)) {
                    try {
                        i.f926g = iVar3;
                    } catch (Throwable th2) {
                        v2.a.a(th2, i.class);
                    }
                }
            }
            if (!v2.a.b(i.class)) {
                try {
                    iVar = i.f926g;
                } catch (Throwable th3) {
                    v2.a.a(th3, i.class);
                }
            }
            d7.g.d("null cannot be cast to non-null type com.facebook.appevents.codeless.CodelessMatcher", iVar);
        } catch (Throwable th4) {
            throw th4;
        }
        return iVar;
    }

    public void d(Bundle bundle) {
        Locale locale;
        if (v2.a.b(this)) {
            return;
        }
        try {
            String string = bundle.getString("_valueToSum");
            if (string != null) {
                double dDoubleValue = 0.0d;
                try {
                    Matcher matcher = Pattern.compile("[-+]*\\d+([.,]\\d+)*([.,]\\d+)?", 8).matcher(string);
                    if (matcher.find()) {
                        String strGroup = matcher.group(0);
                        try {
                            locale = r.a().getResources().getConfiguration().locale;
                        } catch (Exception unused) {
                            locale = null;
                        }
                        if (locale == null) {
                            locale = Locale.getDefault();
                            d7.g.e("getDefault()", locale);
                        }
                        dDoubleValue = NumberFormat.getNumberInstance(locale).parse(strGroup).doubleValue();
                    }
                } catch (ParseException unused2) {
                }
                bundle.putDouble("_valueToSum", dDoubleValue);
            }
            bundle.putString("_is_fb_codeless", "1");
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }
}
