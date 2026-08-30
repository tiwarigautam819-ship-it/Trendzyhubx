package e5;

import android.content.Context;
import android.os.Build;
import com.google.firebase.messaging.b0;
import java.util.Set;
import java.util.concurrent.Executor;
import p4.q;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements f, g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f2397a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f2398b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final g5.a f2399c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Set f2400d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Executor f2401e;

    public d(Context context, String str, Set set, g5.a aVar, Executor executor) {
        this.f2397a = new b(context, 0, str);
        this.f2400d = set;
        this.f2401e = executor;
        this.f2399c = aVar;
        this.f2398b = context;
    }

    public final synchronized int a() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        b0 b0Var = (b0) this.f2397a.get();
        if (!b0Var.j(jCurrentTimeMillis)) {
            return 1;
        }
        b0Var.h();
        return 3;
    }

    public final q b() {
        if (Build.VERSION.SDK_INT >= 24 ? f0.c.d(this.f2398b) : true) {
            return j7.g.c(this.f2401e, new c(0, this));
        }
        return j7.g.l("");
    }

    public final void c() {
        if (this.f2400d.size() <= 0) {
            j7.g.l(null);
            return;
        }
        if (Build.VERSION.SDK_INT >= 24 ? f0.c.d(this.f2398b) : true) {
            j7.g.c(this.f2401e, new c(1, this));
        } else {
            j7.g.l(null);
        }
    }
}
