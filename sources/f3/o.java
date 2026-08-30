package f3;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.measurement.r0;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2581a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f2582b;

    public /* synthetic */ o(int i6, Object obj) {
        this.f2581a = i6;
        this.f2582b = obj;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f2581a) {
            case 0:
                ((Executor) this.f2582b).execute(new c4.b(runnable, 1));
                return;
            case 1:
                Handler handler = (Handler) this.f2582b;
                runnable.getClass();
                if (handler.post(runnable)) {
                    return;
                }
                throw new RejectedExecutionException(handler + " is shutting down");
            default:
                ((r0) this.f2582b).post(runnable);
                return;
        }
    }

    public o() {
        this.f2581a = 2;
        r0 r0Var = new r0(Looper.getMainLooper());
        Looper.getMainLooper();
        this.f2582b = r0Var;
    }
}
