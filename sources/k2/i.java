package k2;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final o f3533b = new o();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile i f3534c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final r6.g f3535a = new r6.g(h.f3532b);

    public final SharedPreferences a() {
        if (v2.a.b(this)) {
            return null;
        }
        try {
            Object value = this.f3535a.getValue();
            d7.g.e("<get-preferences>(...)", value);
            return (SharedPreferences) value;
        } catch (Throwable th) {
            v2.a.a(th, this);
            return null;
        }
    }

    public final void b(Activity activity) {
        if (v2.a.b(this)) {
            return;
        }
        try {
            Uri data = activity.getIntent().getData();
            if (data == null) {
                return;
            }
            Intent intent = activity.getIntent();
            d7.g.e("activity.intent", intent);
            c(data, intent);
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0012  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void c(android.net.Uri r5, android.content.Intent r6) {
        /*
            r4 = this;
            boolean r0 = v2.a.b(r4)
            if (r0 == 0) goto L7
            goto L61
        L7:
            boolean r0 = v2.a.b(r4)     // Catch: java.lang.Throwable -> L5f
            java.lang.String r1 = "al_applink_data"
            r2 = 0
            java.lang.String r3 = "campaign_ids"
            if (r0 == 0) goto L14
        L12:
            r5 = r2
            goto L33
        L14:
            java.lang.String r5 = r5.getQueryParameter(r1)     // Catch: java.lang.Throwable -> L25
            if (r5 != 0) goto L1b
            goto L12
        L1b:
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L25 java.lang.Exception -> L27
            r0.<init>(r5)     // Catch: java.lang.Throwable -> L25 java.lang.Exception -> L27
            java.lang.String r5 = r0.getString(r3)     // Catch: java.lang.Throwable -> L25 java.lang.Exception -> L27
            goto L33
        L25:
            r5 = move-exception
            goto L2f
        L27:
            java.lang.String r5 = "AppLinkManager"
            java.lang.String r0 = "Fail to parse Applink data from Uri"
            android.util.Log.d(r5, r0)     // Catch: java.lang.Throwable -> L25
            goto L12
        L2f:
            v2.a.a(r5, r4)     // Catch: java.lang.Throwable -> L5f
            goto L12
        L33:
            if (r5 != 0) goto L4d
            boolean r5 = v2.a.b(r4)     // Catch: java.lang.Throwable -> L5f
            if (r5 == 0) goto L3c
            goto L4c
        L3c:
            android.os.Bundle r5 = r6.getBundleExtra(r1)     // Catch: java.lang.Throwable -> L48
            if (r5 != 0) goto L43
            goto L4c
        L43:
            java.lang.String r2 = r5.getString(r3)     // Catch: java.lang.Throwable -> L48
            goto L4c
        L48:
            r5 = move-exception
            v2.a.a(r5, r4)     // Catch: java.lang.Throwable -> L5f
        L4c:
            r5 = r2
        L4d:
            if (r5 == 0) goto L61
            android.content.SharedPreferences r6 = r4.a()     // Catch: java.lang.Throwable -> L5f
            android.content.SharedPreferences$Editor r6 = r6.edit()     // Catch: java.lang.Throwable -> L5f
            android.content.SharedPreferences$Editor r5 = r6.putString(r3, r5)     // Catch: java.lang.Throwable -> L5f
            r5.apply()     // Catch: java.lang.Throwable -> L5f
            goto L61
        L5f:
            r5 = move-exception
            goto L62
        L61:
            return
        L62:
            v2.a.a(r5, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k2.i.c(android.net.Uri, android.content.Intent):void");
    }
}
