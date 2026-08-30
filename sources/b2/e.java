package b2;

import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
import utils.ResistBanUtil;
import x1.d0;
import x1.r;
import x1.z;
import y1.t;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f910a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f911b;

    public /* synthetic */ e(String str, int i6) {
        this.f910a = i6;
        this.f911b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Locale locale = null;
        switch (this.f910a) {
            case 0:
                String str = this.f911b;
                if (v2.a.b(f.class)) {
                    return;
                }
                try {
                    Bundle bundle = new Bundle();
                    q2.c cVarB = q2.g.b(r.a());
                    JSONArray jSONArray = new JSONArray();
                    String str2 = Build.MODEL;
                    if (str2 == null) {
                        str2 = "";
                    }
                    jSONArray.put(str2);
                    if ((cVarB != null ? cVarB.a() : null) != null) {
                        jSONArray.put(cVarB.a());
                    } else {
                        jSONArray.put("");
                    }
                    jSONArray.put("0");
                    jSONArray.put(k2.e.j() ? "1" : "0");
                    try {
                        locale = r.a().getResources().getConfiguration().locale;
                        break;
                    } catch (Exception unused) {
                    }
                    if (locale == null) {
                        locale = Locale.getDefault();
                        d7.g.e("getDefault()", locale);
                    }
                    jSONArray.put(locale.getLanguage() + '_' + locale.getCountry());
                    String string = jSONArray.toString();
                    d7.g.e("extInfoArray.toString()", string);
                    bundle.putString("device_session_id", f.a());
                    bundle.putString("extinfo", string);
                    String str3 = z.f5942j;
                    boolean z5 = true;
                    JSONObject jSONObject = new z(null, String.format(Locale.US, "%s/app_indexing_session", Arrays.copyOf(new Object[]{str}, 1)), bundle, d0.f5828b, null).c().f5817b;
                    AtomicBoolean atomicBoolean = f.f918g;
                    if (jSONObject == null || !jSONObject.optBoolean("is_app_indexing_enabled", false)) {
                        z5 = false;
                    }
                    atomicBoolean.set(z5);
                    if (atomicBoolean.get()) {
                        n nVar = f.f915d;
                        if (nVar != null) {
                            nVar.c();
                        }
                    } else {
                        f.f916e = null;
                    }
                    f.h = false;
                    return;
                } catch (Throwable th) {
                    v2.a.a(th, f.class);
                    return;
                }
            case 1:
                ResistBanUtil.lambda$getUsefulUrl$1(this.f911b, null);
                return;
            case 2:
                ResistBanUtil.lambda$postUsefulUrl$0(this.f911b, null);
                return;
            default:
                String str4 = this.f911b;
                if (v2.a.b(t.class)) {
                    return;
                }
                try {
                    if (!t.f6153c.get()) {
                        t.f6151a.b();
                    }
                    SharedPreferences sharedPreferences = t.f6152b;
                    if (sharedPreferences != null) {
                        sharedPreferences.edit().putString("com.facebook.appevents.UserDataStore.internalUserData", str4).apply();
                        return;
                    } else {
                        d7.g.i("sharedPreferences");
                        throw null;
                    }
                } catch (Throwable th2) {
                    v2.a.a(th2, t.class);
                    return;
                }
        }
    }
}
