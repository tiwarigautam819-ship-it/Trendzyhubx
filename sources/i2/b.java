package i2;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements ServiceConnection {
    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        d7.g.f("name", componentName);
        d7.g.f("service", iBinder);
        AtomicBoolean atomicBoolean = e.f3093a;
        Context contextA = x1.r.a();
        o oVar = o.f3157a;
        Object objH = null;
        if (!v2.a.b(o.class)) {
            try {
                objH = o.f3157a.h(contextA, "com.android.vending.billing.IInAppBillingService$Stub", "asInterface", null, new Object[]{iBinder});
            } catch (Throwable th) {
                v2.a.a(th, o.class);
            }
        }
        e.f3099g = objH;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        d7.g.f("name", componentName);
    }
}
