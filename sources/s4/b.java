package s4;

import android.app.Application;
import android.graphics.Typeface;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import b2.k;
import com.engagelab.privates.core.api.WakeMessage;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.common.internal.q0;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.internal.measurement.y4;
import com.google.firebase.messaging.x;
import g.r;
import g0.g;
import java.lang.reflect.Method;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import k1.h;
import org.apache.cordova.CordovaWebViewImpl;
import org.apache.cordova.NativeToJsMessageQueue$EvalBridgeMode;
import org.apache.cordova.NativeToJsMessageQueue$LoadUrlBridgeMode;
import org.apache.cordova.NativeToJsMessageQueue$OnlineEventsBridgeMode;
import org.apache.cordova.engine.SystemWebView;
import org.apache.cordova.engine.SystemWebViewEngine;
import org.apache.cordova.h0;
import org.apache.cordova.i0;
import org.json.JSONException;
import org.json.JSONObject;
import p4.d;
import p4.e;
import p4.f;
import p4.i;
import p4.n;
import p4.q;
import u3.j;
import u3.l;
import u3.m;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5221a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f5222b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f5223c;

    public /* synthetic */ b(Object obj, int i6, Object obj2) {
        this.f5221a = i6;
        this.f5222b = obj;
        this.f5223c = obj2;
    }

    private final void a() {
        synchronized (((n) this.f5223c).f4651c) {
            e eVar = (e) ((n) this.f5223c).f4652d;
            Exception excD = ((i) this.f5222b).d();
            d0.h(excD);
            eVar.onFailure(excD);
        }
    }

    private final void b() {
        synchronized (((n) this.f5223c).f4651c) {
            ((f) ((n) this.f5223c).f4652d).onSuccess(((i) this.f5222b).e());
        }
    }

    private final void c() {
        l lVar = (l) this.f5222b;
        IBinder iBinder = (IBinder) this.f5223c;
        synchronized (lVar) {
            if (iBinder == null) {
                lVar.a("Null service connection");
                return;
            }
            try {
                lVar.f5474c = new y4(iBinder);
                lVar.f5472a = 2;
                lVar.f5477f.f5485b.execute(new j(lVar, 0));
            } catch (RemoteException e9) {
                lVar.a(e9.getMessage());
            }
        }
    }

    private final void d() {
        l lVar = (l) this.f5222b;
        int i6 = ((m) this.f5223c).f5478a;
        synchronized (lVar) {
            m mVar = (m) lVar.f5476e.get(i6);
            if (mVar != null) {
                Log.w("MessengerIpcClient", "Timing out request: " + i6);
                lVar.f5476e.remove(i6);
                mVar.b(new x("Timed out waiting for response", null));
                lVar.c();
            }
        }
    }

    private final void e() {
        try {
            f();
        } catch (Error e9) {
            synchronized (((w4.i) this.f5223c).f5749b) {
                ((w4.i) this.f5223c).f5750c = 1;
                throw e9;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0043, code lost:
    
        if (r1 == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004c, code lost:
    
        r1 = r1 | java.lang.Thread.interrupted();
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004e, code lost:
    
        ((java.lang.Runnable) r10.f5222b).run();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005a, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x005c, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x005d, code lost:
    
        w4.i.f5747f.log(java.util.logging.Level.SEVERE, "Exception while executing runnable " + ((java.lang.Runnable) r10.f5222b), (java.lang.Throwable) r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007a, code lost:
    
        r10.f5222b = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007c, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:?, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x003c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void f() {
        /*
            r10 = this;
            r0 = 0
            r1 = r0
        L2:
            java.lang.Object r2 = r10.f5223c     // Catch: java.lang.Throwable -> L58
            w4.i r2 = (w4.i) r2     // Catch: java.lang.Throwable -> L58
            java.util.ArrayDeque r2 = r2.f5749b     // Catch: java.lang.Throwable -> L58
            monitor-enter(r2)     // Catch: java.lang.Throwable -> L58
            r3 = 1
            if (r0 != 0) goto L2c
            java.lang.Object r0 = r10.f5223c     // Catch: java.lang.Throwable -> L20
            w4.i r0 = (w4.i) r0     // Catch: java.lang.Throwable -> L20
            int r4 = r0.f5750c     // Catch: java.lang.Throwable -> L20
            r5 = 4
            if (r4 != r5) goto L22
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L20
            if (r1 == 0) goto L46
        L18:
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r0.interrupt()
            goto L46
        L20:
            r0 = move-exception
            goto L7d
        L22:
            long r6 = r0.f5751d     // Catch: java.lang.Throwable -> L20
            r8 = 1
            long r6 = r6 + r8
            r0.f5751d = r6     // Catch: java.lang.Throwable -> L20
            r0.f5750c = r5     // Catch: java.lang.Throwable -> L20
            r0 = r3
        L2c:
            java.lang.Object r4 = r10.f5223c     // Catch: java.lang.Throwable -> L20
            w4.i r4 = (w4.i) r4     // Catch: java.lang.Throwable -> L20
            java.util.ArrayDeque r4 = r4.f5749b     // Catch: java.lang.Throwable -> L20
            java.lang.Object r4 = r4.poll()     // Catch: java.lang.Throwable -> L20
            java.lang.Runnable r4 = (java.lang.Runnable) r4     // Catch: java.lang.Throwable -> L20
            r10.f5222b = r4     // Catch: java.lang.Throwable -> L20
            if (r4 != 0) goto L47
            java.lang.Object r0 = r10.f5223c     // Catch: java.lang.Throwable -> L20
            w4.i r0 = (w4.i) r0     // Catch: java.lang.Throwable -> L20
            r0.f5750c = r3     // Catch: java.lang.Throwable -> L20
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L20
            if (r1 == 0) goto L46
            goto L18
        L46:
            return
        L47:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L20
            boolean r2 = java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> L58
            r1 = r1 | r2
            r2 = 0
            java.lang.Object r3 = r10.f5222b     // Catch: java.lang.Throwable -> L5a java.lang.RuntimeException -> L5c
            java.lang.Runnable r3 = (java.lang.Runnable) r3     // Catch: java.lang.Throwable -> L5a java.lang.RuntimeException -> L5c
            r3.run()     // Catch: java.lang.Throwable -> L5a java.lang.RuntimeException -> L5c
        L55:
            r10.f5222b = r2     // Catch: java.lang.Throwable -> L58
            goto L2
        L58:
            r0 = move-exception
            goto L7f
        L5a:
            r0 = move-exception
            goto L7a
        L5c:
            r3 = move-exception
            java.util.logging.Logger r4 = w4.i.f5747f     // Catch: java.lang.Throwable -> L5a
            java.util.logging.Level r5 = java.util.logging.Level.SEVERE     // Catch: java.lang.Throwable -> L5a
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5a
            r6.<init>()     // Catch: java.lang.Throwable -> L5a
            java.lang.String r7 = "Exception while executing runnable "
            r6.append(r7)     // Catch: java.lang.Throwable -> L5a
            java.lang.Object r7 = r10.f5222b     // Catch: java.lang.Throwable -> L5a
            java.lang.Runnable r7 = (java.lang.Runnable) r7     // Catch: java.lang.Throwable -> L5a
            r6.append(r7)     // Catch: java.lang.Throwable -> L5a
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L5a
            r4.log(r5, r6, r3)     // Catch: java.lang.Throwable -> L5a
            goto L55
        L7a:
            r10.f5222b = r2     // Catch: java.lang.Throwable -> L58
            throw r0     // Catch: java.lang.Throwable -> L58
        L7d:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L20
            throw r0     // Catch: java.lang.Throwable -> L58
        L7f:
            if (r1 == 0) goto L88
            java.lang.Thread r1 = java.lang.Thread.currentThread()
            r1.interrupt()
        L88:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: s4.b.f():void");
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.common.internal.l lVar;
        com.google.android.gms.common.internal.l q0Var = null;
        int i6 = 0;
        switch (this.f5221a) {
            case 0:
                a aVar = (a) this.f5223c;
                try {
                    aVar.onSuccess(k.e((c) this.f5222b));
                    return;
                } catch (Error e9) {
                    e = e9;
                    aVar.onFailure(e);
                    return;
                } catch (RuntimeException e10) {
                    e = e10;
                    aVar.onFailure(e);
                    return;
                } catch (ExecutionException e11) {
                    aVar.onFailure(e11.getCause());
                    return;
                }
            case 1:
                h hVar = (h) this.f5222b;
                Typeface typeface = (Typeface) this.f5223c;
                e6.b bVar = (e6.b) hVar.f3502b;
                if (bVar != null) {
                    bVar.c(typeface);
                    return;
                }
                return;
            case 2:
                ((g) this.f5222b).accept(this.f5223c);
                return;
            case 3:
                CordovaWebViewImpl cordovaWebViewImpl = (CordovaWebViewImpl) this.f5223c;
                cordovaWebViewImpl.stopLoading();
                Log.e(CordovaWebViewImpl.TAG, "CordovaWebView: TIMEOUT ERROR!");
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("errorCode", -6);
                    jSONObject.put("description", "The connection to the server was unsuccessful.");
                    jSONObject.put("url", (String) this.f5222b);
                    break;
                } catch (JSONException unused) {
                }
                cordovaWebViewImpl.f4460a.k("onReceivedError", jSONObject);
                return;
            case 4:
                String strE = ((i0) this.f5222b).e();
                if (strE != null) {
                    ((NativeToJsMessageQueue$EvalBridgeMode) this.f5223c).f4479a.evaluateJavascript(strE, null);
                    return;
                }
                return;
            case 5:
                String strE2 = ((i0) this.f5222b).e();
                if (strE2 != null) {
                    ((NativeToJsMessageQueue$LoadUrlBridgeMode) this.f5223c).f4481a.loadUrl("javascript:".concat(strE2), false);
                    return;
                }
                return;
            case 6:
                if (((i0) this.f5222b).f4528b.isEmpty()) {
                    return;
                }
                NativeToJsMessageQueue$OnlineEventsBridgeMode nativeToJsMessageQueue$OnlineEventsBridgeMode = (NativeToJsMessageQueue$OnlineEventsBridgeMode) this.f5223c;
                nativeToJsMessageQueue$OnlineEventsBridgeMode.f4485c = false;
                h0 h0Var = nativeToJsMessageQueue$OnlineEventsBridgeMode.f4483a;
                boolean z5 = nativeToJsMessageQueue$OnlineEventsBridgeMode.f4484b;
                SystemWebView systemWebView = ((SystemWebViewEngine) ((h) h0Var).f3502b).f4504a;
                if (systemWebView != null) {
                    systemWebView.setNetworkAvailable(z5);
                    return;
                }
                return;
            case 7:
                if (((q) ((i) this.f5222b)).f4660d) {
                    ((p4.m) this.f5223c).f4648d.n();
                    return;
                }
                try {
                    ((p4.m) this.f5223c).f4648d.m(((p4.m) this.f5223c).f4647c.b((i) this.f5222b));
                    return;
                } catch (p4.g e12) {
                    if (e12.getCause() instanceof Exception) {
                        ((p4.m) this.f5223c).f4648d.l((Exception) e12.getCause());
                        return;
                    } else {
                        ((p4.m) this.f5223c).f4648d.l(e12);
                        return;
                    }
                } catch (Exception e13) {
                    ((p4.m) this.f5223c).f4648d.l(e13);
                    return;
                }
            case WakeMessage.ACTIVITY /* 8 */:
                p4.m mVar = (p4.m) this.f5223c;
                q qVar = mVar.f4648d;
                try {
                    i iVar = (i) mVar.f4647c.b((i) this.f5222b);
                    if (iVar == null) {
                        mVar.onFailure(new NullPointerException("Continuation returned null"));
                        return;
                    }
                    r rVar = p4.k.f4643b;
                    iVar.c(rVar, mVar);
                    iVar.b(rVar, mVar);
                    q qVar2 = (q) iVar;
                    qVar2.f4658b.d(new n((Executor) rVar, (p4.c) mVar));
                    qVar2.p();
                    return;
                } catch (p4.g e14) {
                    if (e14.getCause() instanceof Exception) {
                        qVar.l((Exception) e14.getCause());
                        return;
                    } else {
                        qVar.l(e14);
                        return;
                    }
                } catch (Exception e15) {
                    qVar.l(e15);
                    return;
                }
            case 9:
                synchronized (((n) this.f5223c).f4651c) {
                    ((d) ((n) this.f5223c).f4652d).onComplete((i) this.f5222b);
                    break;
                }
                return;
            case 10:
                a();
                return;
            case 11:
                b();
                return;
            case 12:
                n nVar = (n) this.f5223c;
                try {
                    q qVarC = ((p4.h) nVar.f4651c).c(((i) this.f5222b).e());
                    r rVar2 = p4.k.f4643b;
                    qVarC.c(rVar2, nVar);
                    qVarC.b(rVar2, nVar);
                    qVarC.f4658b.d(new n((Executor) rVar2, (p4.c) nVar));
                    qVarC.p();
                    return;
                } catch (CancellationException unused2) {
                    nVar.a();
                    return;
                } catch (p4.g e16) {
                    if (e16.getCause() instanceof Exception) {
                        nVar.onFailure((Exception) e16.getCause());
                        return;
                    } else {
                        nVar.onFailure(e16);
                        return;
                    }
                } catch (Exception e17) {
                    nVar.onFailure(e17);
                    return;
                }
            case 13:
                q qVar3 = (q) this.f5222b;
                try {
                    qVar3.m(((Callable) this.f5223c).call());
                    return;
                } catch (Exception e18) {
                    qVar3.l(e18);
                    return;
                } catch (Throwable th) {
                    qVar3.l(new RuntimeException(th));
                    return;
                }
            case 14:
                p7.h hVar2 = (p7.h) this.f5223c;
                l7.n nVar2 = hVar2.f4679c;
                while (true) {
                    try {
                        ((Runnable) this.f5222b).run();
                    } catch (Throwable th2) {
                        l7.r.e(u6.l.f5505a, th2);
                    }
                    Runnable runnableV = hVar2.v();
                    if (runnableV == null) {
                        return;
                    }
                    this.f5222b = runnableV;
                    i6++;
                    if (i6 >= 16 && nVar2.u()) {
                        nVar2.t(hVar2, this);
                        return;
                    }
                    break;
                }
                break;
            case 15:
                c();
                return;
            case 16:
                d();
                return;
            case 17:
                e();
                return;
            case 18:
                ConnectionResult connectionResult = (ConnectionResult) this.f5222b;
                x3.l lVar2 = (x3.l) this.f5223c;
                w3.a aVar2 = lVar2.f5993a;
                x3.j jVar = (x3.j) lVar2.f5998f.f5974j.get(lVar2.f5994b);
                if (jVar == null) {
                    return;
                }
                if (connectionResult.f1389b != 0) {
                    jVar.m(connectionResult, null);
                    return;
                }
                lVar2.f5997e = true;
                if (aVar2.requiresSignIn()) {
                    if (!lVar2.f5997e || (lVar = lVar2.f5995c) == null) {
                        return;
                    }
                    aVar2.getRemoteService(lVar, lVar2.f5996d);
                    return;
                }
                try {
                    aVar2.getRemoteService(null, aVar2.a());
                    return;
                } catch (SecurityException e19) {
                    Log.e("GoogleApiManager", "Failed to get service from broker. ", e19);
                    aVar2.disconnect("Failed to get service from broker.");
                    jVar.m(new ConnectionResult(10), null);
                    return;
                }
            case 19:
                x3.r rVar3 = (x3.r) this.f5223c;
                n4.f fVar = (n4.f) this.f5222b;
                ConnectionResult connectionResult2 = fVar.f4339b;
                if (connectionResult2.f1389b == 0) {
                    w wVar = fVar.f4340c;
                    d0.h(wVar);
                    ConnectionResult connectionResult3 = wVar.f1499c;
                    if (connectionResult3.f1389b != 0) {
                        Log.wtf("SignInCoordinator", "Sign-in succeeded with resolve account failure: ".concat(String.valueOf(connectionResult3)), new Exception());
                        rVar3.f6011i.b(connectionResult3);
                        rVar3.h.disconnect();
                        return;
                    }
                    x3.l lVar3 = rVar3.f6011i;
                    IBinder iBinder = wVar.f1498b;
                    if (iBinder != null) {
                        int i9 = com.google.android.gms.common.internal.a.f1400c;
                        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                        q0Var = iInterfaceQueryLocalInterface instanceof com.google.android.gms.common.internal.l ? (com.google.android.gms.common.internal.l) iInterfaceQueryLocalInterface : new q0(iBinder, "com.google.android.gms.common.internal.IAccountAccessor", 1);
                    }
                    Set set = rVar3.f6009f;
                    lVar3.getClass();
                    if (q0Var == null || set == null) {
                        Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
                        lVar3.b(new ConnectionResult(4));
                    } else {
                        lVar3.f5995c = q0Var;
                        lVar3.f5996d = set;
                        if (lVar3.f5997e) {
                            lVar3.f5993a.getRemoteService(q0Var, set);
                        }
                    }
                } else {
                    rVar3.f6011i.b(connectionResult2);
                }
                rVar3.h.disconnect();
                return;
            case 20:
                ((y.c) this.f5222b).f6045a = this.f5223c;
                return;
            case 21:
                ((Application) this.f5222b).unregisterActivityLifecycleCallbacks((y.c) this.f5223c);
                return;
            default:
                Object obj = this.f5223c;
                Object obj2 = this.f5222b;
                try {
                    Method method = y.d.f6054d;
                    if (method != null) {
                        method.invoke(obj2, obj, Boolean.FALSE, "AppCompat recreation");
                    } else {
                        y.d.f6055e.invoke(obj2, obj, Boolean.FALSE);
                    }
                    return;
                } catch (RuntimeException e20) {
                    if (e20.getClass() == RuntimeException.class && e20.getMessage() != null && e20.getMessage().startsWith("Unable to stop")) {
                        throw e20;
                    }
                    return;
                } catch (Throwable th3) {
                    Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th3);
                    return;
                }
        }
    }

    public String toString() {
        switch (this.f5221a) {
            case 0:
                c5.h hVar = new c5.h(b.class.getSimpleName());
                a aVar = (a) this.f5223c;
                y4 y4Var = new y4(25, false);
                ((y4) hVar.f1062d).f1991c = y4Var;
                hVar.f1062d = y4Var;
                y4Var.f1990b = aVar;
                return hVar.toString();
            case 17:
                Runnable runnable = (Runnable) this.f5222b;
                if (runnable != null) {
                    return "SequentialExecutorWorker{running=" + runnable + "}";
                }
                StringBuilder sb = new StringBuilder("SequentialExecutorWorker{state=");
                int i6 = ((w4.i) this.f5223c).f5750c;
                sb.append(i6 != 1 ? i6 != 2 ? i6 != 3 ? i6 != 4 ? "null" : "RUNNING" : "QUEUED" : "QUEUING" : "IDLE");
                sb.append("}");
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ b(Object obj, Object obj2, int i6, boolean z5) {
        this.f5221a = i6;
        this.f5223c = obj;
        this.f5222b = obj2;
    }

    public b(w4.i iVar) {
        this.f5221a = 17;
        this.f5223c = iVar;
    }
}
