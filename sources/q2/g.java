package q2;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f4735a = {"com.android.chrome", "com.chrome.beta", "com.chrome.dev"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f4736b = 0;

    public static o a(int i6) {
        for (o oVar : o.values()) {
            if (oVar.f4784a == i6) {
                return oVar;
            }
        }
        return o.Unknown;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0011  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0138 A[Catch: all -> 0x00e5, Exception -> 0x00e8, TryCatch #8 {Exception -> 0x00e8, all -> 0x00e5, blocks: (B:40:0x00c4, B:42:0x00d2, B:44:0x00d6, B:51:0x00ec, B:53:0x0106, B:55:0x0113, B:62:0x0132, B:64:0x0138, B:67:0x0144, B:69:0x0148, B:70:0x0151, B:58:0x011d, B:60:0x012a, B:92:0x01b2, B:93:0x01b9), top: B:105:0x00c4 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0144 A[Catch: all -> 0x00e5, Exception -> 0x00e8, TryCatch #8 {Exception -> 0x00e8, all -> 0x00e5, blocks: (B:40:0x00c4, B:42:0x00d2, B:44:0x00d6, B:51:0x00ec, B:53:0x0106, B:55:0x0113, B:62:0x0132, B:64:0x0138, B:67:0x0144, B:69:0x0148, B:70:0x0151, B:58:0x011d, B:60:0x012a, B:92:0x01b2, B:93:0x01b9), top: B:105:0x00c4 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0148 A[Catch: all -> 0x00e5, Exception -> 0x00e8, TryCatch #8 {Exception -> 0x00e8, all -> 0x00e5, blocks: (B:40:0x00c4, B:42:0x00d2, B:44:0x00d6, B:51:0x00ec, B:53:0x0106, B:55:0x0113, B:62:0x0132, B:64:0x0138, B:67:0x0144, B:69:0x0148, B:70:0x0151, B:58:0x011d, B:60:0x012a, B:92:0x01b2, B:93:0x01b9), top: B:105:0x00c4 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0151 A[Catch: all -> 0x00e5, Exception -> 0x00e8, TRY_LEAVE, TryCatch #8 {Exception -> 0x00e8, all -> 0x00e5, blocks: (B:40:0x00c4, B:42:0x00d2, B:44:0x00d6, B:51:0x00ec, B:53:0x0106, B:55:0x0113, B:62:0x0132, B:64:0x0138, B:67:0x0144, B:69:0x0148, B:70:0x0151, B:58:0x011d, B:60:0x012a, B:92:0x01b2, B:93:0x01b9), top: B:105:0x00c4 }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01c7  */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static q2.c b(android.content.Context r17) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 459
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: q2.g.b(android.content.Context):q2.c");
    }

    public static final String c() {
        if (!v2.a.b(g.class)) {
            try {
                Context contextA = x1.r.a();
                List<ResolveInfo> listQueryIntentServices = contextA.getPackageManager().queryIntentServices(new Intent("android.support.customtabs.action.CustomTabsService"), 0);
                d7.g.e("context.packageManager.q…ervices(serviceIntent, 0)", listQueryIntentServices);
                String[] strArr = f4735a;
                HashSet hashSet = new HashSet(s6.r.s(3));
                s6.f.q(strArr, hashSet);
                Iterator<ResolveInfo> it = listQueryIntentServices.iterator();
                while (it.hasNext()) {
                    ServiceInfo serviceInfo = it.next().serviceInfo;
                    if (serviceInfo != null && hashSet.contains(serviceInfo.packageName)) {
                        return serviceInfo.packageName;
                    }
                }
            } catch (Throwable th) {
                v2.a.a(th, g.class);
                return null;
            }
        }
        return null;
    }

    public static final String d() {
        if (v2.a.b(g.class)) {
            return null;
        }
        try {
            return "fbconnect://cct." + x1.r.a().getPackageName();
        } catch (Throwable th) {
            v2.a.a(th, g.class);
            return null;
        }
    }

    public static final String e(String str) {
        if (v2.a.b(g.class)) {
            return null;
        }
        try {
            d7.g.f("developerDefinedRedirectURI", str);
            return f(x1.r.a(), str) ? str : f(x1.r.a(), d()) ? d() : "";
        } catch (Throwable th) {
            v2.a.a(th, g.class);
            return null;
        }
    }

    public static final boolean f(Context context, String str) {
        List<ResolveInfo> listQueryIntentActivities;
        d7.g.f("redirectURI", str);
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.addCategory("android.intent.category.BROWSABLE");
            intent.setData(Uri.parse(str));
            listQueryIntentActivities = packageManager.queryIntentActivities(intent, 64);
        } else {
            listQueryIntentActivities = null;
        }
        if (listQueryIntentActivities != null) {
            Iterator<ResolveInfo> it = listQueryIntentActivities.iterator();
            boolean z5 = false;
            while (it.hasNext()) {
                ActivityInfo activityInfo = it.next().activityInfo;
                if (d7.g.a(activityInfo.name, "com.facebook.CustomTabActivity") && d7.g.a(activityInfo.packageName, context.getPackageName())) {
                    z5 = true;
                }
            }
            return z5;
        }
        return false;
    }

    public static boolean g(Context context) {
        Method methodU = g0.u("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", Context.class);
        if (methodU != null) {
            Object objW = g0.w(null, methodU, context);
            if ((objW instanceof Integer) && objW.equals(0)) {
                return true;
            }
        }
        return false;
    }

    public static final void h(String str, String str2) {
        d7.g.f("arg", str);
        if (str.length() <= 0) {
            throw new IllegalArgumentException(x.g("Argument '", str2, "' cannot be empty").toString());
        }
    }

    public static final void i(x1.b0 b0Var) {
        d7.g.f("container", b0Var);
        Iterator it = b0Var.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new NullPointerException("Container 'requests' cannot contain null values");
            }
        }
        if (b0Var.isEmpty()) {
            throw new IllegalArgumentException("Container 'requests' cannot be empty".toString());
        }
    }

    public static final void j(String str, String str2) {
        if (str == null || str.length() <= 0) {
            throw new IllegalArgumentException(x.g("Argument '", str2, "' cannot be null or empty").toString());
        }
    }

    public static final void k() {
        if (!x1.r.f5931o.get()) {
            throw new x1.s("The SDK has not been initialized, make sure to call FacebookSdk.sdkInitialize() first.");
        }
    }
}
