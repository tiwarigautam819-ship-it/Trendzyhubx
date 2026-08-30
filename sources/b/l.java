package b;

import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l implements k, ViewTreeObserver.OnDrawListener, Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f811a = SystemClock.uptimeMillis() + ((long) 10000);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Runnable f812b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f813c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ androidx.fragment.app.h0 f814d;

    public l(androidx.fragment.app.h0 h0Var) {
        this.f814d = h0Var;
    }

    public final void a(View view) {
        if (this.f813c) {
            return;
        }
        this.f813c = true;
        view.getViewTreeObserver().addOnDrawListener(this);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        d7.g.f("runnable", runnable);
        this.f812b = runnable;
        View decorView = this.f814d.getWindow().getDecorView();
        d7.g.e("window.decorView", decorView);
        if (!this.f813c) {
            decorView.postOnAnimation(new a2.g(2, this));
        } else if (d7.g.a(Looper.myLooper(), Looper.getMainLooper())) {
            decorView.invalidate();
        } else {
            decorView.postInvalidate();
        }
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public final void onDraw() {
        boolean z5;
        Runnable runnable = this.f812b;
        if (runnable == null) {
            if (SystemClock.uptimeMillis() > this.f811a) {
                this.f813c = false;
                this.f814d.getWindow().getDecorView().post(this);
                return;
            }
            return;
        }
        runnable.run();
        this.f812b = null;
        s fullyDrawnReporter = this.f814d.getFullyDrawnReporter();
        synchronized (fullyDrawnReporter.f824a) {
            z5 = fullyDrawnReporter.f825b;
        }
        if (z5) {
            this.f813c = false;
            this.f814d.getWindow().getDecorView().post(this);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f814d.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(this);
    }
}
