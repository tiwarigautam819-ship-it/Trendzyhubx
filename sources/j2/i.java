package j2;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;
import q2.g0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f3368b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i f3367a = new i();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final HashMap f3369c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final HashMap f3370d = new HashMap();

    public static final void d(Bundle bundle) {
        int i6;
        if (v2.a.b(i.class)) {
            return;
        }
        try {
            if (f3368b && bundle != null) {
                ArrayList arrayList = new ArrayList();
                Iterator<String> it = bundle.keySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    String next = it.next();
                    String strValueOf = String.valueOf(bundle.get(next));
                    HashMap map = f3369c;
                    boolean z5 = map.get(next) != null;
                    HashMap map2 = f3370d;
                    i6 = map2.get(next) != null ? 1 : 0;
                    if (z5 || i6 != 0) {
                        i iVar = f3367a;
                        boolean zC = iVar.c(strValueOf, (Set) map.get(next));
                        boolean zB = iVar.b(strValueOf, (Set) map2.get(next));
                        if (!zC && !zB) {
                            d7.g.e("key", next);
                            arrayList.add(next);
                        }
                    }
                }
                int size = arrayList.size();
                while (i6 < size) {
                    Object obj = arrayList.get(i6);
                    i6++;
                    bundle.remove((String) obj);
                }
            }
        } catch (Throwable th) {
            v2.a.a(th, i.class);
        }
    }

    public final void a(JSONArray jSONArray) {
        HashSet hashSet;
        HashMap map = f3369c;
        HashMap map2 = f3370d;
        if (v2.a.b(this) || jSONArray == null) {
            return;
        }
        try {
            if (f3368b) {
                return;
            }
            int length = jSONArray.length();
            for (int i6 = 0; i6 < length; i6++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i6);
                String string = jSONObject.getString("key");
                if (string != null && string.length() != 0) {
                    try {
                        JSONArray jSONArray2 = jSONObject.getJSONArray("value");
                        int length2 = jSONArray2.length();
                        for (int i9 = 0; i9 < length2; i9++) {
                            boolean z5 = jSONArray2.getJSONObject(i9).getBoolean("require_exact_match");
                            JSONArray jSONArray3 = jSONArray2.getJSONObject(i9).getJSONArray("potential_matches");
                            HashSet hashSet2 = null;
                            if (!v2.a.b(this)) {
                                try {
                                    try {
                                        hashSet = g0.f(jSONArray3);
                                        if (hashSet == null) {
                                            hashSet = new HashSet();
                                        }
                                    } catch (Exception unused) {
                                        hashSet = new HashSet();
                                    }
                                    hashSet2 = hashSet;
                                } catch (Throwable th) {
                                    v2.a.a(th, this);
                                }
                            }
                            if (z5) {
                                HashSet hashSet3 = (HashSet) map2.get(string);
                                if (hashSet3 != null) {
                                    hashSet3.addAll(hashSet2);
                                    hashSet2 = hashSet3;
                                }
                                map2.put(string, hashSet2);
                            } else {
                                HashSet hashSet4 = (HashSet) map.get(string);
                                if (hashSet4 != null) {
                                    hashSet4.addAll(hashSet2);
                                    hashSet2 = hashSet4;
                                }
                                map.put(string, hashSet2);
                            }
                        }
                    } catch (Exception unused2) {
                        map2.remove(string);
                        map.remove(string);
                    }
                }
            }
        } catch (Throwable th2) {
            v2.a.a(th2, this);
        }
    }

    public final boolean b(String str, Set set) {
        if (!v2.a.b(this) && set != null) {
            try {
                Set<String> set2 = set;
                if (!(set2 instanceof Collection) || !set2.isEmpty()) {
                    for (String str2 : set2) {
                        Locale locale = Locale.ROOT;
                        String lowerCase = str2.toLowerCase(locale);
                        d7.g.e("this as java.lang.String).toLowerCase(Locale.ROOT)", lowerCase);
                        String lowerCase2 = str.toLowerCase(locale);
                        d7.g.e("this as java.lang.String).toLowerCase(Locale.ROOT)", lowerCase2);
                        if (lowerCase.equals(lowerCase2)) {
                            return true;
                        }
                    }
                }
            } catch (Throwable th) {
                v2.a.a(th, this);
            }
        }
        return false;
    }

    public final boolean c(String str, Set set) {
        if (!v2.a.b(this) && set != null) {
            try {
                Set<String> set2 = set;
                if (!(set2 instanceof Collection) || !set2.isEmpty()) {
                    for (String str2 : set2) {
                        d7.g.f("pattern", str2);
                        Pattern patternCompile = Pattern.compile(str2);
                        d7.g.e("compile(...)", patternCompile);
                        if (patternCompile.matcher(str).matches()) {
                            return true;
                        }
                    }
                }
            } catch (Throwable th) {
                v2.a.a(th, this);
            }
        }
        return false;
    }
}
