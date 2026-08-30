package androidx.lifecycle;

import android.os.Looper;
import android.util.Log;
import android.view.View;
import androidx.fragment.app.y0;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class y {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Object f753j = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f754a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final o.f f755b = new o.f();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f756c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f757d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile Object f758e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile Object f759f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f760g;
    public boolean h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f761i;

    public y() {
        Object obj = f753j;
        this.f759f = obj;
        this.f758e = obj;
        this.f760g = -1;
    }

    public static void a(String str) {
        n.a.n().f4310a.getClass();
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException(q2.x.g("Cannot invoke ", str, " on a background thread"));
        }
    }

    public final void b(x xVar) {
        if (xVar.f750b) {
            int i6 = xVar.f751c;
            int i9 = this.f760g;
            if (i6 >= i9) {
                return;
            }
            xVar.f751c = i9;
            k1.h hVar = xVar.f749a;
            Object obj = this.f758e;
            hVar.getClass();
            t tVar = (t) obj;
            androidx.fragment.app.t tVar2 = (androidx.fragment.app.t) hVar.f3502b;
            if (tVar == null || !tVar2.f615k0) {
                return;
            }
            View viewG = tVar2.G();
            if (viewG.getParent() != null) {
                throw new IllegalStateException("DialogFragment can not be attached to a container view");
            }
            if (tVar2.f619o0 != null) {
                if (y0.J(3)) {
                    Log.d("FragmentManager", "DialogFragment " + hVar + " setting the content view on " + tVar2.f619o0);
                }
                tVar2.f619o0.setContentView(viewG);
            }
        }
    }

    public final void c(x xVar) {
        if (this.h) {
            this.f761i = true;
            return;
        }
        this.h = true;
        do {
            this.f761i = false;
            if (xVar != null) {
                b(xVar);
                xVar = null;
            } else {
                o.f fVar = this.f755b;
                fVar.getClass();
                o.d dVar = new o.d(fVar);
                fVar.f4392c.put(dVar, Boolean.FALSE);
                while (dVar.hasNext()) {
                    b((x) ((Map.Entry) dVar.next()).getValue());
                    if (this.f761i) {
                        break;
                    }
                }
            }
        } while (this.f761i);
        this.h = false;
    }

    public final void d(Object obj) {
        a("setValue");
        this.f760g++;
        this.f758e = obj;
        c(null);
    }
}
