package o2;

import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.RatingBar;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TimePicker;
import d7.g;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import s6.h;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f4407a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final List f4408b = h.k(Switch.class, Spinner.class, DatePicker.class, TimePicker.class, RadioGroup.class, RatingBar.class, EditText.class, AdapterView.class);

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0033, code lost:
    
        if (r6.isClickable() == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0035, code lost:
    
        r1.add(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0038, code lost:
    
        r6 = c2.e.a(r6);
        r3 = r6.size();
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0041, code lost:
    
        if (r4 >= r3) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0043, code lost:
    
        r5 = r6.get(r4);
        r4 = r4 + 1;
        r1.addAll(a((android.view.View) r5));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.util.ArrayList a(android.view.View r6) {
        /*
            java.lang.Class<o2.c> r0 = o2.c.class
            boolean r1 = v2.a.b(r0)
            r2 = 0
            if (r1 == 0) goto La
            return r2
        La:
            java.lang.String r1 = "view"
            d7.g.f(r1, r6)     // Catch: java.lang.Throwable -> L2d
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L2d
            r1.<init>()     // Catch: java.lang.Throwable -> L2d
            java.util.List r3 = o2.c.f4408b     // Catch: java.lang.Throwable -> L2d
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Throwable -> L2d
        L1a:
            boolean r4 = r3.hasNext()     // Catch: java.lang.Throwable -> L2d
            if (r4 == 0) goto L2f
            java.lang.Object r4 = r3.next()     // Catch: java.lang.Throwable -> L2d
            java.lang.Class r4 = (java.lang.Class) r4     // Catch: java.lang.Throwable -> L2d
            boolean r4 = r4.isInstance(r6)     // Catch: java.lang.Throwable -> L2d
            if (r4 == 0) goto L1a
            goto L53
        L2d:
            r6 = move-exception
            goto L54
        L2f:
            boolean r3 = r6.isClickable()     // Catch: java.lang.Throwable -> L2d
            if (r3 == 0) goto L38
            r1.add(r6)     // Catch: java.lang.Throwable -> L2d
        L38:
            java.util.ArrayList r6 = c2.e.a(r6)     // Catch: java.lang.Throwable -> L2d
            int r3 = r6.size()     // Catch: java.lang.Throwable -> L2d
            r4 = 0
        L41:
            if (r4 >= r3) goto L53
            java.lang.Object r5 = r6.get(r4)     // Catch: java.lang.Throwable -> L2d
            int r4 = r4 + 1
            android.view.View r5 = (android.view.View) r5     // Catch: java.lang.Throwable -> L2d
            java.util.ArrayList r5 = a(r5)     // Catch: java.lang.Throwable -> L2d
            r1.addAll(r5)     // Catch: java.lang.Throwable -> L2d
            goto L41
        L53:
            return r1
        L54:
            v2.a.a(r6, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: o2.c.a(android.view.View):java.util.ArrayList");
    }

    public static final JSONObject b(View view, View view2) {
        if (v2.a.b(c.class)) {
            return null;
        }
        try {
            g.f("view", view);
            JSONObject jSONObject = new JSONObject();
            if (view == view2) {
                try {
                    jSONObject.put("is_interacted", true);
                } catch (JSONException unused) {
                }
            }
            e(view, jSONObject);
            JSONArray jSONArray = new JSONArray();
            ArrayList arrayListA = c2.e.a(view);
            int size = arrayListA.size();
            int i6 = 0;
            while (i6 < size) {
                Object obj = arrayListA.get(i6);
                i6++;
                jSONArray.put(b((View) obj, view2));
            }
            jSONObject.put("childviews", jSONArray);
            return jSONObject;
        } catch (Throwable th) {
            v2.a.a(th, c.class);
            return null;
        }
    }

    public static final String d(View view) {
        if (v2.a.b(c.class)) {
            return null;
        }
        try {
            g.f("hostView", view);
            String strI = c2.e.i(view);
            if (strI.length() > 0) {
                return strI;
            }
            String strJoin = TextUtils.join(" ", f4407a.c(view));
            g.e("join(\" \", childrenText)", strJoin);
            return strJoin;
        } catch (Throwable th) {
            v2.a.a(th, c.class);
            return null;
        }
    }

    public static final void e(View view, JSONObject jSONObject) {
        if (v2.a.b(c.class)) {
            return;
        }
        try {
            g.f("view", view);
            try {
                String strI = c2.e.i(view);
                String strG = c2.e.g(view);
                jSONObject.put("classname", view.getClass().getSimpleName());
                jSONObject.put("classtypebitmask", c2.e.b(view));
                if (strI.length() > 0) {
                    jSONObject.put("text", strI);
                }
                if (strG.length() > 0) {
                    jSONObject.put("hint", strG);
                }
                if (view instanceof EditText) {
                    jSONObject.put("inputtype", ((EditText) view).getInputType());
                }
            } catch (JSONException unused) {
            }
        } catch (Throwable th) {
            v2.a.a(th, c.class);
        }
    }

    public final ArrayList c(View view) {
        if (v2.a.b(this)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayListA = c2.e.a(view);
            int size = arrayListA.size();
            int i6 = 0;
            while (i6 < size) {
                Object obj = arrayListA.get(i6);
                i6++;
                View view2 = (View) obj;
                String strI = c2.e.i(view2);
                if (strI.length() > 0) {
                    arrayList.add(strI);
                }
                arrayList.addAll(c(view2));
            }
            return arrayList;
        } catch (Throwable th) {
            v2.a.a(th, this);
            return null;
        }
    }
}
