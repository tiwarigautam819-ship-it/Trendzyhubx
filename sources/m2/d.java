package m2;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import d7.g;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CountDownLatch f4249a = new CountDownLatch(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public IBinder f4250b;

    @Override // android.content.ServiceConnection
    public final void onNullBinding(ComponentName componentName) {
        g.f("name", componentName);
        this.f4249a.countDown();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        g.f("name", componentName);
        g.f("serviceBinder", iBinder);
        this.f4250b = iBinder;
        this.f4249a.countDown();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        g.f("name", componentName);
    }
}
