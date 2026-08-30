package m2;

import android.os.Bundle;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f4248a = new c();

    public static final Bundle a(int i6, String str, List list) {
        String str2;
        if (!v2.a.b(c.class)) {
            try {
                a1.a.n(i6, "eventType");
                Bundle bundle = new Bundle();
                if (i6 == 1) {
                    str2 = "MOBILE_APP_INSTALL";
                } else {
                    if (i6 != 2) {
                        throw null;
                    }
                    str2 = "CUSTOM_APP_EVENTS";
                }
                bundle.putString("event", str2);
                bundle.putString("app_id", str);
                if (2 != i6) {
                    return bundle;
                }
                JSONArray jSONArrayB = f4248a.b(str, list);
                if (jSONArrayB.length() != 0) {
                    bundle.putString("custom_events", jSONArrayB.toString());
                    return bundle;
                }
            } catch (Throwable th) {
                v2.a.a(th, c.class);
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final org.json.JSONArray b(java.lang.String r7, java.util.List r8) {
        /*
            r6 = this;
            boolean r0 = v2.a.b(r6)
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            org.json.JSONArray r0 = new org.json.JSONArray     // Catch: java.lang.Throwable -> L49
            r0.<init>()     // Catch: java.lang.Throwable -> L49
            java.util.Collection r8 = (java.util.Collection) r8     // Catch: java.lang.Throwable -> L49
            java.util.ArrayList r8 = s6.g.x(r8)     // Catch: java.lang.Throwable -> L49
            d2.b.b(r8)     // Catch: java.lang.Throwable -> L49
            boolean r2 = v2.a.b(r6)     // Catch: java.lang.Throwable -> L49
            r3 = 0
            if (r2 == 0) goto L1f
        L1d:
            r7 = r3
            goto L2d
        L1f:
            q2.t r7 = q2.w.k(r7, r3)     // Catch: java.lang.Throwable -> L28
            if (r7 == 0) goto L1d
            boolean r7 = r7.f4810a     // Catch: java.lang.Throwable -> L28
            goto L2d
        L28:
            r7 = move-exception
            v2.a.a(r7, r6)     // Catch: java.lang.Throwable -> L49
            goto L1d
        L2d:
            int r2 = r8.size()     // Catch: java.lang.Throwable -> L49
        L31:
            if (r3 >= r2) goto L4b
            java.lang.Object r4 = r8.get(r3)     // Catch: java.lang.Throwable -> L49
            int r3 = r3 + 1
            y1.e r4 = (y1.e) r4     // Catch: java.lang.Throwable -> L49
            boolean r5 = r4.f6120c     // Catch: java.lang.Throwable -> L49
            if (r5 == 0) goto L43
            if (r5 == 0) goto L31
            if (r7 == 0) goto L31
        L43:
            org.json.JSONObject r4 = r4.f6118a     // Catch: java.lang.Throwable -> L49
            r0.put(r4)     // Catch: java.lang.Throwable -> L49
            goto L31
        L49:
            r7 = move-exception
            goto L4c
        L4b:
            return r0
        L4c:
            v2.a.a(r7, r6)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: m2.c.b(java.lang.String, java.util.List):org.json.JSONArray");
    }
}
