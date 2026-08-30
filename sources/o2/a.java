package o2;

import a2.i;
import android.os.Bundle;
import android.util.Patterns;
import android.view.View;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import d7.g;
import java.io.File;
import java.io.FileInputStream;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import q2.g0;
import s6.r;
import x1.w;
import x1.z;
import y1.k;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f4397a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Object f4398b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Object f4399c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Object f4400d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static JSONObject f4401e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f4402f;

    public static final boolean a(String str, String str2) {
        HashSet hashSet = f.f4417e;
        b bVar = b.f4403a;
        String str3 = null;
        if (!v2.a.b(b.class)) {
            try {
                LinkedHashMap linkedHashMap = b.f4404b;
                if (linkedHashMap.containsKey(str)) {
                    str3 = (String) linkedHashMap.get(str);
                }
            } catch (Throwable th) {
                v2.a.a(th, b.class);
            }
        }
        if (str3 == null) {
            return false;
        }
        if (!str3.equals("other")) {
            g0.K(new i(str3, 16, str2));
        }
        return true;
    }

    public static void b(View view, View view2, String str) {
        HashSet hashSet;
        Field declaredField;
        Field declaredField2;
        Object obj;
        g.f("hostView", view);
        int iHashCode = view.hashCode();
        HashSet hashSet2 = f.f4417e;
        HashSet hashSet3 = null;
        if (v2.a.b(f.class)) {
            hashSet = null;
        } else {
            try {
                hashSet = f.f4417e;
            } catch (Throwable th) {
                v2.a.a(th, f.class);
                hashSet = null;
            }
        }
        if (hashSet.contains(Integer.valueOf(iHashCode))) {
            return;
        }
        f fVar = new f(view, view2, str);
        if (!v2.a.b(c2.e.class)) {
            try {
                try {
                    declaredField = Class.forName("android.view.View").getDeclaredField("mListenerInfo");
                } catch (ClassNotFoundException | NoSuchFieldException unused) {
                    declaredField = null;
                }
                try {
                    declaredField2 = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnClickListener");
                } catch (ClassNotFoundException | NoSuchFieldException unused2) {
                    declaredField2 = null;
                }
                if (declaredField == null || declaredField2 == null) {
                    view.setOnClickListener(fVar);
                } else {
                    declaredField.setAccessible(true);
                    declaredField2.setAccessible(true);
                    try {
                        declaredField.setAccessible(true);
                        obj = declaredField.get(view);
                    } catch (IllegalAccessException unused3) {
                        obj = null;
                    }
                    if (obj == null) {
                        view.setOnClickListener(fVar);
                    } else {
                        declaredField2.set(obj, fVar);
                    }
                }
            } catch (Exception unused4) {
            } catch (Throwable th2) {
                v2.a.a(th2, c2.e.class);
            }
        }
        if (!v2.a.b(f.class)) {
            try {
                hashSet3 = f.f4417e;
            } catch (Throwable th3) {
                v2.a.a(th3, f.class);
            }
        }
        hashSet3.add(Integer.valueOf(iHashCode));
    }

    public static final float[] c(String str, JSONObject jSONObject) {
        String lowerCase;
        JSONObject jSONObject2;
        String strOptString;
        JSONArray jSONArray;
        a aVar;
        JSONObject jSONObjectD;
        if (!v2.a.b(a.class)) {
            try {
                if (f4402f) {
                    float[] fArr = new float[30];
                    for (int i6 = 0; i6 < 30; i6++) {
                        fArr[i6] = 0.0f;
                    }
                    try {
                        lowerCase = str.toLowerCase();
                        g.e("this as java.lang.String).toLowerCase()", lowerCase);
                        jSONObject2 = new JSONObject(jSONObject.optJSONObject("view").toString());
                        strOptString = jSONObject.optString("screenname");
                        jSONArray = new JSONArray();
                        aVar = f4397a;
                        aVar.k(jSONObject2, jSONArray);
                        aVar.n(fArr, aVar.i(jSONObject2));
                        jSONObjectD = aVar.d(jSONObject2);
                    } catch (JSONException unused) {
                    }
                    if (jSONObjectD != null) {
                        g.e("screenName", strOptString);
                        String string = jSONObject2.toString();
                        g.e("viewTree.toString()", string);
                        aVar.n(fArr, aVar.h(jSONObjectD, jSONArray, strOptString, string, lowerCase));
                        return fArr;
                    }
                }
            } catch (Throwable th) {
                v2.a.a(th, a.class);
                return null;
            }
        }
        return null;
    }

    public static final String e(String str, String str2, String str3) {
        if (v2.a.b(a.class)) {
            return null;
        }
        try {
            g.f("buttonText", str);
            g.f("activityName", str2);
            String lowerCase = (str3 + " | " + str2 + ", " + str).toLowerCase();
            g.e("this as java.lang.String).toLowerCase()", lowerCase);
            return lowerCase;
        } catch (Throwable th) {
            v2.a.a(th, a.class);
            return null;
        }
    }

    public static final void f(File file) {
        if (v2.a.b(a.class)) {
            return;
        }
        try {
            try {
                f4401e = new JSONObject();
                FileInputStream fileInputStream = new FileInputStream(file);
                byte[] bArr = new byte[fileInputStream.available()];
                fileInputStream.read(bArr);
                fileInputStream.close();
                f4401e = new JSONObject(new String(bArr, k7.a.f3570a));
                f4398b = r.u(new r6.d("ENGLISH", "1"), new r6.d("GERMAN", "2"), new r6.d("SPANISH", "3"), new r6.d("JAPANESE", "4"));
                f4399c = r.u(new r6.d("VIEW_CONTENT", "0"), new r6.d("SEARCH", "1"), new r6.d("ADD_TO_CART", "2"), new r6.d("ADD_TO_WISHLIST", "3"), new r6.d("INITIATE_CHECKOUT", "4"), new r6.d("ADD_PAYMENT_INFO", "5"), new r6.d("PURCHASE", "6"), new r6.d("LEAD", "7"), new r6.d("COMPLETE_REGISTRATION", "8"));
                f4400d = r.u(new r6.d("BUTTON_TEXT", "1"), new r6.d("PAGE_TITLE", "2"), new r6.d("RESOLVED_DOCUMENT_LINK", "3"), new r6.d("BUTTON_ID", "4"));
                f4402f = true;
            } catch (Throwable th) {
                v2.a.a(th, a.class);
            }
        } catch (Exception unused) {
        }
    }

    public static void j(String str, String str2, float[] fArr) {
        boolean zContains;
        boolean zContains2;
        d dVar = d.f4409a;
        if (v2.a.b(d.class)) {
            zContains = false;
        } else {
            try {
                g.f("event", str);
                zContains = d.f4411c.contains(str);
            } catch (Throwable th) {
                v2.a.a(th, d.class);
                zContains = false;
            }
        }
        if (zContains) {
            k kVar = new k(x1.r.a(), (String) null);
            if (v2.a.b(kVar)) {
                return;
            }
            try {
                Bundle bundle = new Bundle();
                bundle.putString("_is_suggested_event", "1");
                bundle.putString("_button_text", str2);
                kVar.d(str, bundle);
                return;
            } catch (Throwable th2) {
                v2.a.a(th2, kVar);
                return;
            }
        }
        if (v2.a.b(d.class)) {
            zContains2 = false;
        } else {
            try {
                g.f("event", str);
                zContains2 = d.f4412d.contains(str);
            } catch (Throwable th3) {
                v2.a.a(th3, d.class);
                zContains2 = false;
            }
        }
        if (zContains2) {
            Bundle bundle2 = new Bundle();
            try {
                bundle2.putString("event_name", str);
                JSONObject jSONObject = new JSONObject();
                StringBuilder sb = new StringBuilder();
                for (float f9 : fArr) {
                    sb.append(f9);
                    sb.append(",");
                }
                jSONObject.put("dense", sb.toString());
                jSONObject.put("button_text", str2);
                bundle2.putString("metadata", jSONObject.toString());
                String str3 = z.f5942j;
                z zVarV = w.v(null, String.format(Locale.US, "%s/suggested_events", Arrays.copyOf(new Object[]{x1.r.b()}, 1)), null, null);
                zVarV.f5948d = bundle2;
                zVarV.c();
            } catch (JSONException unused) {
            }
        }
    }

    public JSONObject d(JSONObject jSONObject) {
        if (!v2.a.b(this)) {
            try {
                if (jSONObject.optBoolean("is_interacted")) {
                    return jSONObject;
                }
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("childviews");
                if (jSONArrayOptJSONArray != null) {
                    int length = jSONArrayOptJSONArray.length();
                    for (int i6 = 0; i6 < length; i6++) {
                        JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i6);
                        g.e("children.getJSONObject(i)", jSONObject2);
                        JSONObject jSONObjectD = d(jSONObject2);
                        if (jSONObjectD != null) {
                            return jSONObjectD;
                        }
                    }
                }
            } catch (JSONException unused) {
            } catch (Throwable th) {
                v2.a.a(th, this);
            }
        }
        return null;
    }

    public boolean g(String[] strArr, String[] strArr2) {
        if (!v2.a.b(this)) {
            try {
                for (String str : strArr) {
                    for (String str2 : strArr2) {
                        if (k7.g.x(str2, str)) {
                            return true;
                        }
                    }
                }
            } catch (Throwable th) {
                v2.a.a(th, this);
                return false;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0167  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public float[] h(org.json.JSONObject r18, org.json.JSONArray r19, java.lang.String r20, java.lang.String r21, java.lang.String r22) {
        /*
            Method dump skipped, instruction units count: 369
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: o2.a.h(org.json.JSONObject, org.json.JSONArray, java.lang.String, java.lang.String, java.lang.String):float[]");
    }

    public float[] i(JSONObject jSONObject) {
        if (v2.a.b(this)) {
            return null;
        }
        try {
            float[] fArr = new float[30];
            for (int i6 = 0; i6 < 30; i6++) {
                fArr[i6] = 0.0f;
            }
            String strOptString = jSONObject.optString("text");
            g.e("node.optString(TEXT_KEY)", strOptString);
            String lowerCase = strOptString.toLowerCase();
            g.e("this as java.lang.String).toLowerCase()", lowerCase);
            String strOptString2 = jSONObject.optString("hint");
            g.e("node.optString(HINT_KEY)", strOptString2);
            String lowerCase2 = strOptString2.toLowerCase();
            g.e("this as java.lang.String).toLowerCase()", lowerCase2);
            String strOptString3 = jSONObject.optString("classname");
            g.e("node.optString(CLASS_NAME_KEY)", strOptString3);
            String lowerCase3 = strOptString3.toLowerCase();
            g.e("this as java.lang.String).toLowerCase()", lowerCase3);
            int iOptInt = jSONObject.optInt("inputtype", -1);
            String[] strArr = {lowerCase, lowerCase2};
            if (g(new String[]{"$", "amount", FirebaseAnalytics.Param.PRICE, "total"}, strArr)) {
                fArr[0] = fArr[0] + 1.0f;
            }
            if (g(new String[]{"password", MTCoreConstants.Register.KEY_PW}, strArr)) {
                fArr[1] = fArr[1] + 1.0f;
            }
            if (g(new String[]{"tel", "phone"}, strArr)) {
                fArr[2] = fArr[2] + 1.0f;
            }
            if (g(new String[]{FirebaseAnalytics.Event.SEARCH}, strArr)) {
                fArr[4] = fArr[4] + 1.0f;
            }
            if (iOptInt >= 0) {
                fArr[5] = fArr[5] + 1.0f;
            }
            if (iOptInt == 2 || iOptInt == 3) {
                fArr[6] = fArr[6] + 1.0f;
            }
            if (iOptInt == 32 || Patterns.EMAIL_ADDRESS.matcher(lowerCase).matches()) {
                fArr[7] = fArr[7] + 1.0f;
            }
            if (k7.g.x(lowerCase3, "checkbox")) {
                fArr[8] = fArr[8] + 1.0f;
            }
            if (g(new String[]{"complete", "confirm", "done", "submit"}, new String[]{lowerCase})) {
                fArr[10] = fArr[10] + 1.0f;
            }
            if (k7.g.x(lowerCase3, MTCommonConstants.Network.KEY_RADIO) && k7.g.x(lowerCase3, "button")) {
                fArr[12] = fArr[12] + 1.0f;
            }
            try {
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("childviews");
                int length = jSONArrayOptJSONArray.length();
                for (int i9 = 0; i9 < length; i9++) {
                    JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i9);
                    g.e("childViews.getJSONObject(i)", jSONObject2);
                    n(fArr, i(jSONObject2));
                }
            } catch (JSONException unused) {
            }
            return fArr;
        } catch (Throwable th) {
            v2.a.a(th, this);
            return null;
        }
    }

    public boolean k(JSONObject jSONObject, JSONArray jSONArray) {
        boolean z5;
        if (!v2.a.b(this)) {
            try {
                if (jSONObject.optBoolean("is_interacted")) {
                    return true;
                }
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("childviews");
                int length = jSONArrayOptJSONArray.length();
                int i6 = 0;
                while (true) {
                    if (i6 >= length) {
                        z5 = false;
                        break;
                    }
                    if (jSONArrayOptJSONArray.getJSONObject(i6).optBoolean("is_interacted")) {
                        z5 = true;
                        break;
                    }
                    i6++;
                }
                boolean z8 = z5;
                JSONArray jSONArray2 = new JSONArray();
                if (z5) {
                    int length2 = jSONArrayOptJSONArray.length();
                    for (int i9 = 0; i9 < length2; i9++) {
                        jSONArray.put(jSONArrayOptJSONArray.getJSONObject(i9));
                    }
                    return z8;
                }
                int length3 = jSONArrayOptJSONArray.length();
                for (int i10 = 0; i10 < length3; i10++) {
                    JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i10);
                    g.e("child", jSONObject2);
                    if (k(jSONObject2, jSONArray)) {
                        jSONArray2.put(jSONObject2);
                        z8 = true;
                    }
                }
                jSONObject.put("childviews", jSONArray2);
                return z8;
            } catch (JSONException unused) {
            } catch (Throwable th) {
                v2.a.a(th, this);
            }
        }
        return false;
    }

    public boolean l(String str, String str2) {
        if (v2.a.b(this)) {
            return false;
        }
        try {
            return Pattern.compile(str).matcher(str2).find();
        } catch (Throwable th) {
            v2.a.a(th, this);
            return false;
        }
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.Object, java.util.Map] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object, java.util.Map] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, java.util.Map] */
    public boolean m(String str, String str2, String str3) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        if (!v2.a.b(this)) {
            try {
                JSONObject jSONObject = f4401e;
                String strOptString = null;
                if (jSONObject == null) {
                    g.i("rules");
                    throw null;
                }
                JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("rulesForLanguage");
                if (jSONObjectOptJSONObject3 != null) {
                    ?? r42 = f4398b;
                    if (r42 == 0) {
                        g.i("languageInfo");
                        throw null;
                    }
                    JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject3.optJSONObject((String) r42.get("ENGLISH"));
                    if (jSONObjectOptJSONObject4 != null && (jSONObjectOptJSONObject = jSONObjectOptJSONObject4.optJSONObject("rulesForEvent")) != null) {
                        ?? r12 = f4399c;
                        if (r12 == 0) {
                            g.i("eventInfo");
                            throw null;
                        }
                        JSONObject jSONObjectOptJSONObject5 = jSONObjectOptJSONObject.optJSONObject((String) r12.get(str));
                        if (jSONObjectOptJSONObject5 != null && (jSONObjectOptJSONObject2 = jSONObjectOptJSONObject5.optJSONObject("positiveRules")) != null) {
                            ?? r02 = f4400d;
                            if (r02 == 0) {
                                g.i("textTypeInfo");
                                throw null;
                            }
                            strOptString = jSONObjectOptJSONObject2.optString((String) r02.get(str2));
                        }
                    }
                }
                if (strOptString != null) {
                    return l(strOptString, str3);
                }
            } catch (Throwable th) {
                v2.a.a(th, this);
                return false;
            }
        }
        return false;
    }

    public void n(float[] fArr, float[] fArr2) {
        if (v2.a.b(this)) {
            return;
        }
        try {
            int length = fArr.length;
            for (int i6 = 0; i6 < length; i6++) {
                fArr[i6] = fArr[i6] + fArr2[i6];
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }

    public void o(JSONObject jSONObject, StringBuilder sb, StringBuilder sb2) {
        if (v2.a.b(this)) {
            return;
        }
        try {
            String strOptString = jSONObject.optString("text", "");
            g.e("view.optString(TEXT_KEY, \"\")", strOptString);
            String lowerCase = strOptString.toLowerCase();
            g.e("this as java.lang.String).toLowerCase()", lowerCase);
            String strOptString2 = jSONObject.optString("hint", "");
            g.e("view.optString(HINT_KEY, \"\")", strOptString2);
            String lowerCase2 = strOptString2.toLowerCase();
            g.e("this as java.lang.String).toLowerCase()", lowerCase2);
            if (lowerCase.length() > 0) {
                sb.append(lowerCase);
                sb.append(" ");
            }
            if (lowerCase2.length() > 0) {
                sb2.append(lowerCase2);
                sb2.append(" ");
            }
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("childviews");
            if (jSONArrayOptJSONArray == null) {
                return;
            }
            int length = jSONArrayOptJSONArray.length();
            for (int i6 = 0; i6 < length; i6++) {
                try {
                    JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i6);
                    g.e("currentChildView", jSONObject2);
                    o(jSONObject2, sb, sb2);
                } catch (JSONException unused) {
                }
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }
}
