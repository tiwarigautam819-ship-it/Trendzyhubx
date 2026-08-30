package z1;

import a2.i;
import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements ViewTreeObserver.OnGlobalFocusChangeListener {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final HashMap f6396e = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WeakReference f6399c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashSet f6397a = new LinkedHashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f6398b = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f6400d = new AtomicBoolean(false);

    public d(Activity activity) {
        this.f6399c = new WeakReference(activity);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x002f -> B:20:0x0032). Please report as a decompilation issue!!! */
    public final void a(View view) {
        if (v2.a.b(this)) {
            return;
        }
        try {
            i iVar = new i(view, 25, this);
            if (!v2.a.b(this)) {
                try {
                    if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                        iVar.run();
                    } else {
                        this.f6398b.post(iVar);
                    }
                } catch (Throwable th) {
                    v2.a.a(th, this);
                }
            }
        } catch (Throwable th2) {
            v2.a.a(th2, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00de A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x00dc A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void b(android.view.View r15) {
        /*
            Method dump skipped, instruction units count: 326
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: z1.d.b(android.view.View):void");
    }

    @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
    public final void onGlobalFocusChanged(View view, View view2) {
        if (v2.a.b(this)) {
            return;
        }
        if (view != null) {
            try {
                a(view);
            } catch (Throwable th) {
                v2.a.a(th, this);
                return;
            }
        }
        if (view2 != null) {
            a(view2);
        }
    }
}
