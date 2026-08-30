package u3;

import android.content.Context;
import android.util.Log;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import p4.q;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static n f5483e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f5484a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScheduledExecutorService f5485b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public l f5486c = new l(this);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5487d = 1;

    public n(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f5485b = scheduledExecutorService;
        this.f5484a = context.getApplicationContext();
    }

    public static synchronized n a(Context context) {
        try {
            if (f5483e == null) {
                f5483e = new n(context, Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, new c4.a("MessengerIpcClient"))));
            }
        } catch (Throwable th) {
            throw th;
        }
        return f5483e;
    }

    public final synchronized q b(m mVar) {
        try {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                Log.d("MessengerIpcClient", "Queueing ".concat(mVar.toString()));
            }
            if (!this.f5486c.d(mVar)) {
                l lVar = new l(this);
                this.f5486c = lVar;
                lVar.d(mVar);
            }
        } catch (Throwable th) {
            throw th;
        }
        return mVar.f5479b.f4641a;
    }
}
