package h5;

import android.net.TrafficStats;
import android.text.TextUtils;
import android.util.Log;
import androidx.fragment.app.m1;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.y4;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
import p4.q;
import v4.l;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements e {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final Object f2985m = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final t4.g f2986a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final j5.c f2987b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final y4 f2988c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final k f2989d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final l f2990e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final i f2991f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Object f2992g;
    public final ExecutorService h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final w4.i f2993i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f2994j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final HashSet f2995k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ArrayList f2996l;

    static {
        new AtomicInteger(1);
    }

    public d(t4.g gVar, g5.a aVar, ExecutorService executorService, w4.i iVar) {
        gVar.a();
        j5.c cVar = new j5.c(gVar.f5320a, aVar);
        y4 y4Var = new y4((Object) gVar, 16, false);
        if (e5.e.f2402b == null) {
            e5.e.f2402b = new e5.e(27);
        }
        e5.e eVar = e5.e.f2402b;
        if (k.f3004d == null) {
            k.f3004d = new k(eVar);
        }
        k kVar = k.f3004d;
        l lVar = new l(new b(0, gVar));
        i iVar2 = new i();
        this.f2992g = new Object();
        this.f2995k = new HashSet();
        this.f2996l = new ArrayList();
        this.f2986a = gVar;
        this.f2987b = cVar;
        this.f2988c = y4Var;
        this.f2989d = kVar;
        this.f2990e = lVar;
        this.f2991f = iVar2;
        this.h = executorService;
        this.f2993i = iVar;
    }

    public final void a(j jVar) {
        synchronized (this.f2992g) {
            this.f2996l.add(jVar);
        }
    }

    /* JADX WARN: Finally extract failed */
    public final void b() {
        i5.b bVarD;
        synchronized (f2985m) {
            try {
                t4.g gVar = this.f2986a;
                gVar.a();
                y4 y4VarD = y4.d(gVar.f5320a);
                try {
                    bVarD = this.f2988c.D();
                    int i6 = bVarD.f3212b;
                    boolean z5 = true;
                    if (i6 != 2 && i6 != 1) {
                        z5 = false;
                    }
                    if (z5) {
                        String strH = h(bVarD);
                        y4 y4Var = this.f2988c;
                        i5.a aVarA = bVarD.a();
                        aVarA.f3205b = strH;
                        aVarA.f3204a = 3;
                        bVarD = aVarA.i();
                        y4Var.B(bVarD);
                    }
                    if (y4VarD != null) {
                        y4VarD.E();
                    }
                } catch (Throwable th) {
                    if (y4VarD != null) {
                        y4VarD.E();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        k(bVarD);
        this.f2993i.execute(new c(this, 1));
    }

    public final i5.b c(i5.b bVar) throws f {
        int responseCode;
        j5.b bVarF;
        t4.g gVar = this.f2986a;
        gVar.a();
        String str = gVar.f5322c.f5333a;
        String str2 = bVar.f3211a;
        gVar.a();
        String str3 = gVar.f5322c.f5339g;
        String str4 = bVar.f3214d;
        j5.c cVar = this.f2987b;
        j5.d dVar = cVar.f3385c;
        if (!dVar.b()) {
            throw new f("Firebase Installations Service is unavailable. Please try again later.");
        }
        URL urlA = j5.c.a("projects/" + str3 + "/installations/" + str2 + "/authTokens:generate");
        for (int i6 = 0; i6 <= 1; i6++) {
            TrafficStats.setThreadStatsTag(32771);
            HttpURLConnection httpURLConnectionC = cVar.c(urlA, str);
            try {
                try {
                    httpURLConnectionC.setRequestMethod("POST");
                    httpURLConnectionC.addRequestProperty("Authorization", "FIS_v2 " + str4);
                    httpURLConnectionC.setDoOutput(true);
                    j5.c.h(httpURLConnectionC);
                    responseCode = httpURLConnectionC.getResponseCode();
                    dVar.d(responseCode);
                } finally {
                    httpURLConnectionC.disconnect();
                    TrafficStats.clearThreadStatsTag();
                }
            } catch (IOException | AssertionError unused) {
            }
            if (responseCode >= 200 && responseCode < 300) {
                bVarF = j5.c.f(httpURLConnectionC);
            } else {
                j5.c.b(httpURLConnectionC, null, str, str3);
                if (responseCode == 401 || responseCode == 404) {
                    b0.d dVarA = j5.b.a();
                    dVarA.f854b = 3;
                    bVarF = dVarA.b();
                } else {
                    if (responseCode == 429) {
                        throw new f("Firebase servers have received too many requests from this client in a short period of time. Please try again later.");
                    }
                    if (responseCode < 500 || responseCode >= 600) {
                        Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
                        b0.d dVarA2 = j5.b.a();
                        dVarA2.f854b = 2;
                        bVarF = dVarA2.b();
                    }
                }
            }
            int iE = m1.e(bVarF.f3380c);
            if (iE != 0) {
                if (iE == 1) {
                    i5.a aVarA = bVar.a();
                    aVarA.f3208e = "BAD CONFIG";
                    aVarA.f3204a = 5;
                    return aVarA.i();
                }
                if (iE != 2) {
                    throw new f("Firebase Installations Service is unavailable. Please try again later.");
                }
                l(null);
                i5.a aVarA2 = bVar.a();
                aVarA2.f3204a = 2;
                return aVarA2.i();
            }
            String str5 = bVarF.f3378a;
            long j3 = bVarF.f3379b;
            k kVar = this.f2989d;
            kVar.getClass();
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            kVar.f3005a.getClass();
            long seconds = timeUnit.toSeconds(System.currentTimeMillis());
            i5.a aVarA3 = bVar.a();
            aVarA3.f3206c = str5;
            aVarA3.f3209f = Long.valueOf(j3);
            aVarA3.f3210g = Long.valueOf(seconds);
            return aVarA3.i();
        }
        throw new f("Firebase Installations Service is unavailable. Please try again later.");
    }

    public final q d() {
        String str;
        g();
        synchronized (this) {
            str = this.f2994j;
        }
        if (str != null) {
            return j7.g.l(str);
        }
        p4.j jVar = new p4.j();
        a(new h(jVar));
        q qVar = jVar.f4641a;
        this.h.execute(new c(this, 0));
        return qVar;
    }

    public final q e() {
        g();
        p4.j jVar = new p4.j();
        a(new g(this.f2989d, jVar));
        this.h.execute(new c(this, 2));
        return jVar.f4641a;
    }

    /* JADX WARN: Finally extract failed */
    public final void f(i5.b bVar) {
        synchronized (f2985m) {
            try {
                t4.g gVar = this.f2986a;
                gVar.a();
                y4 y4VarD = y4.d(gVar.f5320a);
                try {
                    this.f2988c.B(bVar);
                    if (y4VarD != null) {
                        y4VarD.E();
                    }
                } catch (Throwable th) {
                    if (y4VarD != null) {
                        y4VarD.E();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void g() {
        t4.g gVar = this.f2986a;
        gVar.a();
        d0.e(gVar.f5322c.f5334b, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        gVar.a();
        d0.e(gVar.f5322c.f5339g, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        gVar.a();
        d0.e(gVar.f5322c.f5333a, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        gVar.a();
        String str = gVar.f5322c.f5334b;
        Pattern pattern = k.f3003c;
        if (!str.contains(":")) {
            throw new IllegalArgumentException("Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        }
        gVar.a();
        if (!k.f3003c.matcher(gVar.f5322c.f5333a).matches()) {
            throw new IllegalArgumentException("Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String h(i5.b r3) {
        /*
            r2 = this;
            t4.g r0 = r2.f2986a
            r0.a()
            java.lang.String r0 = r0.f5321b
            java.lang.String r1 = "CHIME_ANDROID_SDK"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L1e
            t4.g r0 = r2.f2986a
            java.lang.String r1 = "[DEFAULT]"
            r0.a()
            java.lang.String r0 = r0.f5321b
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L50
        L1e:
            int r3 = r3.f3212b
            r0 = 1
            if (r3 != r0) goto L50
            v4.l r3 = r2.f2990e
            java.lang.Object r3 = r3.get()
            i5.c r3 = (i5.c) r3
            android.content.SharedPreferences r0 = r3.f3219a
            monitor-enter(r0)
            java.lang.String r1 = r3.a()     // Catch: java.lang.Throwable -> L36
            if (r1 == 0) goto L38
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L36
            goto L3d
        L36:
            r3 = move-exception
            goto L4e
        L38:
            java.lang.String r1 = r3.b()     // Catch: java.lang.Throwable -> L36
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L36
        L3d:
            boolean r3 = android.text.TextUtils.isEmpty(r1)
            if (r3 == 0) goto L4d
            h5.i r3 = r2.f2991f
            r3.getClass()
            java.lang.String r3 = h5.i.a()
            return r3
        L4d:
            return r1
        L4e:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L36
            throw r3
        L50:
            h5.i r3 = r2.f2991f
            r3.getClass()
            java.lang.String r3 = h5.i.a()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: h5.d.h(i5.b):java.lang.String");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [j5.c] */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [j5.a] */
    public final i5.b i(i5.b bVar) throws f {
        int responseCode;
        String str = bVar.f3211a;
        String string = null;
        if (str != null && str.length() == 11) {
            i5.c cVar = (i5.c) this.f2990e.get();
            synchronized (cVar.f3219a) {
                try {
                    String[] strArr = i5.c.f3218c;
                    int i6 = 0;
                    while (true) {
                        if (i6 < 4) {
                            String str2 = strArr[i6];
                            String string2 = cVar.f3219a.getString("|T|" + cVar.f3220b + "|" + str2, null);
                            if (string2 == null || string2.isEmpty()) {
                                i6++;
                            } else if (string2.startsWith("{")) {
                                try {
                                    string = new JSONObject(string2).getString("token");
                                } catch (JSONException unused) {
                                }
                            } else {
                                string = string2;
                            }
                        }
                    }
                } finally {
                }
            }
        }
        j5.c cVar2 = this.f2987b;
        t4.g gVar = this.f2986a;
        gVar.a();
        String str3 = gVar.f5322c.f5333a;
        String str4 = bVar.f3211a;
        t4.g gVar2 = this.f2986a;
        gVar2.a();
        String str5 = gVar2.f5322c.f5339g;
        t4.g gVar3 = this.f2986a;
        gVar3.a();
        String str6 = gVar3.f5322c.f5334b;
        j5.d dVar = cVar2.f3385c;
        if (!dVar.b()) {
            throw new f("Firebase Installations Service is unavailable. Please try again later.");
        }
        URL urlA = j5.c.a("projects/" + str5 + "/installations");
        int i9 = 0;
        j5.a aVar = cVar2;
        while (i9 <= 1) {
            TrafficStats.setThreadStatsTag(32769);
            HttpURLConnection httpURLConnectionC = aVar.c(urlA, str3);
            try {
                try {
                    httpURLConnectionC.setRequestMethod("POST");
                    httpURLConnectionC.setDoOutput(true);
                    if (string != null) {
                        httpURLConnectionC.addRequestProperty("x-goog-fis-android-iid-migration-auth", string);
                    }
                    j5.c.g(httpURLConnectionC, str4, str6);
                    responseCode = httpURLConnectionC.getResponseCode();
                    dVar.d(responseCode);
                } catch (IOException | AssertionError unused2) {
                }
                if (responseCode >= 200 && responseCode < 300) {
                    j5.a aVarE = j5.c.e(httpURLConnectionC);
                    httpURLConnectionC.disconnect();
                    TrafficStats.clearThreadStatsTag();
                    aVar = aVarE;
                } else {
                    try {
                        j5.c.b(httpURLConnectionC, str6, str3, str5);
                    } catch (IOException | AssertionError unused3) {
                        httpURLConnectionC.disconnect();
                        TrafficStats.clearThreadStatsTag();
                    }
                    if (responseCode == 429) {
                        throw new f("Firebase servers have received too many requests from this client in a short period of time. Please try again later.");
                    }
                    if (responseCode < 500 || responseCode >= 600) {
                        Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
                        j5.a aVar2 = new j5.a(null, null, null, null, 2);
                        httpURLConnectionC.disconnect();
                        TrafficStats.clearThreadStatsTag();
                        aVar = aVar2;
                    } else {
                        httpURLConnectionC.disconnect();
                        TrafficStats.clearThreadStatsTag();
                        i9++;
                        aVar = aVar;
                    }
                    httpURLConnectionC.disconnect();
                    TrafficStats.clearThreadStatsTag();
                    i9++;
                    aVar = aVar;
                }
                int iE = m1.e(aVar.f3377e);
                if (iE != 0) {
                    if (iE != 1) {
                        throw new f("Firebase Installations Service is unavailable. Please try again later.");
                    }
                    i5.a aVarA = bVar.a();
                    aVarA.f3208e = "BAD CONFIG";
                    aVarA.f3204a = 5;
                    return aVarA.i();
                }
                String str7 = aVar.f3374b;
                String str8 = aVar.f3375c;
                k kVar = this.f2989d;
                kVar.getClass();
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                kVar.f3005a.getClass();
                long seconds = timeUnit.toSeconds(System.currentTimeMillis());
                j5.b bVar2 = aVar.f3376d;
                String str9 = bVar2.f3378a;
                long j3 = bVar2.f3379b;
                i5.a aVarA2 = bVar.a();
                aVarA2.f3205b = str7;
                aVarA2.f3204a = 4;
                aVarA2.f3206c = str9;
                aVarA2.f3207d = str8;
                aVarA2.f3209f = Long.valueOf(j3);
                aVarA2.f3210g = Long.valueOf(seconds);
                return aVarA2.i();
            } finally {
                httpURLConnectionC.disconnect();
                TrafficStats.clearThreadStatsTag();
            }
        }
        throw new f("Firebase Installations Service is unavailable. Please try again later.");
    }

    public final void j(Exception exc) {
        synchronized (this.f2992g) {
            try {
                Iterator it = this.f2996l.iterator();
                while (it.hasNext()) {
                    if (((j) it.next()).b(exc)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void k(i5.b bVar) {
        synchronized (this.f2992g) {
            try {
                Iterator it = this.f2996l.iterator();
                while (it.hasNext()) {
                    if (((j) it.next()).a(bVar)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void l(String str) {
        this.f2994j = str;
    }

    public final synchronized void m(i5.b bVar, i5.b bVar2) {
        try {
            if (this.f2995k.size() != 0 && !TextUtils.equals(bVar.f3211a, bVar2.f3211a)) {
                Iterator it = this.f2995k.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            }
        } finally {
        }
    }
}
