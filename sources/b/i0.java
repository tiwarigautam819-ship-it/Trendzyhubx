package b;

import android.os.Build;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import java.util.Iterator;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Runnable f802a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s6.e f803b = new s6.e();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public y f804c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final OnBackInvokedCallback f805d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public OnBackInvokedDispatcher f806e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f807f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f808g;

    public i0(Runnable runnable) {
        OnBackInvokedCallback onBackInvokedCallbackA;
        this.f802a = runnable;
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 33) {
            if (i6 >= 34) {
                onBackInvokedCallbackA = e0.f789a.a(new z(this, 0), new z(this, 1), new a0(this, 0), new a0(this, 1));
            } else {
                onBackInvokedCallbackA = c0.f780a.a(new a0(this, 2));
            }
            this.f805d = onBackInvokedCallbackA;
        }
    }

    public final void a(androidx.lifecycle.t tVar, y yVar) {
        d7.g.f("owner", tVar);
        d7.g.f("onBackPressedCallback", yVar);
        androidx.lifecycle.o lifecycle = tVar.getLifecycle();
        if (((androidx.lifecycle.v) lifecycle).f741c == androidx.lifecycle.n.f718a) {
            return;
        }
        yVar.f835b.add(new f0(this, lifecycle, yVar));
        e();
        yVar.f836c = new h0(0, this);
    }

    public final void b() {
        Object objPrevious;
        y yVar = this.f804c;
        if (yVar == null) {
            s6.e eVar = this.f803b;
            ListIterator<E> listIterator = eVar.listIterator(eVar.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    objPrevious = null;
                    break;
                } else {
                    objPrevious = listIterator.previous();
                    if (((y) objPrevious).f834a) {
                        break;
                    }
                }
            }
            yVar = (y) objPrevious;
        }
        this.f804c = null;
        if (yVar != null) {
            yVar.a();
        }
    }

    public final void c() {
        Object objPrevious;
        y yVar = this.f804c;
        if (yVar == null) {
            s6.e eVar = this.f803b;
            eVar.getClass();
            ListIterator listIterator = eVar.listIterator(eVar.f5280c);
            while (true) {
                if (!listIterator.hasPrevious()) {
                    objPrevious = null;
                    break;
                } else {
                    objPrevious = listIterator.previous();
                    if (((y) objPrevious).f834a) {
                        break;
                    }
                }
            }
            yVar = (y) objPrevious;
        }
        this.f804c = null;
        if (yVar != null) {
            yVar.b();
        } else {
            this.f802a.run();
        }
    }

    public final void d(boolean z5) {
        OnBackInvokedCallback onBackInvokedCallback;
        OnBackInvokedDispatcher onBackInvokedDispatcher = this.f806e;
        if (onBackInvokedDispatcher == null || (onBackInvokedCallback = this.f805d) == null) {
            return;
        }
        c0 c0Var = c0.f780a;
        if (z5 && !this.f807f) {
            c0Var.b(onBackInvokedDispatcher, 0, onBackInvokedCallback);
            this.f807f = true;
        } else {
            if (z5 || !this.f807f) {
                return;
            }
            c0Var.c(onBackInvokedDispatcher, onBackInvokedCallback);
            this.f807f = false;
        }
    }

    public final void e() {
        boolean z5 = this.f808g;
        boolean z8 = false;
        s6.e eVar = this.f803b;
        if (eVar == null || !eVar.isEmpty()) {
            Iterator it = eVar.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((y) it.next()).f834a) {
                    z8 = true;
                    break;
                }
            }
        }
        this.f808g = z8;
        if (z8 == z5 || Build.VERSION.SDK_INT < 33) {
            return;
        }
        d(z8);
    }
}
