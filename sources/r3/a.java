package r3;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f4963a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f4964b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CountDownLatch f4965c = new CountDownLatch(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f4966d = false;

    public a(AdvertisingIdClient advertisingIdClient, long j3) {
        this.f4963a = new WeakReference(advertisingIdClient);
        this.f4964b = j3;
        start();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        AdvertisingIdClient advertisingIdClient;
        WeakReference weakReference = this.f4963a;
        try {
            if (this.f4965c.await(this.f4964b, TimeUnit.MILLISECONDS) || (advertisingIdClient = (AdvertisingIdClient) weakReference.get()) == null) {
                return;
            }
            advertisingIdClient.a();
            this.f4966d = true;
        } catch (InterruptedException unused) {
            AdvertisingIdClient advertisingIdClient2 = (AdvertisingIdClient) weakReference.get();
            if (advertisingIdClient2 != null) {
                advertisingIdClient2.a();
                this.f4966d = true;
            }
        }
    }
}
