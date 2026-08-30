package x3;

import android.app.ActivityManager;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.SparseIntArray;
import com.engagelab.privates.core.api.WakeMessage;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.r0;
import com.google.android.gms.internal.measurement.y4;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Handler.Callback {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final Status f5962o = new Status(4, "Sign-out occurred while this API call was in progress.", null, null);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final Status f5963p = new Status(4, "The user must be signed in to make this API call.", null, null);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final Object f5964q = new Object();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static d f5965r;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f5966a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f5967b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.google.android.gms.common.internal.q f5968c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public z3.b f5969d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f5970e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final v3.d f5971f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final y4 f5972g;
    public final AtomicInteger h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicInteger f5973i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ConcurrentHashMap f5974j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final s.f f5975k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final s.f f5976l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final r0 f5977m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile boolean f5978n;

    public d(Context context, Looper looper) {
        v3.d dVar = v3.d.f5542d;
        this.f5966a = 10000L;
        this.f5967b = false;
        this.h = new AtomicInteger(1);
        this.f5973i = new AtomicInteger(0);
        this.f5974j = new ConcurrentHashMap(5, 0.75f, 1);
        this.f5975k = new s.f(0);
        this.f5976l = new s.f(0);
        this.f5978n = true;
        this.f5970e = context;
        r0 r0Var = new r0(looper, this);
        Looper.getMainLooper();
        this.f5977m = r0Var;
        this.f5971f = dVar;
        this.f5972g = new y4(7);
        PackageManager packageManager = context.getPackageManager();
        if (b4.c.f951f == null) {
            b4.c.f951f = Boolean.valueOf(b4.c.b() && packageManager.hasSystemFeature("android.hardware.type.automotive"));
        }
        if (b4.c.f951f.booleanValue()) {
            this.f5978n = false;
        }
        r0Var.sendMessage(r0Var.obtainMessage(6));
    }

    public static Status b(a aVar, ConnectionResult connectionResult) {
        return new Status(17, "API: " + ((String) aVar.f5954b.f5489b) + " is not available on this device. Connection failed with: " + String.valueOf(connectionResult), connectionResult.f1390c, connectionResult);
    }

    public static d d(Context context) {
        d dVar;
        synchronized (f5964q) {
            try {
                if (f5965r == null) {
                    Looper looper = com.google.android.gms.common.internal.k.b().getLooper();
                    Context applicationContext = context.getApplicationContext();
                    Object obj = v3.d.f5541c;
                    f5965r = new d(applicationContext, looper);
                }
                dVar = f5965r;
            } catch (Throwable th) {
                throw th;
            }
        }
        return dVar;
    }

    public final boolean a(ConnectionResult connectionResult, int i6) {
        v3.d dVar = this.f5971f;
        dVar.getClass();
        Context context = this.f5970e;
        if (!d4.a.c(context)) {
            int i9 = connectionResult.f1389b;
            PendingIntent activity = connectionResult.f1390c;
            if (!((i9 == 0 || activity == null) ? false : true)) {
                activity = null;
                Intent intentA = dVar.a(context, i9, null);
                if (intentA != null) {
                    activity = PendingIntent.getActivity(context, 0, intentA, 201326592);
                }
            }
            if (activity != null) {
                int i10 = GoogleApiActivity.f1392b;
                Intent intent = new Intent(context, (Class<?>) GoogleApiActivity.class);
                intent.putExtra("pending_intent", activity);
                intent.putExtra("failing_client_id", i6);
                intent.putExtra("notify_manager", true);
                dVar.f(context, i9, PendingIntent.getActivity(context, 0, intent, h4.d.f2977a | 134217728));
                return true;
            }
        }
        return false;
    }

    public final j c(z3.b bVar) {
        a aVar = bVar.f6407e;
        ConcurrentHashMap concurrentHashMap = this.f5974j;
        j jVar = (j) concurrentHashMap.get(aVar);
        if (jVar == null) {
            jVar = new j(this, bVar);
            concurrentHashMap.put(aVar, jVar);
        }
        if (jVar.f5981c.requiresSignIn()) {
            this.f5976l.add(aVar);
        }
        jVar.k();
        return jVar;
    }

    public final void e(ConnectionResult connectionResult, int i6) {
        if (a(connectionResult, i6)) {
            return;
        }
        r0 r0Var = this.f5977m;
        r0Var.sendMessage(r0Var.obtainMessage(5, i6, 0, connectionResult));
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        j jVar;
        v3.c[] cVarArrB;
        com.google.android.gms.common.internal.p pVar;
        int i6;
        com.google.android.gms.common.internal.p pVar2;
        int i9;
        int i10 = message.what;
        y4 y4Var = this.f5972g;
        u3.o oVar = z3.b.f6402i;
        com.google.android.gms.common.internal.s sVar = com.google.android.gms.common.internal.s.f1486b;
        Context context = this.f5970e;
        r0 r0Var = this.f5977m;
        ConcurrentHashMap concurrentHashMap = this.f5974j;
        switch (i10) {
            case 1:
                this.f5966a = true != ((Boolean) message.obj).booleanValue() ? 300000L : 10000L;
                r0Var.removeMessages(12);
                Iterator it = concurrentHashMap.keySet().iterator();
                while (it.hasNext()) {
                    r0Var.sendMessageDelayed(r0Var.obtainMessage(12, (a) it.next()), this.f5966a);
                }
                return true;
            case 2:
                message.obj.getClass();
                throw new ClassCastException();
            case 3:
                for (j jVar2 : concurrentHashMap.values()) {
                    d0.b(jVar2.f5990m.f5977m);
                    jVar2.f5989l = null;
                    jVar2.k();
                }
                return true;
            case 4:
            case WakeMessage.ACTIVITY /* 8 */:
            case 13:
                q qVar = (q) message.obj;
                z3.b bVar = qVar.f6004c;
                s sVar2 = qVar.f6002a;
                j jVarC = (j) concurrentHashMap.get(bVar.f6407e);
                if (jVarC == null) {
                    jVarC = c(qVar.f6004c);
                }
                if (!jVarC.f5981c.requiresSignIn() || this.f5973i.get() == qVar.f6003b) {
                    jVarC.l(sVar2);
                    return true;
                }
                sVar2.c(f5962o);
                jVarC.o();
                return true;
            case 5:
                int i11 = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                Iterator it2 = concurrentHashMap.values().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        jVar = (j) it2.next();
                        if (jVar.h == i11) {
                        }
                    } else {
                        jVar = null;
                    }
                }
                if (jVar == null) {
                    Log.wtf("GoogleApiManager", a1.a.j(i11, "Could not find API instance ", " while trying to fail enqueued calls."), new Exception());
                    return true;
                }
                int i12 = connectionResult.f1389b;
                if (i12 != 13) {
                    jVar.c(b(jVar.f5982d, connectionResult));
                    return true;
                }
                this.f5971f.getClass();
                int i13 = v3.f.f5549e;
                jVar.c(new Status(17, "Error resolution was canceled by the user, original error message: " + ConnectionResult.a(i12) + ": " + connectionResult.f1391d, null, null));
                return true;
            case 6:
                if (context.getApplicationContext() instanceof Application) {
                    c.b((Application) context.getApplicationContext());
                    c cVar = c.f5957e;
                    cVar.a(new i(this));
                    AtomicBoolean atomicBoolean = cVar.f5958a;
                    AtomicBoolean atomicBoolean2 = cVar.f5959b;
                    if (!atomicBoolean2.get()) {
                        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
                        ActivityManager.getMyMemoryState(runningAppProcessInfo);
                        if (!atomicBoolean2.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                            atomicBoolean.set(true);
                        }
                    }
                    if (!atomicBoolean.get()) {
                        this.f5966a = 300000L;
                        return true;
                    }
                }
                return true;
            case 7:
                c((z3.b) message.obj);
                return true;
            case 9:
                if (concurrentHashMap.containsKey(message.obj)) {
                    j jVar3 = (j) concurrentHashMap.get(message.obj);
                    d0.b(jVar3.f5990m.f5977m);
                    if (jVar3.f5987j) {
                        jVar3.k();
                        return true;
                    }
                }
                return true;
            case 10:
                s.f fVar = this.f5976l;
                fVar.getClass();
                s.a aVar = new s.a(fVar);
                while (aVar.hasNext()) {
                    j jVar4 = (j) concurrentHashMap.remove((a) aVar.next());
                    if (jVar4 != null) {
                        jVar4.o();
                    }
                }
                fVar.clear();
                return true;
            case 11:
                if (concurrentHashMap.containsKey(message.obj)) {
                    j jVar5 = (j) concurrentHashMap.get(message.obj);
                    d dVar = jVar5.f5990m;
                    d0.b(dVar.f5977m);
                    boolean z5 = jVar5.f5987j;
                    if (z5) {
                        a aVar2 = jVar5.f5982d;
                        r0 r0Var2 = jVar5.f5990m.f5977m;
                        if (z5) {
                            r0Var2.removeMessages(11, aVar2);
                            r0Var2.removeMessages(9, aVar2);
                            jVar5.f5987j = false;
                        }
                        jVar5.c(dVar.f5971f.b(dVar.f5970e, v3.e.f5543a) == 18 ? new Status(21, "Connection timed out waiting for Google Play services update to complete.", null, null) : new Status(22, "API failed to connect while resuming due to an unknown error.", null, null));
                        jVar5.f5981c.disconnect("Timing out connection while resuming.");
                        return true;
                    }
                }
                return true;
            case 12:
                if (concurrentHashMap.containsKey(message.obj)) {
                    j jVar6 = (j) concurrentHashMap.get(message.obj);
                    d0.b(jVar6.f5990m.f5977m);
                    w3.a aVar3 = jVar6.f5981c;
                    if (aVar3.isConnected() && jVar6.f5985g.isEmpty()) {
                        u3.o oVar2 = jVar6.f5983e;
                        if (((Map) oVar2.f5488a).isEmpty() && ((Map) oVar2.f5489b).isEmpty()) {
                            aVar3.disconnect("Timing out service connection.");
                            return true;
                        }
                        jVar6.h();
                    }
                    return true;
                }
                return true;
            case 14:
                message.obj.getClass();
                throw new ClassCastException();
            case 15:
                k kVar = (k) message.obj;
                if (concurrentHashMap.containsKey(kVar.f5991a)) {
                    j jVar7 = (j) concurrentHashMap.get(kVar.f5991a);
                    if (jVar7.f5988k.contains(kVar) && !jVar7.f5987j) {
                        if (jVar7.f5981c.isConnected()) {
                            jVar7.e();
                            return true;
                        }
                        jVar7.k();
                        return true;
                    }
                }
                return true;
            case 16:
                k kVar2 = (k) message.obj;
                if (concurrentHashMap.containsKey(kVar2.f5991a)) {
                    j jVar8 = (j) concurrentHashMap.get(kVar2.f5991a);
                    ArrayList arrayList = jVar8.f5988k;
                    r0 r0Var3 = jVar8.f5990m.f5977m;
                    LinkedList<o> linkedList = jVar8.f5980b;
                    if (arrayList.remove(kVar2)) {
                        r0Var3.removeMessages(15, kVar2);
                        r0Var3.removeMessages(16, kVar2);
                        v3.c cVar2 = kVar2.f5992b;
                        ArrayList arrayList2 = new ArrayList(linkedList.size());
                        for (o oVar3 : linkedList) {
                            if (oVar3 != null && (cVarArrB = oVar3.b(jVar8)) != null) {
                                int length = cVarArrB.length;
                                int i14 = 0;
                                while (true) {
                                    if (i14 >= length) {
                                    }
                                    if (!d0.k(cVarArrB[i14], cVar2)) {
                                        i14++;
                                    } else if (i14 >= 0) {
                                        arrayList2.add(oVar3);
                                    }
                                    break;
                                }
                            }
                        }
                        int size = arrayList2.size();
                        for (int i15 = 0; i15 < size; i15++) {
                            o oVar4 = (o) arrayList2.get(i15);
                            linkedList.remove(oVar4);
                            oVar4.d(new w3.g(cVar2));
                        }
                    }
                }
                return true;
            case 17:
                com.google.android.gms.common.internal.q qVar2 = this.f5968c;
                if (qVar2 != null) {
                    if (qVar2.f1484a > 0 || (!this.f5967b && (((pVar = (com.google.android.gms.common.internal.p) com.google.android.gms.common.internal.o.b().f1470a) == null || pVar.f1477b) && ((i6 = ((SparseIntArray) y4Var.f1990b).get(203400000, -1)) == -1 || i6 == 0)))) {
                        if (this.f5969d == null) {
                            this.f5969d = new z3.b(context, oVar, sVar, w3.b.f5721b);
                        }
                        this.f5969d.b(qVar2);
                    }
                    this.f5968c = null;
                    return true;
                }
                return true;
            case 18:
                ((p) message.obj).getClass();
                if (0 == 0) {
                    com.google.android.gms.common.internal.q qVar3 = new com.google.android.gms.common.internal.q(Arrays.asList(null), 0);
                    if (this.f5969d == null) {
                        this.f5969d = new z3.b(context, oVar, sVar, w3.b.f5721b);
                    }
                    this.f5969d.b(qVar3);
                    return true;
                }
                com.google.android.gms.common.internal.q qVar4 = this.f5968c;
                if (qVar4 != null) {
                    List list = qVar4.f1485b;
                    if (qVar4.f1484a != 0 || (list != null && list.size() >= 0)) {
                        r0Var.removeMessages(17);
                        com.google.android.gms.common.internal.q qVar5 = this.f5968c;
                        if (qVar5 != null) {
                            if (qVar5.f1484a > 0 || (!this.f5967b && (((pVar2 = (com.google.android.gms.common.internal.p) com.google.android.gms.common.internal.o.b().f1470a) == null || pVar2.f1477b) && ((i9 = ((SparseIntArray) y4Var.f1990b).get(203400000, -1)) == -1 || i9 == 0)))) {
                                if (this.f5969d == null) {
                                    this.f5969d = new z3.b(context, oVar, sVar, w3.b.f5721b);
                                }
                                this.f5969d.b(qVar5);
                            }
                            this.f5968c = null;
                        }
                    } else {
                        com.google.android.gms.common.internal.q qVar6 = this.f5968c;
                        if (qVar6.f1485b == null) {
                            qVar6.f1485b = new ArrayList();
                        }
                        qVar6.f1485b.add(null);
                    }
                }
                if (this.f5968c == null) {
                    ArrayList arrayList3 = new ArrayList();
                    arrayList3.add(null);
                    this.f5968c = new com.google.android.gms.common.internal.q(arrayList3, 0);
                    r0Var.sendMessageDelayed(r0Var.obtainMessage(17), 0L);
                    return true;
                }
                return true;
            case 19:
                this.f5967b = false;
                return true;
            default:
                Log.w("GoogleApiManager", "Unknown message id: " + i10);
                return false;
        }
    }
}
