package org.apache.cordova;

import android.content.Intent;
import android.os.Build;
import android.os.Debug;
import android.util.Log;
import com.getcapacitor.Bridge;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import org.json.JSONException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f4542a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f4543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final m f4544c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final t f4545d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4546e;

    static {
        Debug.isDebuggerConnected();
    }

    public l0(t tVar, m mVar, List list) {
        Map mapSynchronizedMap = Collections.synchronizedMap(new LinkedHashMap());
        this.f4542a = mapSynchronizedMap;
        Map mapSynchronizedMap2 = Collections.synchronizedMap(new LinkedHashMap());
        this.f4543b = mapSynchronizedMap2;
        this.f4544c = mVar;
        this.f4545d = tVar;
        if (this.f4546e) {
            g(false);
            e();
            mapSynchronizedMap.clear();
            mapSynchronizedMap2.clear();
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            j0 j0Var = (j0) it.next();
            this.f4543b.put(j0Var.f4533a, j0Var);
        }
        if (this.f4546e) {
            o();
        }
    }

    public final void a(String str, String str2, String str3, String str4) {
        o oVarC = c(str);
        t tVar = this.f4545d;
        if (oVarC == null) {
            tVar.sendPluginResult(new m0(3), str3);
            return;
        }
        d dVar = new d(str3, tVar);
        try {
            System.currentTimeMillis();
            boolean zExecute = oVarC.execute(str2, str4, dVar);
            System.currentTimeMillis();
            if (zExecute) {
                return;
            }
            dVar.sendPluginResult(new m0(8));
        } catch (JSONException unused) {
            dVar.sendPluginResult(new m0(9));
        } catch (Exception e9) {
            Log.e("PluginManager", "Uncaught exception from plugin", e9);
            dVar.error(e9.getMessage());
        }
    }

    public final String b() {
        t tVar = this.f4545d;
        if (tVar.getPreferences().a("AndroidInsecureFileModeEnabled", false)) {
            return "file://";
        }
        return tVar.getPreferences().b("scheme", Bridge.CAPACITOR_HTTPS_SCHEME).toLowerCase() + "://" + tVar.getPreferences().b("hostname", "localhost") + '/';
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final org.apache.cordova.o c(java.lang.String r7) {
        /*
            r6 = this;
            java.util.Map r0 = r6.f4542a
            java.lang.Object r1 = r0.get(r7)
            org.apache.cordova.o r1 = (org.apache.cordova.o) r1
            if (r1 != 0) goto L6a
            java.util.Map r1 = r6.f4543b
            java.lang.Object r1 = r1.get(r7)
            org.apache.cordova.j0 r1 = (org.apache.cordova.j0) r1
            r2 = 0
            if (r1 != 0) goto L16
            return r2
        L16:
            java.lang.String r1 = r1.f4534b
            if (r1 == 0) goto L29
            java.lang.String r3 = ""
            boolean r3 = r3.equals(r1)     // Catch: java.lang.Exception -> L27
            if (r3 != 0) goto L29
            java.lang.Class r3 = java.lang.Class.forName(r1)     // Catch: java.lang.Exception -> L27
            goto L2a
        L27:
            r3 = move-exception
            goto L40
        L29:
            r3 = r2
        L2a:
            if (r3 == 0) goto L2e
            r4 = 1
            goto L2f
        L2e:
            r4 = 0
        L2f:
            java.lang.Class<org.apache.cordova.o> r5 = org.apache.cordova.o.class
            boolean r5 = r5.isAssignableFrom(r3)     // Catch: java.lang.Exception -> L27
            r4 = r4 & r5
            if (r4 == 0) goto L5b
            java.lang.Object r3 = r3.newInstance()     // Catch: java.lang.Exception -> L27
            org.apache.cordova.o r3 = (org.apache.cordova.o) r3     // Catch: java.lang.Exception -> L27
            r2 = r3
            goto L5b
        L40:
            r3.printStackTrace()
            java.io.PrintStream r3 = java.lang.System.out
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "Error adding plugin "
            r4.<init>(r5)
            r4.append(r1)
            java.lang.String r1 = "."
            r4.append(r1)
            java.lang.String r1 = r4.toString()
            r3.println(r1)
        L5b:
            org.apache.cordova.t r1 = r6.f4545d
            org.apache.cordova.q r3 = r1.getPreferences()
            org.apache.cordova.m r4 = r6.f4544c
            r2.privateInitialize(r7, r4, r1, r3)
            r0.put(r7, r2)
            return r2
        L6a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.cordova.l0.c(java.lang.String):org.apache.cordova.o");
    }

    public final void d() {
        this.f4546e = true;
        g(false);
        e();
        this.f4542a.clear();
        o();
    }

    public final void e() {
        synchronized (this.f4542a) {
            try {
                for (o oVar : this.f4542a.values()) {
                    if (oVar != null) {
                        oVar.onDestroy();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void f(Intent intent) {
        synchronized (this.f4542a) {
            try {
                for (o oVar : this.f4542a.values()) {
                    if (oVar != null) {
                        oVar.onNewIntent(intent);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void g(boolean z5) {
        synchronized (this.f4542a) {
            try {
                for (o oVar : this.f4542a.values()) {
                    if (oVar != null) {
                        oVar.onPause(z5);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h(boolean z5) {
        synchronized (this.f4542a) {
            try {
                for (o oVar : this.f4542a.values()) {
                    if (oVar != null) {
                        oVar.onResume(z5);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void i() {
        synchronized (this.f4542a) {
            try {
                for (o oVar : this.f4542a.values()) {
                    if (oVar != null) {
                        oVar.onStart();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void j() {
        synchronized (this.f4542a) {
            try {
                for (o oVar : this.f4542a.values()) {
                    if (oVar != null) {
                        oVar.onStop();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r2v5, types: [org.apache.cordova.k0] */
    public final Object k(final String str, final Object obj) {
        Object objOnMessage;
        synchronized (this.f4542a) {
            try {
                if (Build.VERSION.SDK_INT >= 24) {
                    this.f4542a.forEach(new BiConsumer() { // from class: org.apache.cordova.k0
                        @Override // java.util.function.BiConsumer
                        public final void accept(Object obj2, Object obj3) {
                            String str2 = str;
                            Object obj4 = obj;
                            o oVar = (o) obj3;
                            if (oVar != null) {
                                oVar.onMessage(str2, obj4);
                            }
                        }
                    });
                } else {
                    for (o oVar : this.f4542a.values()) {
                        if (oVar != null && (objOnMessage = oVar.onMessage(str, obj)) != null) {
                            return objOnMessage;
                        }
                    }
                }
                return this.f4544c.onMessage(str, obj);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean l(String str) {
        Boolean boolShouldAllowNavigation;
        synchronized (this.f4543b) {
            try {
                Iterator it = this.f4543b.values().iterator();
                while (it.hasNext()) {
                    o oVar = (o) this.f4542a.get(((j0) it.next()).f4533a);
                    if (oVar != null && (boolShouldAllowNavigation = oVar.shouldAllowNavigation(str)) != null) {
                        return boolShouldAllowNavigation.booleanValue();
                    }
                }
                return str.startsWith(b()) || str.startsWith("about:blank");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean m(String str) {
        Boolean boolShouldAllowRequest;
        synchronized (this.f4543b) {
            try {
                Iterator it = this.f4543b.values().iterator();
                while (it.hasNext()) {
                    o oVar = (o) this.f4542a.get(((j0) it.next()).f4533a);
                    if (oVar != null && (boolShouldAllowRequest = oVar.shouldAllowRequest(str)) != null) {
                        return boolShouldAllowRequest.booleanValue();
                    }
                }
                if (str.startsWith("blob:") || str.startsWith("data:") || str.startsWith("about:blank") || str.startsWith("https://ssl.gstatic.com/accessibility/javascript/android/")) {
                    return true;
                }
                if (str.startsWith("file://")) {
                    return !str.contains("/app_webview/");
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Boolean n(String str) {
        Boolean boolShouldOpenExternalUrl;
        synchronized (this.f4543b) {
            try {
                Iterator it = this.f4543b.values().iterator();
                while (it.hasNext()) {
                    o oVar = (o) this.f4542a.get(((j0) it.next()).f4533a);
                    if (oVar != null && (boolShouldOpenExternalUrl = oVar.shouldOpenExternalUrl(str)) != null) {
                        return boolShouldOpenExternalUrl;
                    }
                }
                return Boolean.FALSE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void o() {
        synchronized (this.f4543b) {
            try {
                for (j0 j0Var : this.f4543b.values()) {
                    if (j0Var.f4535c) {
                        c(j0Var.f4533a);
                    } else {
                        this.f4542a.put(j0Var.f4533a, null);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
