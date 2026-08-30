package z1;

import android.content.res.Resources;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import c2.e;
import d7.g;
import f4.f;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f6391a = new b();

    public static final ArrayList a(View view) {
        List listB;
        if (v2.a.b(b.class)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(e.g(view));
            Object tag = view.getTag();
            if (tag != null) {
                arrayList.add(tag.toString());
            }
            CharSequence contentDescription = view.getContentDescription();
            if (contentDescription != null) {
                arrayList.add(contentDescription.toString());
            }
            int i6 = 0;
            try {
                if (view.getId() != -1) {
                    String resourceName = view.getResources().getResourceName(view.getId());
                    g.e("resourceName", resourceName);
                    Pattern patternCompile = Pattern.compile("/");
                    g.e("compile(...)", patternCompile);
                    k7.g.H(0);
                    Matcher matcher = patternCompile.matcher(resourceName);
                    if (matcher.find()) {
                        ArrayList arrayList2 = new ArrayList(10);
                        int iEnd = 0;
                        do {
                            arrayList2.add(resourceName.subSequence(iEnd, matcher.start()).toString());
                            iEnd = matcher.end();
                        } while (matcher.find());
                        arrayList2.add(resourceName.subSequence(iEnd, resourceName.length()).toString());
                        listB = arrayList2;
                    } else {
                        listB = f.b(resourceName.toString());
                    }
                    String[] strArr = (String[]) listB.toArray(new String[0]);
                    if (strArr.length == 2) {
                        arrayList.add(strArr[1]);
                    }
                }
            } catch (Resources.NotFoundException unused) {
            }
            ArrayList arrayList3 = new ArrayList();
            int size = arrayList.size();
            while (i6 < size) {
                Object obj = arrayList.get(i6);
                i6++;
                String str = (String) obj;
                if (str.length() > 0 && str.length() <= 100) {
                    String lowerCase = str.toLowerCase();
                    g.e("this as java.lang.String).toLowerCase()", lowerCase);
                    arrayList3.add(lowerCase);
                }
            }
            return arrayList3;
        } catch (Throwable th) {
            v2.a.a(th, b.class);
            return null;
        }
    }

    public static final boolean c(ArrayList arrayList, ArrayList arrayList2) {
        if (!v2.a.b(b.class)) {
            try {
                g.f("indicators", arrayList);
                g.f("keys", arrayList2);
                int size = arrayList.size();
                int i6 = 0;
                while (i6 < size) {
                    Object obj = arrayList.get(i6);
                    i6++;
                    String str = (String) obj;
                    b bVar = f6391a;
                    if (!v2.a.b(bVar)) {
                        try {
                            int size2 = arrayList2.size();
                            int i9 = 0;
                            while (i9 < size2) {
                                Object obj2 = arrayList2.get(i9);
                                i9++;
                                if (k7.g.x(str, (String) obj2)) {
                                    return true;
                                }
                            }
                        } catch (Throwable th) {
                            v2.a.a(th, bVar);
                        }
                    }
                }
            } catch (Throwable th2) {
                v2.a.a(th2, b.class);
                return false;
            }
        }
        return false;
    }

    public final ArrayList b(View view) {
        if (v2.a.b(this)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            if (view instanceof EditText) {
                return arrayList;
            }
            if (view instanceof TextView) {
                String string = ((TextView) view).getText().toString();
                if (string.length() > 0 && string.length() < 100) {
                    String lowerCase = string.toLowerCase();
                    g.e("this as java.lang.String).toLowerCase()", lowerCase);
                    arrayList.add(lowerCase);
                    return arrayList;
                }
            } else {
                ArrayList arrayListA = e.a(view);
                int size = arrayListA.size();
                int i6 = 0;
                while (i6 < size) {
                    Object obj = arrayListA.get(i6);
                    i6++;
                    arrayList.addAll(b((View) obj));
                }
            }
            return arrayList;
        } catch (Throwable th) {
            v2.a.a(th, this);
            return null;
        }
    }
}
