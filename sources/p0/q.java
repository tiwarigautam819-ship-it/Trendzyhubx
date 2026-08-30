package p0;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4603a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final g0.e f4604b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final o3.a f4605c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f4606d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Handler f4607e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ThreadPoolExecutor f4608f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ThreadPoolExecutor f4609g;
    public x2.a h;

    public q(Context context, g0.e eVar) {
        b2.k.b("Context cannot be null", context);
        this.f4603a = context.getApplicationContext();
        this.f4604b = eVar;
        this.f4605c = r.f4610d;
    }

    @Override // p0.j
    public final void a(x2.a aVar) {
        synchronized (this.f4606d) {
            this.h = aVar;
        }
        c();
    }

    public final void b() {
        synchronized (this.f4606d) {
            try {
                this.h = null;
                Handler handler = this.f4607e;
                if (handler != null) {
                    handler.removeCallbacks(null);
                }
                this.f4607e = null;
                ThreadPoolExecutor threadPoolExecutor = this.f4609g;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.shutdown();
                }
                this.f4608f = null;
                this.f4609g = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c() {
        synchronized (this.f4606d) {
            try {
                if (this.h == null) {
                    return;
                }
                if (this.f4608f == null) {
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new a("emojiCompat"));
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                    this.f4609g = threadPoolExecutor;
                    this.f4608f = threadPoolExecutor;
                }
                this.f4608f.execute(new a2.g(12, this));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final g0.j d() {
        try {
            o3.a aVar = this.f4605c;
            Context context = this.f4603a;
            g0.e eVar = this.f4604b;
            aVar.getClass();
            Object[] objArr = {eVar};
            ArrayList arrayList = new ArrayList(1);
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            arrayList.add(obj);
            g.j jVarA = g0.d.a(context, Collections.unmodifiableList(arrayList));
            int i6 = jVarA.f2742a;
            if (i6 != 0) {
                throw new RuntimeException(a1.a.j(i6, "fetchFonts failed (", ")"));
            }
            g0.j[] jVarArr = (g0.j[]) ((List) jVarA.f2743b).get(0);
            if (jVarArr == null || jVarArr.length == 0) {
                throw new RuntimeException("fetchFonts failed (empty result)");
            }
            return jVarArr[0];
        } catch (PackageManager.NameNotFoundException e9) {
            throw new RuntimeException("provider not found", e9);
        }
    }
}
