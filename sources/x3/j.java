package x3;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.SparseIntArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.r0;
import com.google.android.gms.internal.measurement.y4;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j implements w3.c, w3.d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final w3.a f5981c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final a f5982d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final u3.o f5983e;
    public final int h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final r f5986i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f5987j;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final /* synthetic */ d f5990m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedList f5980b = new LinkedList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HashSet f5984f = new HashSet();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final HashMap f5985g = new HashMap();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList f5988k = new ArrayList();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ConnectionResult f5989l = null;

    public j(d dVar, z3.b bVar) {
        this.f5990m = dVar;
        r0 r0Var = dVar.f5977m;
        Looper looper = r0Var.getLooper();
        c5.h hVarA = bVar.a();
        com.google.android.gms.common.internal.g gVar = new com.google.android.gms.common.internal.g((s.f) hVarA.f1060b, (String) hVarA.f1061c, (String) hVarA.f1062d);
        m4.b bVar2 = (m4.b) bVar.f6405c.f5488a;
        d0.h(bVar2);
        com.google.android.gms.common.internal.s sVar = bVar.f6406d;
        Context context = bVar.f6403a;
        bVar2.getClass();
        z3.c cVar = new z3.c(context, looper, gVar, sVar, this, this);
        String str = bVar.f6404b;
        if (str != null) {
            cVar.setAttributionTag(str);
        }
        this.f5981c = cVar;
        this.f5982d = bVar.f6407e;
        this.f5983e = new u3.o();
        this.h = bVar.f6408f;
        if (!cVar.requiresSignIn()) {
            this.f5986i = null;
            return;
        }
        Context context2 = dVar.f5970e;
        c5.h hVarA2 = bVar.a();
        this.f5986i = new r(context2, r0Var, new com.google.android.gms.common.internal.g((s.f) hVarA2.f1060b, (String) hVarA2.f1061c, (String) hVarA2.f1062d));
    }

    public final void a(ConnectionResult connectionResult) {
        HashSet hashSet = this.f5984f;
        Iterator it = hashSet.iterator();
        if (!it.hasNext()) {
            hashSet.clear();
        } else {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (d0.k(connectionResult, ConnectionResult.f1387e)) {
                this.f5981c.getEndpointPackageName();
            }
            throw null;
        }
    }

    @Override // w3.c
    public final void b() {
        Looper looperMyLooper = Looper.myLooper();
        r0 r0Var = this.f5990m.f5977m;
        if (looperMyLooper == r0Var.getLooper()) {
            f();
        } else {
            r0Var.post(new androidx.fragment.app.p(14, this));
        }
    }

    public final void c(Status status) {
        d0.b(this.f5990m.f5977m);
        d(status, null, false);
    }

    public final void d(Status status, Exception exc, boolean z5) {
        d0.b(this.f5990m.f5977m);
        if ((status == null) == (exc == null)) {
            throw new IllegalArgumentException("Status XOR exception should be null");
        }
        Iterator it = this.f5980b.iterator();
        while (it.hasNext()) {
            o oVar = (o) it.next();
            if (!z5 || oVar.f6001a == 2) {
                if (status != null) {
                    oVar.c(status);
                } else {
                    oVar.d(exc);
                }
                it.remove();
            }
        }
    }

    public final void e() {
        LinkedList linkedList = this.f5980b;
        ArrayList arrayList = new ArrayList(linkedList);
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            o oVar = (o) arrayList.get(i6);
            if (!this.f5981c.isConnected()) {
                return;
            }
            if (i(oVar)) {
                linkedList.remove(oVar);
            }
        }
    }

    public final void f() {
        d dVar = this.f5990m;
        d0.b(dVar.f5977m);
        this.f5989l = null;
        a(ConnectionResult.f1387e);
        r0 r0Var = dVar.f5977m;
        if (this.f5987j) {
            a aVar = this.f5982d;
            r0Var.removeMessages(11, aVar);
            r0Var.removeMessages(9, aVar);
            this.f5987j = false;
        }
        Iterator it = this.f5985g.values().iterator();
        if (it.hasNext()) {
            it.next().getClass();
            throw new ClassCastException();
        }
        e();
        h();
    }

    public final void g(int i6) {
        d dVar = this.f5990m;
        r0 r0Var = dVar.f5977m;
        d0.b(dVar.f5977m);
        this.f5989l = null;
        this.f5987j = true;
        String lastDisconnectMessage = this.f5981c.getLastDisconnectMessage();
        u3.o oVar = this.f5983e;
        oVar.getClass();
        StringBuilder sb = new StringBuilder("The connection to Google Play services was lost");
        if (i6 == 1) {
            sb.append(" due to service disconnection.");
        } else if (i6 == 3) {
            sb.append(" due to dead object exception.");
        }
        if (lastDisconnectMessage != null) {
            sb.append(" Last reason for disconnect: ");
            sb.append(lastDisconnectMessage);
        }
        oVar.c(true, new Status(20, sb.toString(), null, null));
        a aVar = this.f5982d;
        r0Var.sendMessageDelayed(Message.obtain(r0Var, 9, aVar), 5000L);
        r0Var.sendMessageDelayed(Message.obtain(r0Var, 11, aVar), 120000L);
        ((SparseIntArray) dVar.f5972g.f1990b).clear();
        Iterator it = this.f5985g.values().iterator();
        if (it.hasNext()) {
            it.next().getClass();
            throw new ClassCastException();
        }
    }

    public final void h() {
        d dVar = this.f5990m;
        r0 r0Var = dVar.f5977m;
        a aVar = this.f5982d;
        r0Var.removeMessages(12, aVar);
        r0Var.sendMessageDelayed(r0Var.obtainMessage(12, aVar), dVar.f5966a);
    }

    public final boolean i(o oVar) {
        v3.c cVar;
        if (oVar == null) {
            u3.o oVar2 = this.f5983e;
            w3.a aVar = this.f5981c;
            oVar.f(oVar2, aVar.requiresSignIn());
            try {
                oVar.e(this);
                return true;
            } catch (DeadObjectException unused) {
                onConnectionSuspended(1);
                aVar.disconnect("DeadObjectException thrown while running ApiCallRunner.");
                return true;
            }
        }
        v3.c[] cVarArrB = oVar.b(this);
        if (cVarArrB == null || cVarArrB.length == 0) {
            cVar = null;
        } else {
            v3.c[] availableFeatures = this.f5981c.getAvailableFeatures();
            if (availableFeatures == null) {
                availableFeatures = new v3.c[0];
            }
            s.e eVar = new s.e(availableFeatures.length);
            for (v3.c cVar2 : availableFeatures) {
                eVar.put(cVar2.f5538a, Long.valueOf(cVar2.a()));
            }
            int length = cVarArrB.length;
            for (int i6 = 0; i6 < length; i6++) {
                cVar = cVarArrB[i6];
                Long l4 = (Long) eVar.get(cVar.f5538a);
                if (l4 == null || l4.longValue() < cVar.a()) {
                    break;
                }
            }
            cVar = null;
        }
        if (cVar == null) {
            u3.o oVar3 = this.f5983e;
            w3.a aVar2 = this.f5981c;
            oVar.f(oVar3, aVar2.requiresSignIn());
            try {
                oVar.e(this);
                return true;
            } catch (DeadObjectException unused2) {
                onConnectionSuspended(1);
                aVar2.disconnect("DeadObjectException thrown while running ApiCallRunner.");
                return true;
            }
        }
        Log.w("GoogleApiManager", this.f5981c.getClass().getName() + " could not execute call because it requires feature (" + cVar.f5538a + ", " + cVar.a() + ").");
        if (!this.f5990m.f5978n || !oVar.a(this)) {
            oVar.d(new w3.g(cVar));
            return true;
        }
        k kVar = new k(this.f5982d, cVar);
        int iIndexOf = this.f5988k.indexOf(kVar);
        if (iIndexOf >= 0) {
            k kVar2 = (k) this.f5988k.get(iIndexOf);
            this.f5990m.f5977m.removeMessages(15, kVar2);
            r0 r0Var = this.f5990m.f5977m;
            r0Var.sendMessageDelayed(Message.obtain(r0Var, 15, kVar2), 5000L);
        } else {
            this.f5988k.add(kVar);
            r0 r0Var2 = this.f5990m.f5977m;
            r0Var2.sendMessageDelayed(Message.obtain(r0Var2, 15, kVar), 5000L);
            r0 r0Var3 = this.f5990m.f5977m;
            r0Var3.sendMessageDelayed(Message.obtain(r0Var3, 16, kVar), 120000L);
            ConnectionResult connectionResult = new ConnectionResult(2, null);
            if (!j(connectionResult)) {
                this.f5990m.a(connectionResult, this.h);
            }
        }
        return false;
    }

    public final boolean j(ConnectionResult connectionResult) {
        synchronized (d.f5964q) {
        }
        return false;
    }

    public final void k() {
        d dVar = this.f5990m;
        d0.b(dVar.f5977m);
        w3.a aVar = this.f5981c;
        if (aVar.isConnected() || aVar.isConnecting()) {
            return;
        }
        try {
            y4 y4Var = dVar.f5972g;
            Context context = dVar.f5970e;
            SparseIntArray sparseIntArray = (SparseIntArray) y4Var.f1990b;
            d0.h(context);
            int iB = 0;
            if (aVar.requiresGooglePlayServices()) {
                int minApkVersion = aVar.getMinApkVersion();
                int i6 = ((SparseIntArray) y4Var.f1990b).get(minApkVersion, -1);
                if (i6 != -1) {
                    iB = i6;
                } else {
                    int i9 = 0;
                    while (true) {
                        if (i9 >= sparseIntArray.size()) {
                            iB = -1;
                            break;
                        }
                        int iKeyAt = sparseIntArray.keyAt(i9);
                        if (iKeyAt > minApkVersion && sparseIntArray.get(iKeyAt) == 0) {
                            break;
                        } else {
                            i9++;
                        }
                    }
                    if (iB == -1) {
                        iB = ((v3.d) y4Var.f1991c).b(context, minApkVersion);
                    }
                    sparseIntArray.put(minApkVersion, iB);
                }
            }
            if (iB != 0) {
                ConnectionResult connectionResult = new ConnectionResult(iB, null);
                Log.w("GoogleApiManager", "The service for " + aVar.getClass().getName() + " is not available: " + connectionResult.toString());
                m(connectionResult, null);
                return;
            }
            l lVar = new l(dVar, aVar, this.f5982d);
            if (aVar.requiresSignIn()) {
                r rVar = this.f5986i;
                d0.h(rVar);
                Handler handler = rVar.f6007d;
                com.google.android.gms.common.internal.g gVar = rVar.f6010g;
                n4.a aVar2 = rVar.h;
                if (aVar2 != null) {
                    aVar2.disconnect();
                }
                gVar.f1414g = Integer.valueOf(System.identityHashCode(rVar));
                m4.b bVar = rVar.f6008e;
                Context context2 = rVar.f6006c;
                Looper looper = handler.getLooper();
                Object obj = gVar.f1413f;
                bVar.getClass();
                gVar.getClass();
                Integer num = (Integer) gVar.f1414g;
                Bundle bundle = new Bundle();
                bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", null);
                if (num != null) {
                    bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", num.intValue());
                }
                bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", false);
                bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", false);
                bundle.putString("com.google.android.gms.signin.internal.serverClientId", null);
                bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
                bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", false);
                bundle.putString("com.google.android.gms.signin.internal.hostedDomain", null);
                bundle.putString("com.google.android.gms.signin.internal.logSessionId", null);
                bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", false);
                rVar.h = new n4.a(context2, looper, gVar, bundle, rVar, rVar);
                rVar.f6011i = lVar;
                Set set = rVar.f6009f;
                if (set == null || set.isEmpty()) {
                    handler.post(new androidx.fragment.app.p(16, rVar));
                } else {
                    n4.a aVar3 = rVar.h;
                    aVar3.getClass();
                    aVar3.connect(new com.google.android.gms.common.internal.o(aVar3));
                }
            }
            try {
                aVar.connect(lVar);
            } catch (SecurityException e9) {
                m(new ConnectionResult(10), e9);
            }
        } catch (IllegalStateException e10) {
            m(new ConnectionResult(10), e10);
        }
    }

    public final void l(o oVar) {
        d0.b(this.f5990m.f5977m);
        boolean zIsConnected = this.f5981c.isConnected();
        LinkedList linkedList = this.f5980b;
        if (zIsConnected) {
            if (i(oVar)) {
                h();
                return;
            } else {
                linkedList.add(oVar);
                return;
            }
        }
        linkedList.add(oVar);
        ConnectionResult connectionResult = this.f5989l;
        if (connectionResult == null || connectionResult.f1389b == 0 || connectionResult.f1390c == null) {
            k();
        } else {
            m(connectionResult, null);
        }
    }

    public final void m(ConnectionResult connectionResult, RuntimeException runtimeException) {
        n4.a aVar;
        d0.b(this.f5990m.f5977m);
        r rVar = this.f5986i;
        if (rVar != null && (aVar = rVar.h) != null) {
            aVar.disconnect();
        }
        d0.b(this.f5990m.f5977m);
        this.f5989l = null;
        ((SparseIntArray) this.f5990m.f5972g.f1990b).clear();
        a(connectionResult);
        if ((this.f5981c instanceof z3.c) && connectionResult.f1389b != 24) {
            d dVar = this.f5990m;
            dVar.f5967b = true;
            r0 r0Var = dVar.f5977m;
            r0Var.sendMessageDelayed(r0Var.obtainMessage(19), 300000L);
        }
        if (connectionResult.f1389b == 4) {
            c(d.f5963p);
            return;
        }
        if (this.f5980b.isEmpty()) {
            this.f5989l = connectionResult;
            return;
        }
        if (runtimeException != null) {
            d0.b(this.f5990m.f5977m);
            d(null, runtimeException, false);
            return;
        }
        if (!this.f5990m.f5978n) {
            c(d.b(this.f5982d, connectionResult));
            return;
        }
        d(d.b(this.f5982d, connectionResult), null, true);
        if (this.f5980b.isEmpty() || j(connectionResult) || this.f5990m.a(connectionResult, this.h)) {
            return;
        }
        if (connectionResult.f1389b == 18) {
            this.f5987j = true;
        }
        if (!this.f5987j) {
            c(d.b(this.f5982d, connectionResult));
            return;
        }
        d dVar2 = this.f5990m;
        a aVar2 = this.f5982d;
        r0 r0Var2 = dVar2.f5977m;
        r0Var2.sendMessageDelayed(Message.obtain(r0Var2, 9, aVar2), 5000L);
    }

    public final void n(ConnectionResult connectionResult) {
        d0.b(this.f5990m.f5977m);
        w3.a aVar = this.f5981c;
        aVar.disconnect("onSignInFailed for " + aVar.getClass().getName() + " with " + String.valueOf(connectionResult));
        m(connectionResult, null);
    }

    public final void o() {
        d0.b(this.f5990m.f5977m);
        Status status = d.f5962o;
        c(status);
        this.f5983e.c(false, status);
        for (g gVar : (g[]) this.f5985g.keySet().toArray(new g[0])) {
            l(new t(new p4.j()));
        }
        a(new ConnectionResult(4));
        w3.a aVar = this.f5981c;
        if (aVar.isConnected()) {
            aVar.onUserSignOut(new k1.h(29, this));
        }
    }

    @Override // w3.d
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        m(connectionResult, null);
    }

    @Override // w3.c
    public final void onConnectionSuspended(int i6) {
        Looper looperMyLooper = Looper.myLooper();
        r0 r0Var = this.f5990m.f5977m;
        if (looperMyLooper == r0Var.getLooper()) {
            g(i6);
        } else {
            r0Var.post(new p0.i(this, i6));
        }
    }
}
