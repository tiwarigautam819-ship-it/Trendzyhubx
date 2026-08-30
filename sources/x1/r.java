package x1;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.util.Log;
import com.google.android.gms.internal.measurement.y4;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final r f5918a = new r();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashSet f5919b = i2.t.i(e0.f5841e);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Executor f5920c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile String f5921d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile String f5922e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static volatile String f5923f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static volatile Boolean f5924g;
    public static Context h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f5925i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final ReentrantLock f5926j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f5927k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static boolean f5928l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static boolean f5929m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static boolean f5930n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final AtomicBoolean f5931o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static volatile String f5932p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static volatile String f5933q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final com.getcapacitor.n f5934r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static boolean f5935s;

    static {
        new AtomicLong(65536L);
        f5925i = 64206;
        f5926j = new ReentrantLock();
        f5927k = "v16.0";
        f5931o = new AtomicBoolean(false);
        f5932p = "instagram.com";
        f5933q = "facebook.com";
        f5934r = new com.getcapacitor.n(28);
    }

    public static final Context a() {
        q2.g.k();
        Context context = h;
        if (context != null) {
            return context;
        }
        d7.g.i("applicationContext");
        throw null;
    }

    public static final String b() {
        q2.g.k();
        String str = f5921d;
        if (str != null) {
            return str;
        }
        throw new l("A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk.");
    }

    public static final Executor c() {
        ReentrantLock reentrantLock = f5926j;
        reentrantLock.lock();
        try {
            if (f5920c == null) {
                f5920c = AsyncTask.THREAD_POOL_EXECUTOR;
            }
            reentrantLock.unlock();
            Executor executor = f5920c;
            if (executor != null) {
                return executor;
            }
            throw new IllegalStateException("Required value was null.");
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public static final String d() {
        String str = f5927k;
        String.format("getGraphApiVersion: %s", Arrays.copyOf(new Object[]{str}, 1));
        return str;
    }

    public static final String e() {
        Date date = a.f5789l;
        a aVarF = h8.b.f();
        String str = aVarF != null ? aVarF.f5801k : null;
        String str2 = f5933q;
        if (str != null) {
            if (str.equals("gaming")) {
                return k7.o.t(str2, "facebook.com", "fb.gg");
            }
            if (str.equals("instagram")) {
                return k7.o.t(str2, "facebook.com", "instagram.com");
            }
        }
        return str2;
    }

    public static final boolean f(Context context) {
        q2.g.k();
        return context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("limitEventUsage", false);
    }

    public static final synchronized boolean g() {
        return f5935s;
    }

    public static final void h(e0 e0Var) {
        synchronized (f5919b) {
        }
    }

    public static final void i(Context context) {
        if (context == null) {
            return;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            d7.g.e("try {\n                co…     return\n            }", applicationInfo);
            if (applicationInfo.metaData == null) {
                return;
            }
            if (f5921d == null) {
                Object obj = applicationInfo.metaData.get("com.facebook.sdk.ApplicationId");
                if (obj instanceof String) {
                    String str = (String) obj;
                    Locale locale = Locale.ROOT;
                    d7.g.e("ROOT", locale);
                    String lowerCase = str.toLowerCase(locale);
                    d7.g.e("this as java.lang.String).toLowerCase(locale)", lowerCase);
                    if (k7.o.v(lowerCase, "fb", false)) {
                        String strSubstring = str.substring(2);
                        d7.g.e("this as java.lang.String).substring(startIndex)", strSubstring);
                        f5921d = strSubstring;
                    } else {
                        f5921d = str;
                    }
                } else if (obj instanceof Number) {
                    throw new l("App Ids cannot be directly placed in the manifest.They must be prefixed by 'fb' or be placed in the string resource file.");
                }
            }
            if (f5922e == null) {
                f5922e = applicationInfo.metaData.getString("com.facebook.sdk.ApplicationName");
            }
            if (f5923f == null) {
                f5923f = applicationInfo.metaData.getString("com.facebook.sdk.ClientToken");
            }
            if (f5925i == 64206) {
                f5925i = applicationInfo.metaData.getInt("com.facebook.sdk.CallbackOffset", 64206);
            }
            if (f5924g == null) {
                f5924g = Boolean.valueOf(applicationInfo.metaData.getBoolean("com.facebook.sdk.CodelessDebugLogEnabled", false));
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final synchronized void j(Context context) {
        ActivityInfo activityInfo;
        boolean zA;
        try {
            if (f5931o.get()) {
                return;
            }
            PackageManager packageManager = context.getPackageManager();
            int i6 = 1;
            if (packageManager != null) {
                try {
                    activityInfo = packageManager.getActivityInfo(new ComponentName(context, "com.facebook.FacebookActivity"), 1);
                } catch (PackageManager.NameNotFoundException unused) {
                    activityInfo = null;
                }
            } else {
                activityInfo = null;
            }
            if (activityInfo == null) {
                Log.w("q2.g", "FacebookActivity is not declared in the AndroidManifest.xml. If you are using the facebook-common module or dependent modules please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info.");
            }
            if (context.checkCallingOrSelfPermission("android.permission.INTERNET") == -1) {
                Log.w("q2.g", "No internet permissions granted for the app, please add <uses-permission android:name=\"android.permission.INTERNET\" /> to your AndroidManifest.xml.");
            }
            Context applicationContext = context.getApplicationContext();
            d7.g.e("applicationContext.applicationContext", applicationContext);
            h = applicationContext;
            t4.b.g(context);
            Context context2 = h;
            if (context2 == null) {
                d7.g.i("applicationContext");
                throw null;
            }
            i(context2);
            String str = f5921d;
            if (str == null || str.length() == 0) {
                throw new l("A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk.");
            }
            String str2 = f5923f;
            if (str2 == null || str2.length() == 0) {
                throw new l("A valid Facebook app client token must be set in the AndroidManifest.xml or set by calling FacebookSdk.setClientToken before initializing the sdk.");
            }
            f5931o.set(true);
            j0 j0Var = j0.f5896a;
            int i9 = 0;
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            if (v2.a.b(j0.class)) {
                zA = false;
            } else {
                try {
                    j0.f5896a.e();
                    zA = j0.f5899d.a();
                } catch (Throwable th) {
                    v2.a.a(th, j0.class);
                    zA = false;
                }
            }
            if (zA) {
                f5935s = true;
            }
            Context context3 = h;
            if (context3 == null) {
                d7.g.i("applicationContext");
                throw null;
            }
            if ((context3 instanceof Application) && j0.c()) {
                Context context4 = h;
                if (context4 == null) {
                    d7.g.i("applicationContext");
                    throw null;
                }
                k2.d.c((Application) context4, f5921d);
            } else {
                i2.p.m();
            }
            k2.i iVarA = k2.i.f3533b.a();
            if (iVarA != null) {
                Context context5 = h;
                if (context5 == null) {
                    d7.g.i("applicationContext");
                    throw null;
                }
                Application application = (Application) context5;
                if (!v2.a.b(iVarA)) {
                    try {
                        application.registerActivityLifecycleCallbacks(new k2.c(i6));
                    } catch (Throwable th2) {
                        v2.a.a(th2, iVarA);
                    }
                }
            }
            q2.w.d();
            q2.b0.k();
            q2.d dVar = q2.d.f4723c;
            Context context6 = h;
            if (context6 == null) {
                d7.g.i("applicationContext");
                throw null;
            }
            q2.g0.s(context6);
            p pVar = new p(i9);
            y4 y4Var = new y4(24, (boolean) (objArr2 == true ? 1 : 0));
            y4Var.f1991c = new CountDownLatch(1);
            c().execute(new FutureTask(new com.google.firebase.messaging.h(y4Var, i6, pVar)));
            q2.q.a(new com.getcapacitor.n(29), q2.o.Instrument);
            q2.q.a(new q(objArr == true ? 1 : 0), q2.o.AppEvents);
            q2.q.a(new q(i6), q2.o.ChromeCustomTabsPrefetching);
            q2.q.a(new q(2), q2.o.IgnoreAppSwitchToLoggedOut);
            q2.q.a(new q(3), q2.o.BypassAppSwitch);
            c().execute(new FutureTask(new p(i6)));
        } catch (Throwable th3) {
            throw th3;
        }
    }
}
