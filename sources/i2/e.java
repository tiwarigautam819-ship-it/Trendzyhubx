package i2;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicBoolean f3093a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Boolean f3094b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Boolean f3095c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static b f3096d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static d f3097e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static Intent f3098f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static Object f3099g;
    public static int h;

    public static final void a(Context context, ArrayList arrayList, boolean z5) {
        if (arrayList.isEmpty()) {
            return;
        }
        HashMap map = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayList.get(i6);
            i6++;
            String str = (String) obj;
            try {
                String string = new JSONObject(str).getString("productId");
                d7.g.e("sku", string);
                d7.g.e(FirebaseAnalytics.Event.PURCHASE, str);
                map.put(string, str);
                arrayList2.add(string);
            } catch (JSONException e9) {
                Log.e("i2.e", "Error parsing in-app purchase data.", e9);
            }
        }
        Object obj2 = f3099g;
        o oVar = o.f3157a;
        LinkedHashMap linkedHashMap = null;
        if (!v2.a.b(o.class)) {
            try {
                LinkedHashMap linkedHashMapJ = oVar.j(arrayList2);
                ArrayList arrayList3 = new ArrayList();
                int size2 = arrayList2.size();
                int i9 = 0;
                while (i9 < size2) {
                    Object obj3 = arrayList2.get(i9);
                    i9++;
                    String str2 = (String) obj3;
                    if (!linkedHashMapJ.containsKey(str2)) {
                        arrayList3.add(str2);
                    }
                }
                linkedHashMapJ.putAll(oVar.g(context, arrayList3, obj2, z5));
                linkedHashMap = linkedHashMapJ;
            } catch (Throwable th) {
                v2.a.a(th, o.class);
            }
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            String str3 = (String) entry.getKey();
            String str4 = (String) entry.getValue();
            String str5 = (String) map.get(str3);
            if (str5 != null) {
                k2.k.e(str5, str4, z5, h, false);
            }
        }
    }

    public static final void b(int i6) {
        a1.a.n(i6, "billingClientVersion");
        if (f3094b == null) {
            Boolean boolValueOf = Boolean.valueOf(t.d("com.android.vending.billing.IInAppBillingService$Stub") != null);
            f3094b = boolValueOf;
            if (!boolValueOf.equals(Boolean.FALSE)) {
                f3095c = Boolean.valueOf(t.d("com.android.billingclient.api.ProxyBillingActivity") != null);
                o oVar = o.f3157a;
                if (!v2.a.b(o.class)) {
                    try {
                        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
                        SharedPreferences sharedPreferences = o.f3161e;
                        long j3 = sharedPreferences.getLong("LAST_CLEARED_TIME", 0L);
                        if (j3 == 0) {
                            sharedPreferences.edit().putLong("LAST_CLEARED_TIME", jCurrentTimeMillis).apply();
                        } else if (jCurrentTimeMillis - j3 > 604800) {
                            sharedPreferences.edit().clear().putLong("LAST_CLEARED_TIME", jCurrentTimeMillis).apply();
                        }
                    } catch (Throwable th) {
                        v2.a.a(th, o.class);
                    }
                }
                Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND").setPackage("com.android.vending");
                d7.g.e("Intent(\"com.android.vend…ge(\"com.android.vending\")", intent);
                f3098f = intent;
                f3096d = new b();
                f3097e = new d();
            }
        }
        if (!d7.g.a(f3094b, Boolean.FALSE) && k2.k.d()) {
            h = i6;
            if (f3093a.compareAndSet(false, true)) {
                Context contextA = x1.r.a();
                if (contextA instanceof Application) {
                    Application application = (Application) contextA;
                    d dVar = f3097e;
                    if (dVar == null) {
                        d7.g.i("callbacks");
                        throw null;
                    }
                    application.registerActivityLifecycleCallbacks(dVar);
                    Intent intent2 = f3098f;
                    if (intent2 == null) {
                        d7.g.i("intent");
                        throw null;
                    }
                    b bVar = f3096d;
                    if (bVar != null) {
                        contextA.bindService(intent2, bVar, 1);
                    } else {
                        d7.g.i("serviceConnection");
                        throw null;
                    }
                }
            }
        }
    }
}
