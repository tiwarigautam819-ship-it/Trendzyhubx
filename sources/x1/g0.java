package x1;

import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final w f5865d = new w(2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile g0 f5866e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final y0.b f5867a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f5868b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public f0 f5869c;

    public g0(y0.b bVar, b bVar2) {
        this.f5867a = bVar;
        this.f5868b = bVar2;
    }

    public final void a(f0 f0Var, boolean z5) {
        SharedPreferences sharedPreferences = this.f5868b.f5804a;
        f0 f0Var2 = this.f5869c;
        this.f5869c = f0Var;
        if (z5) {
            if (f0Var != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", f0Var.f5853a);
                    jSONObject.put("first_name", f0Var.f5854b);
                    jSONObject.put("middle_name", f0Var.f5855c);
                    jSONObject.put("last_name", f0Var.f5856d);
                    jSONObject.put("name", f0Var.f5857e);
                    Uri uri = f0Var.f5858f;
                    if (uri != null) {
                        jSONObject.put("link_uri", uri.toString());
                    }
                    Uri uri2 = f0Var.f5859g;
                    if (uri2 != null) {
                        jSONObject.put("picture_uri", uri2.toString());
                    }
                } catch (JSONException unused) {
                    jSONObject = null;
                }
                if (jSONObject != null) {
                    sharedPreferences.edit().putString("com.facebook.ProfileManager.CachedProfile", jSONObject.toString()).apply();
                }
            } else {
                sharedPreferences.edit().remove("com.facebook.ProfileManager.CachedProfile").apply();
            }
        }
        if (f0Var2 == null ? f0Var == null : f0Var2.equals(f0Var)) {
            return;
        }
        Intent intent = new Intent("com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_PROFILE", f0Var2);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_PROFILE", f0Var);
        this.f5867a.c(intent);
    }
}
