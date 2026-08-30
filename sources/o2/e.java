package o2;

import a2.g;
import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e implements ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final HashMap f4413d = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f4414a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f4415b = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f4416c = new AtomicBoolean(false);

    public e(Activity activity) {
        this.f4414a = new WeakReference(activity);
    }

    public final void a() {
        if (v2.a.b(this)) {
            return;
        }
        try {
            g gVar = new g(11, this);
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                gVar.run();
            } else {
                this.f4415b.post(gVar);
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        if (v2.a.b(this)) {
            return;
        }
        try {
            a();
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }
}
