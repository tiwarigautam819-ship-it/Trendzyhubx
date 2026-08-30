package androidx.fragment.app;

import android.os.SystemClock;
import android.util.Log;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.Window;
import android.view.animation.AnimationUtils;
import androidx.appcompat.widget.Toolbar;
import com.engagelab.privates.core.api.WakeMessage;
import com.google.android.gms.common.ConnectionResult;
import java.io.IOException;
import java.util.WeakHashMap;
import java.util.logging.Level;
import org.apache.cordova.NativeToJsMessageQueue$OnlineEventsBridgeMode;
import org.apache.cordova.engine.SystemWebView;
import org.apache.cordova.engine.SystemWebViewEngine;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class p implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f597a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f598b;

    public /* synthetic */ p(int i6, Object obj) {
        this.f597a = i6;
        this.f598b = obj;
    }

    private final void a() {
        synchronized (((p4.n) this.f598b).f4651c) {
            ((p4.c) ((p4.n) this.f598b).f4652d).a();
        }
    }

    private final void b() {
        u7.a aVarC;
        long jNanoTime;
        while (true) {
            u7.d dVar = (u7.d) this.f598b;
            synchronized (dVar) {
                aVarC = dVar.c();
            }
            if (aVarC == null) {
                return;
            }
            u7.c cVar = aVarC.f5508c;
            d7.g.c(cVar);
            u7.d dVar2 = (u7.d) this.f598b;
            boolean zIsLoggable = u7.d.f5519j.isLoggable(Level.FINE);
            if (zIsLoggable) {
                jNanoTime = System.nanoTime();
                y1.g.a(aVarC, cVar, "starting");
            } else {
                jNanoTime = -1;
            }
            try {
                u7.d.a(dVar2, aVarC);
                if (zIsLoggable) {
                    y1.g.a(aVarC, cVar, "finished run in ".concat(y1.g.l(System.nanoTime() - jNanoTime)));
                }
            } finally {
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f597a) {
            case 0:
                t tVar = (t) this.f598b;
                tVar.f611g0.onDismiss(tVar.f619o0);
                return;
            case 1:
                c0 c0Var = (c0) this.f598b;
                if (c0Var.S != null) {
                    c0Var.b().getClass();
                    return;
                }
                return;
            case 2:
                ((y0) this.f598b).z(true);
                return;
            case 3:
                g.n0 n0Var = (g.n0) this.f598b;
                Window.Callback callback = n0Var.f2754b;
                Menu menuP = n0Var.p();
                l.n nVar = menuP instanceof l.n ? (l.n) menuP : null;
                if (nVar != null) {
                    nVar.w();
                }
                try {
                    menuP.clear();
                    if (!callback.onCreatePanelMenu(0, menuP) || !callback.onPreparePanel(0, null, menuP)) {
                        menuP.clear();
                        break;
                    }
                    if (nVar != null) {
                        nVar.v();
                        return;
                    }
                    return;
                } catch (Throwable th) {
                    if (nVar != null) {
                        nVar.v();
                    }
                    throw th;
                }
            case 4:
                Object obj = ((k1.h) this.f598b).f3502b;
                return;
            case 5:
                i.e eVar = (i.e) this.f598b;
                eVar.a(true);
                eVar.invalidateSelf();
                return;
            case 6:
                m.m1 m1Var = (m.m1) this.f598b;
                m1Var.f4042l = null;
                m1Var.drawableStateChanged();
                return;
            case 7:
                ((Toolbar) this.f598b).u();
                return;
            case WakeMessage.ACTIVITY /* 8 */:
                m0.d dVar = (m0.d) this.f598b;
                m.m1 m1Var2 = dVar.f4189c;
                m0.a aVar = dVar.f4187a;
                if (dVar.f4200w) {
                    if (dVar.f4198m) {
                        dVar.f4198m = false;
                        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                        aVar.f4182e = jCurrentAnimationTimeMillis;
                        aVar.f4184g = -1L;
                        aVar.f4183f = jCurrentAnimationTimeMillis;
                        aVar.h = 0.5f;
                    }
                    if ((aVar.f4184g > 0 && AnimationUtils.currentAnimationTimeMillis() > aVar.f4184g + ((long) aVar.f4185i)) || !dVar.e()) {
                        dVar.f4200w = false;
                        return;
                    }
                    if (dVar.f4199v) {
                        dVar.f4199v = false;
                        long jUptimeMillis = SystemClock.uptimeMillis();
                        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                        m1Var2.onTouchEvent(motionEventObtain);
                        motionEventObtain.recycle();
                    }
                    if (aVar.f4183f == 0) {
                        throw new RuntimeException("Cannot compute scroll delta before calling start()");
                    }
                    long jCurrentAnimationTimeMillis2 = AnimationUtils.currentAnimationTimeMillis();
                    float fA = aVar.a(jCurrentAnimationTimeMillis2);
                    long j3 = jCurrentAnimationTimeMillis2 - aVar.f4183f;
                    aVar.f4183f = jCurrentAnimationTimeMillis2;
                    dVar.f4202y.scrollListBy((int) (j3 * ((fA * 4.0f) + ((-4.0f) * fA * fA)) * aVar.f4181d));
                    WeakHashMap weakHashMap = j0.k0.f3286a;
                    m1Var2.postOnAnimation(this);
                    return;
                }
                return;
            case 9:
                o4.a aVar2 = (o4.a) this.f598b;
                synchronized (aVar2.f4427a) {
                    try {
                        if (aVar2.b()) {
                            Log.e("WakeLock", String.valueOf(aVar2.f4435j).concat(" ** IS FORCE-RELEASED ON TIMEOUT **"));
                            aVar2.d();
                            if (aVar2.b()) {
                                aVar2.f4429c = 1;
                                aVar2.e();
                                return;
                            }
                            return;
                        }
                        return;
                    } finally {
                    }
                }
            case 10:
                NativeToJsMessageQueue$OnlineEventsBridgeMode nativeToJsMessageQueue$OnlineEventsBridgeMode = (NativeToJsMessageQueue$OnlineEventsBridgeMode) this.f598b;
                nativeToJsMessageQueue$OnlineEventsBridgeMode.f4484b = false;
                nativeToJsMessageQueue$OnlineEventsBridgeMode.f4485c = true;
                SystemWebView systemWebView = ((SystemWebViewEngine) ((k1.h) nativeToJsMessageQueue$OnlineEventsBridgeMode.f4483a).f3502b).f4504a;
                if (systemWebView != null) {
                    systemWebView.setNetworkAvailable(true);
                    return;
                }
                return;
            case 11:
                a();
                return;
            case 12:
                if (((p4.j) this.f598b).b(new IOException("TIMEOUT"))) {
                    Log.w("Rpc", "No response");
                    return;
                }
                return;
            case 13:
                b();
                return;
            case 14:
                ((x3.j) this.f598b).f();
                return;
            case 15:
                w3.a aVar3 = ((x3.j) ((k1.h) this.f598b).f3502b).f5981c;
                aVar3.disconnect(aVar3.getClass().getName().concat(" disconnecting because it was signed out."));
                return;
            case 16:
                ((x3.r) this.f598b).f6011i.b(new ConnectionResult(4));
                return;
            default:
                throw null;
        }
    }

    public p(x3.h hVar, g.j jVar) {
        this.f597a = 17;
        this.f598b = jVar;
    }

    public p(k1.h hVar, int i6) {
        this.f597a = 4;
        this.f598b = hVar;
    }
}
