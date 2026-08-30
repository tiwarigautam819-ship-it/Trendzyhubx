package x1;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import java.util.Date;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class p implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5916a;

    public /* synthetic */ p(int i6) {
        this.f5916a = i6;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        a aVarD;
        f0 f0Var;
        a aVarF;
        String string;
        switch (this.f5916a) {
            case 0:
                Context context = r.h;
                if (context != null) {
                    return context.getCacheDir();
                }
                d7.g.i("applicationContext");
                throw null;
            default:
                w wVar = g0.f5865d;
                e eVarD = e.f5830f.d();
                SharedPreferences sharedPreferences = eVarD.f5833b.f5804a;
                if (sharedPreferences.contains("com.facebook.AccessTokenManager.CachedAccessToken") && (string = sharedPreferences.getString("com.facebook.AccessTokenManager.CachedAccessToken", null)) != null) {
                    try {
                        JSONObject jSONObject = new JSONObject(string);
                        Date date = a.f5789l;
                        aVarD = h8.b.d(jSONObject);
                    } catch (JSONException unused) {
                        aVarD = null;
                    }
                    break;
                } else {
                    aVarD = null;
                }
                if (aVarD != null) {
                    eVarD.c(aVarD, false);
                }
                g0 g0VarP = wVar.p();
                String string2 = g0VarP.f5868b.f5804a.getString("com.facebook.ProfileManager.CachedProfile", null);
                if (string2 != null) {
                    try {
                        f0Var = new f0(new JSONObject(string2));
                    } catch (JSONException unused2) {
                        f0Var = null;
                    }
                    break;
                } else {
                    f0Var = null;
                }
                if (f0Var != null) {
                    g0VarP.a(f0Var, false);
                }
                Date date2 = a.f5789l;
                int i6 = 1;
                if (h8.b.i() && wVar.p().f5869c == null && (aVarF = h8.b.f()) != null) {
                    if (h8.b.i()) {
                        q2.g0.q(aVarF.f5796e, new w(i6));
                    } else {
                        wVar.p().a(null, true);
                    }
                }
                Context contextA = r.a();
                String str = r.f5921d;
                String str2 = y1.k.f6128c;
                if (j0.c()) {
                    y1.k kVar = new y1.k(contextA, str);
                    ScheduledThreadPoolExecutor scheduledThreadPoolExecutorB = y1.k.b();
                    if (scheduledThreadPoolExecutorB == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    scheduledThreadPoolExecutorB.execute(new a2.i(contextA, 24, kVar));
                }
                if (!v2.a.b(j0.class)) {
                    try {
                        Context contextA2 = r.a();
                        ApplicationInfo applicationInfo = contextA2.getPackageManager().getApplicationInfo(contextA2.getPackageName(), 128);
                        d7.g.e("ctx.packageManager.getAp…ageManager.GET_META_DATA)", applicationInfo);
                        Bundle bundle = applicationInfo.metaData;
                        if (bundle != null && bundle.getBoolean("com.facebook.sdk.AutoAppLinkEnabled", false)) {
                            y1.k kVar2 = new y1.k(contextA2, (String) null);
                            Bundle bundle2 = new Bundle();
                            if (!q2.g0.x()) {
                                bundle2.putString("SchemeWarning", "You haven't set the Auto App Link URL scheme: fb<YOUR APP ID> in AndroidManifest");
                                Log.w("x1.j0", "You haven't set the Auto App Link URL scheme: fb<YOUR APP ID> in AndroidManifest");
                            }
                            if (j0.c()) {
                                kVar2.d("fb_auto_applink", bundle2);
                            }
                        }
                        break;
                    } catch (PackageManager.NameNotFoundException unused3) {
                    } catch (Throwable th) {
                        v2.a.a(th, j0.class);
                    }
                }
                Context applicationContext = r.a().getApplicationContext();
                d7.g.e("getApplicationContext().applicationContext", applicationContext);
                y1.k kVar3 = new y1.k(applicationContext, (String) null);
                if (!v2.a.b(kVar3)) {
                    try {
                        y1.i.c(1);
                    } catch (Throwable th2) {
                        v2.a.a(th2, kVar3);
                    }
                    break;
                }
                return null;
        }
    }
}
