package k2;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.util.Log;
import com.engagelab.privates.common.constants.MTCommonConstants;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Timer;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicInteger;
import q2.g0;
import q2.t;
import q2.w;
import q2.z;
import x1.e0;
import x1.r;
import y2.p;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3515a;

    public /* synthetic */ c(int i6) {
        this.f3515a = i6;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        int i6 = this.f3515a;
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
        switch (i6) {
            case 0:
                o3.a aVar = z.f4846c;
                o3.a.i(e0.f5840d, d.f3516a, "onActivityCreated");
                d.f3517b.execute(new i2.c(3));
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        int i6 = this.f3515a;
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
        switch (i6) {
            case 0:
                o3.a aVar = z.f4846c;
                o3.a.i(e0.f5840d, d.f3516a, "onActivityDestroyed");
                b2.f fVar = b2.f.f912a;
                if (!v2.a.b(b2.f.class)) {
                    try {
                        b2.i iVarA = b2.i.f925f.a();
                        if (!v2.a.b(iVarA)) {
                            try {
                                iVarA.f931e.remove(Integer.valueOf(activity.hashCode()));
                            } catch (Throwable th) {
                                v2.a.a(th, iVarA);
                            }
                        }
                    } catch (Throwable th2) {
                        v2.a.a(th2, b2.f.class);
                        return;
                    }
                    break;
                }
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        int i6 = this.f3515a;
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
        switch (i6) {
            case 0:
                o3.a aVar = z.f4846c;
                String str = d.f3516a;
                o3.a.i(e0.f5840d, str, "onActivityPaused");
                AtomicInteger atomicInteger = d.f3521f;
                int i9 = 0;
                if (atomicInteger.decrementAndGet() < 0) {
                    atomicInteger.set(0);
                    Log.w(str, "Unexpected activity pause without a matching activity resume. Logging data may be incorrect. Make sure you call activateApp from your Application's onCreate method");
                }
                d.a();
                long jCurrentTimeMillis = System.currentTimeMillis();
                String strL = g0.l(activity);
                b2.f fVar = b2.f.f912a;
                if (!v2.a.b(b2.f.class)) {
                    try {
                        if (b2.f.f917f.get()) {
                            b2.i.f925f.a().c(activity);
                            b2.n nVar = b2.f.f915d;
                            if (nVar != null && !v2.a.b(nVar)) {
                                try {
                                    if (((Activity) nVar.f941b.get()) != null) {
                                        try {
                                            Timer timer = nVar.f942c;
                                            if (timer != null) {
                                                timer.cancel();
                                            }
                                            nVar.f942c = null;
                                        } catch (Exception e9) {
                                            Log.e(b2.n.f939e, "Error unscheduling indexing job", e9);
                                        }
                                    }
                                } catch (Throwable th) {
                                    v2.a.a(th, nVar);
                                }
                            }
                            SensorManager sensorManager = b2.f.f914c;
                            if (sensorManager != null) {
                                sensorManager.unregisterListener(b2.f.f913b);
                            }
                            break;
                        }
                    } catch (Throwable th2) {
                        v2.a.a(th2, b2.f.class);
                    }
                }
                d.f3517b.execute(new b(strL, jCurrentTimeMillis, i9));
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        int i6 = this.f3515a;
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
        switch (i6) {
            case 0:
                o3.a aVar = z.f4846c;
                o3.a.i(e0.f5840d, d.f3516a, "onActivityResumed");
                d.f3526l = new WeakReference(activity);
                d.f3521f.incrementAndGet();
                d.a();
                final long jCurrentTimeMillis = System.currentTimeMillis();
                d.f3524j = jCurrentTimeMillis;
                final String strL = g0.l(activity);
                b2.o oVar = b2.f.f913b;
                b2.f fVar = b2.f.f912a;
                int i9 = 2;
                if (!v2.a.b(b2.f.class)) {
                    try {
                        if (b2.f.f917f.get()) {
                            b2.i.f925f.a().a(activity);
                            Context applicationContext = activity.getApplicationContext();
                            String strB = r.b();
                            t tVarB = w.b(strB);
                            if (tVarB == null || !tVarB.f4816g) {
                                v2.a.b(fVar);
                            } else {
                                SensorManager sensorManager = (SensorManager) applicationContext.getSystemService("sensor");
                                if (sensorManager != null) {
                                    b2.f.f914c = sensorManager;
                                    Sensor defaultSensor = sensorManager.getDefaultSensor(1);
                                    b2.n nVar = new b2.n(activity);
                                    b2.f.f915d = nVar;
                                    b2.d dVar = new b2.d(tVarB, 0, strB);
                                    if (!v2.a.b(oVar)) {
                                        try {
                                            oVar.f944a = dVar;
                                        } catch (Throwable th) {
                                            v2.a.a(th, oVar);
                                        }
                                    }
                                    sensorManager.registerListener(oVar, defaultSensor, 2);
                                    if (tVarB.f4816g) {
                                        nVar.c();
                                    }
                                    break;
                                }
                            }
                            v2.a.b(fVar);
                            break;
                        }
                    } catch (Throwable th2) {
                        v2.a.a(th2, b2.f.class);
                    }
                }
                if (!v2.a.b(z1.a.class)) {
                    try {
                        if (z1.a.f6390b) {
                            CopyOnWriteArraySet copyOnWriteArraySet = z1.c.f6392d;
                            if (!new HashSet(z1.c.a()).isEmpty()) {
                                HashMap map = z1.d.f6396e;
                                z1.a.b(activity);
                                break;
                            }
                        }
                    } catch (Exception unused) {
                    } catch (Throwable th3) {
                        v2.a.a(th3, z1.a.class);
                    }
                }
                o2.d.d(activity);
                String str = d.f3527m;
                if (str != null && k7.g.x(str, "ProxyBillingActivity") && !strL.equals("ProxyBillingActivity")) {
                    d.f3518c.execute(new i2.c(i9));
                }
                final Context applicationContext2 = activity.getApplicationContext();
                d.f3517b.execute(new Runnable() { // from class: k2.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        n nVar2;
                        long j3 = jCurrentTimeMillis;
                        String str2 = strL;
                        Context context = applicationContext2;
                        n nVar3 = d.f3522g;
                        Long l4 = nVar3 != null ? (Long) nVar3.f3546c : null;
                        if (d.f3522g == null) {
                            d.f3522g = new n(Long.valueOf(j3), null);
                            String str3 = d.f3523i;
                            d7.g.e("appContext", context);
                            o.b(context, str2, str3);
                        } else if (l4 != null) {
                            long jLongValue = j3 - l4.longValue();
                            String str4 = d.f3516a;
                            if (jLongValue > (w.b(r.b()) == null ? 60 : r4.f4811b) * 1000) {
                                o.d(str2, d.f3522g, d.f3523i);
                                String str5 = d.f3523i;
                                d7.g.e("appContext", context);
                                o.b(context, str2, str5);
                                d.f3522g = new n(Long.valueOf(j3), null);
                            } else if (jLongValue > 1000 && (nVar2 = d.f3522g) != null) {
                                nVar2.f3544a++;
                            }
                        }
                        n nVar4 = d.f3522g;
                        if (nVar4 != null) {
                            nVar4.f3546c = Long.valueOf(j3);
                        }
                        n nVar5 = d.f3522g;
                        if (nVar5 != null) {
                            nVar5.l();
                        }
                    }
                });
                d.f3527m = strL;
                break;
            default:
                i iVarA = i.f3533b.a();
                if (iVarA != null) {
                    iVarA.b(activity);
                }
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        int i6 = this.f3515a;
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
        switch (i6) {
            case 0:
                d7.g.f("outState", bundle);
                o3.a aVar = z.f4846c;
                o3.a.i(e0.f5840d, d.f3516a, "onActivitySaveInstanceState");
                break;
            default:
                d7.g.f("bundle", bundle);
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        int i6 = this.f3515a;
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
        switch (i6) {
            case 0:
                d.f3525k++;
                o3.a aVar = z.f4846c;
                o3.a.i(e0.f5840d, d.f3516a, "onActivityStarted");
                break;
            default:
                i iVarA = i.f3533b.a();
                if (iVarA != null) {
                    iVarA.b(activity);
                }
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        int i6 = this.f3515a;
        d7.g.f(MTCommonConstants.Lifecycle.KEY_ACTIVITY, activity);
        switch (i6) {
            case 0:
                o3.a aVar = z.f4846c;
                o3.a.i(e0.f5840d, d.f3516a, "onActivityStopped");
                String str = y1.k.f6128c;
                p pVar = y1.i.f6124a;
                if (!v2.a.b(y1.i.class)) {
                    try {
                        y1.i.f6125b.execute(new i2.c(13));
                    } catch (Throwable th) {
                        v2.a.a(th, y1.i.class);
                    }
                }
                d.f3525k--;
                break;
        }
    }
}
