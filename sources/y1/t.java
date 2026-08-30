package y1;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Log;
import android.util.Patterns;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
import q2.g0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class t {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static SharedPreferences f6152b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final t f6151a = new t();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicBoolean f6153c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ConcurrentHashMap f6154d = new ConcurrentHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ConcurrentHashMap f6155e = new ConcurrentHashMap();

    public final HashMap a() {
        ConcurrentHashMap concurrentHashMap = f6155e;
        if (v2.a.b(this)) {
            return null;
        }
        try {
            HashMap map = new HashMap();
            CopyOnWriteArraySet copyOnWriteArraySet = z1.c.f6392d;
            HashSet hashSet = new HashSet();
            Iterator it = z1.c.a().iterator();
            while (it.hasNext()) {
                hashSet.add(((z1.c) it.next()).c());
            }
            for (String str : concurrentHashMap.keySet()) {
                if (hashSet.contains(str)) {
                    map.put(str, concurrentHashMap.get(str));
                }
            }
            return map;
        } catch (Throwable th) {
            v2.a.a(th, this);
            return null;
        }
    }

    public final synchronized void b() {
        if (v2.a.b(this)) {
            return;
        }
        try {
            AtomicBoolean atomicBoolean = f6153c;
            if (atomicBoolean.get()) {
                return;
            }
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(x1.r.a());
            d7.g.e("getDefaultSharedPreferen….getApplicationContext())", defaultSharedPreferences);
            f6152b = defaultSharedPreferences;
            String string = defaultSharedPreferences.getString("com.facebook.appevents.UserDataStore.userData", "");
            if (string == null) {
                string = "";
            }
            SharedPreferences sharedPreferences = f6152b;
            if (sharedPreferences == null) {
                d7.g.i("sharedPreferences");
                throw null;
            }
            String string2 = sharedPreferences.getString("com.facebook.appevents.UserDataStore.internalUserData", "");
            if (string2 == null) {
                string2 = "";
            }
            f6154d.putAll(g0.E(string));
            f6155e.putAll(g0.E(string2));
            atomicBoolean.set(true);
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }

    public final String c(String str, String str2) {
        String strSubstring;
        if (v2.a.b(this)) {
            return null;
        }
        try {
            int length = str2.length() - 1;
            int i6 = 0;
            boolean z5 = false;
            while (i6 <= length) {
                boolean z8 = d7.g.g(str2.charAt(!z5 ? i6 : length), 32) <= 0;
                if (z5) {
                    if (!z8) {
                        break;
                    }
                    length--;
                } else if (z8) {
                    i6++;
                } else {
                    z5 = true;
                }
            }
            String lowerCase = str2.subSequence(i6, length + 1).toString().toLowerCase();
            d7.g.e("this as java.lang.String).toLowerCase()", lowerCase);
            if ("em".equals(str)) {
                if (!Patterns.EMAIL_ADDRESS.matcher(lowerCase).matches()) {
                    Log.e("t", "Setting email failure: this is not a valid email address");
                    return "";
                }
            } else {
                if ("ph".equals(str)) {
                    Pattern patternCompile = Pattern.compile("[^0-9]");
                    d7.g.e("compile(...)", patternCompile);
                    String strReplaceAll = patternCompile.matcher(lowerCase).replaceAll("");
                    d7.g.e("replaceAll(...)", strReplaceAll);
                    return strReplaceAll;
                }
                if ("ge".equals(str)) {
                    if (lowerCase.length() > 0) {
                        strSubstring = lowerCase.substring(0, 1);
                        d7.g.e("this as java.lang.String…ing(startIndex, endIndex)", strSubstring);
                    } else {
                        strSubstring = "";
                    }
                    if (!"f".equals(strSubstring) && !"m".equals(strSubstring)) {
                        Log.e("t", "Setting gender failure: the supported value for gender is f or m");
                        return "";
                    }
                    return strSubstring;
                }
            }
            return lowerCase;
        } catch (Throwable th) {
            v2.a.a(th, this);
            return null;
        }
    }
}
