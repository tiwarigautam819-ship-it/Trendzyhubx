package z7;

import android.app.NotificationManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.webkit.WebView;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import m.f2;
import org.json.JSONArray;
import org.json.JSONObject;
import q2.o;
import q2.q;
import x1.j0;
import x1.r;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f6437a;

    public static String a(int i6, String str, int i9) {
        if (i6 < 0) {
            return a2.c.h("%s (%s) must not be negative", str, Integer.valueOf(i6));
        }
        if (i9 >= 0) {
            return a2.c.h("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i6), Integer.valueOf(i9));
        }
        StringBuilder sb = new StringBuilder(26);
        sb.append("negative size: ");
        sb.append(i9);
        throw new IllegalArgumentException(sb.toString());
    }

    public static void b(int i6, int i9) {
        String strH;
        if (i6 < 0 || i6 >= i9) {
            if (i6 < 0) {
                strH = a2.c.h("%s (%s) must not be negative", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i6));
            } else {
                if (i9 < 0) {
                    StringBuilder sb = new StringBuilder(26);
                    sb.append("negative size: ");
                    sb.append(i9);
                    throw new IllegalArgumentException(sb.toString());
                }
                strH = a2.c.h("%s (%s) must be less than size (%s)", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i6), Integer.valueOf(i9));
            }
            throw new IndexOutOfBoundsException(strH);
        }
    }

    public static void c(String str, Object obj) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static void d(int i6, int i9) {
        if (i6 < 0 || i6 > i9) {
            throw new IndexOutOfBoundsException(a(i6, FirebaseAnalytics.Param.INDEX, i9));
        }
    }

    public static void e(int i6, int i9, int i10) {
        if (i6 < 0 || i9 < i6 || i9 > i10) {
            throw new IndexOutOfBoundsException((i6 < 0 || i6 > i10) ? a(i6, "start index", i10) : (i9 < 0 || i9 > i10) ? a(i9, "end index", i10) : a2.c.h("end index (%s) must not be less than start index (%s)", Integer.valueOf(i9), Integer.valueOf(i6)));
        }
    }

    public static void f(JSONObject jSONObject) {
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(next);
            if (jSONObjectOptJSONObject != null) {
                String strOptString = jSONObjectOptJSONObject.optString("k");
                String strOptString2 = jSONObjectOptJSONObject.optString("v");
                d7.g.e("k", strOptString);
                if (strOptString.length() != 0) {
                    CopyOnWriteArraySet copyOnWriteArraySetA = z1.c.a();
                    d7.g.e("key", next);
                    List listJ = k7.g.J(strOptString, new String[]{","}, 0, 6);
                    d7.g.e("v", strOptString2);
                    copyOnWriteArraySetA.add(new z1.c(next, strOptString2, listJ));
                }
            }
        }
    }

    public static final void g(Throwable th) {
        HashMap map;
        o oVar;
        if (f6437a) {
            HashSet hashSet = new HashSet();
            StackTraceElement[] stackTrace = th.getStackTrace();
            d7.g.e("e.stackTrace", stackTrace);
            for (StackTraceElement stackTraceElement : stackTrace) {
                String className = stackTraceElement.getClassName();
                d7.g.e("it.className", className);
                synchronized (q.f4799a) {
                    map = q.f4800b;
                    if (map.isEmpty()) {
                        map.put(o.AAM, new String[]{"com.facebook.appevents.aam."});
                        map.put(o.CodelessEvents, new String[]{"com.facebook.appevents.codeless."});
                        map.put(o.CloudBridge, new String[]{"com.facebook.appevents.cloudbridge."});
                        map.put(o.ErrorReport, new String[]{"com.facebook.internal.instrument.errorreport."});
                        map.put(o.AnrReport, new String[]{"com.facebook.internal.instrument.anrreport."});
                        map.put(o.PrivacyProtection, new String[]{"com.facebook.appevents.ml."});
                        map.put(o.SuggestedEvents, new String[]{"com.facebook.appevents.suggestedevents."});
                        map.put(o.RestrictiveDataFiltering, new String[]{"com.facebook.appevents.restrictivedatafilter.RestrictiveDataManager"});
                        map.put(o.IntelligentIntegrity, new String[]{"com.facebook.appevents.integrity.IntegrityManager"});
                        map.put(o.ProtectedMode, new String[]{"com.facebook.appevents.integrity.ProtectedModeManager"});
                        map.put(o.MACARuleMatching, new String[]{"com.facebook.appevents.integrity.MACARuleMatchingManager"});
                        map.put(o.BlocklistEvents, new String[]{"com.facebook.appevents.integrity.BlocklistEventsManager"});
                        map.put(o.FilterRedactedEvents, new String[]{"com.facebook.appevents.integrity.RedactedEventsManager"});
                        map.put(o.FilterSensitiveParams, new String[]{"com.facebook.appevents.integrity.SensitiveParamsManager"});
                        map.put(o.EventDeactivation, new String[]{"com.facebook.appevents.eventdeactivation."});
                        map.put(o.OnDeviceEventProcessing, new String[]{"com.facebook.appevents.ondeviceprocessing."});
                        map.put(o.IapLogging, new String[]{"com.facebook.appevents.iap."});
                        map.put(o.Monitoring, new String[]{"com.facebook.internal.logging.monitor"});
                        map.put(o.GPSARATriggers, new String[]{"com.facebook.appevents.gps.ara.GpsARAManager"});
                        map.put(o.GPSPACAProcessing, new String[]{"com.facebook.appevents.gps.pa.PACustomAudienceClient"});
                        map.put(o.GPSTopicsObservation, new String[]{"com.facebook.appevents.gps.topics.GpsTopicsManager"});
                    }
                }
                Iterator it = map.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        oVar = o.Unknown;
                        break;
                    }
                    Map.Entry entry = (Map.Entry) it.next();
                    oVar = (o) entry.getKey();
                    for (String str : (String[]) entry.getValue()) {
                        if (k7.o.v(className, str, false)) {
                            break;
                        }
                    }
                }
                if (oVar != o.Unknown) {
                    d7.g.f("feature", oVar);
                    r.a().getSharedPreferences("com.facebook.internal.FEATURE_MANAGER", 0).edit().putString("FBSDKFeature" + oVar, "18.1.3").apply();
                    hashSet.add(oVar.toString());
                }
            }
            r rVar = r.f5918a;
            if (!j0.c() || hashSet.isEmpty()) {
                return;
            }
            JSONArray jSONArray = new JSONArray((Collection) hashSet);
            s2.d dVar = new s2.d();
            dVar.f5215b = s2.b.f5207b;
            Long lValueOf = Long.valueOf(System.currentTimeMillis() / ((long) 1000));
            dVar.f5220g = lValueOf;
            dVar.f5216c = jSONArray;
            StringBuffer stringBuffer = new StringBuffer("analysis_log_");
            stringBuffer.append(String.valueOf(lValueOf));
            stringBuffer.append(".json");
            String string = stringBuffer.toString();
            d7.g.e("StringBuffer()\n         …)\n            .toString()", string);
            dVar.f5214a = string;
            dVar.b();
        }
    }

    public static InvocationHandler h() {
        ClassLoader classLoader;
        if (Build.VERSION.SDK_INT >= 28) {
            classLoader = WebView.getWebViewClassLoader();
        } else {
            try {
                Method declaredMethod = WebView.class.getDeclaredMethod("getFactory", null);
                declaredMethod.setAccessible(true);
                classLoader = declaredMethod.invoke(null, null).getClass().getClassLoader();
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e9) {
                throw new RuntimeException(e9);
            }
        }
        return (InvocationHandler) Class.forName("org.chromium.support_lib_glue.SupportLibReflectionUtil", false, classLoader).getDeclaredMethod("createWebViewProviderFactory", null).invoke(null, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0046, code lost:
    
        if (r5.f871c == r8.hashCode()) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.content.res.ColorStateList i(android.content.Context r8, int r9) {
        /*
            android.content.res.Resources r0 = r8.getResources()
            android.content.res.Resources$Theme r8 = r8.getTheme()
            b0.j r1 = new b0.j
            r1.<init>(r0, r8)
            java.lang.Object r2 = b0.l.f876c
            monitor-enter(r2)
            java.util.WeakHashMap r3 = b0.l.f875b     // Catch: java.lang.Throwable -> L3c
            java.lang.Object r3 = r3.get(r1)     // Catch: java.lang.Throwable -> L3c
            android.util.SparseArray r3 = (android.util.SparseArray) r3     // Catch: java.lang.Throwable -> L3c
            r4 = 0
            if (r3 == 0) goto L4f
            int r5 = r3.size()     // Catch: java.lang.Throwable -> L3c
            if (r5 <= 0) goto L4f
            java.lang.Object r5 = r3.get(r9)     // Catch: java.lang.Throwable -> L3c
            b0.i r5 = (b0.i) r5     // Catch: java.lang.Throwable -> L3c
            if (r5 == 0) goto L4f
            android.content.res.Configuration r6 = r5.f870b     // Catch: java.lang.Throwable -> L3c
            android.content.res.Configuration r7 = r0.getConfiguration()     // Catch: java.lang.Throwable -> L3c
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Throwable -> L3c
            if (r6 == 0) goto L4c
            if (r8 != 0) goto L3e
            int r6 = r5.f871c     // Catch: java.lang.Throwable -> L3c
            if (r6 == 0) goto L48
            goto L3e
        L3c:
            r8 = move-exception
            goto L91
        L3e:
            if (r8 == 0) goto L4c
            int r6 = r5.f871c     // Catch: java.lang.Throwable -> L3c
            int r7 = r8.hashCode()     // Catch: java.lang.Throwable -> L3c
            if (r6 != r7) goto L4c
        L48:
            android.content.res.ColorStateList r3 = r5.f869a     // Catch: java.lang.Throwable -> L3c
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3c
            goto L51
        L4c:
            r3.remove(r9)     // Catch: java.lang.Throwable -> L3c
        L4f:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3c
            r3 = r4
        L51:
            if (r3 == 0) goto L54
            return r3
        L54:
            java.lang.ThreadLocal r2 = b0.l.f874a
            java.lang.Object r3 = r2.get()
            android.util.TypedValue r3 = (android.util.TypedValue) r3
            if (r3 != 0) goto L66
            android.util.TypedValue r3 = new android.util.TypedValue
            r3.<init>()
            r2.set(r3)
        L66:
            r2 = 1
            r0.getValue(r9, r3, r2)
            int r2 = r3.type
            r3 = 28
            if (r2 < r3) goto L75
            r3 = 31
            if (r2 > r3) goto L75
            goto L86
        L75:
            android.content.res.XmlResourceParser r2 = r0.getXml(r9)
            android.content.res.ColorStateList r4 = b0.c.a(r0, r2, r8)     // Catch: java.lang.Exception -> L7e
            goto L86
        L7e:
            r2 = move-exception
            java.lang.String r3 = "ResourcesCompat"
            java.lang.String r5 = "Failed to inflate ColorStateList, leaving it to the framework"
            android.util.Log.w(r3, r5, r2)
        L86:
            if (r4 == 0) goto L8c
            b0.l.a(r1, r9, r4, r8)
            goto L90
        L8c:
            android.content.res.ColorStateList r4 = r0.getColorStateList(r9, r8)
        L90:
            return r4
        L91:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3c
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: z7.l.i(android.content.Context, int):android.content.res.ColorStateList");
    }

    public static Drawable j(Context context, int i6) {
        return f2.d().f(context, i6);
    }

    public static void k(final Context context) {
        Context applicationContext;
        PackageManager packageManager;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        if (a2.c.f(context).getBoolean("proxy_notification_initialized", false)) {
            return;
        }
        try {
            applicationContext = context.getApplicationContext();
            packageManager = applicationContext.getPackageManager();
        } catch (PackageManager.NameNotFoundException unused) {
        }
        final boolean z5 = (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(applicationContext.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_messaging_notification_delegation_enabled")) ? true : applicationInfo.metaData.getBoolean("firebase_messaging_notification_delegation_enabled");
        if (Build.VERSION.SDK_INT < 29) {
            j7.g.l(null);
        } else {
            final p4.j jVar = new p4.j();
            new Runnable() { // from class: com.google.firebase.messaging.u
                @Override // java.lang.Runnable
                public final void run() {
                    Context context2 = context;
                    p4.j jVar2 = jVar;
                    try {
                        if (!(Binder.getCallingUid() == context2.getApplicationInfo().uid)) {
                            Log.e("FirebaseMessaging", "error configuring notification delegate for package " + context2.getPackageName());
                            return;
                        }
                        SharedPreferences.Editor editorEdit = a2.c.f(context2).edit();
                        editorEdit.putBoolean("proxy_notification_initialized", true);
                        editorEdit.apply();
                        NotificationManager notificationManager = (NotificationManager) context2.getSystemService(NotificationManager.class);
                        if (z5) {
                            notificationManager.setNotificationDelegate("com.google.android.gms");
                        } else if ("com.google.android.gms".equals(notificationManager.getNotificationDelegate())) {
                            notificationManager.setNotificationDelegate(null);
                        }
                    } finally {
                        jVar2.c(null);
                    }
                }
            }.run();
        }
    }
}
