package com.google.android.gms.ads.identifier;

import a4.b;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.google.android.gms.common.internal.d0;
import com.google.firebase.messaging.x;
import g4.c;
import g4.d;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import v3.e;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class AdvertisingIdClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public v3.a f1365a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public d f1366b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1367c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f1368d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public r3.a f1369e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Context f1370f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f1371g;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static final class Info {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f1372a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f1373b;

        public Info(String str, boolean z5) {
            this.f1372a = str;
            this.f1373b = z5;
        }

        public String getId() {
            return this.f1372a;
        }

        public boolean isLimitAdTrackingEnabled() {
            return this.f1373b;
        }

        public final String toString() {
            String str = this.f1372a;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
            sb.append("{");
            sb.append(str);
            sb.append("}");
            sb.append(this.f1373b);
            return sb.toString();
        }
    }

    public AdvertisingIdClient(Context context) {
        d0.h(context);
        Context applicationContext = context.getApplicationContext();
        this.f1370f = applicationContext != null ? applicationContext : context;
        this.f1367c = false;
        this.f1371g = -1L;
    }

    public static void c(Info info, long j3, Throwable th) {
        if (Math.random() <= 0.0d) {
            HashMap map = new HashMap();
            map.put("app_context", "1");
            if (info != null) {
                map.put("limit_ad_tracking", true != info.isLimitAdTrackingEnabled() ? "0" : "1");
                String id = info.getId();
                if (id != null) {
                    map.put("ad_id_size", Integer.toString(id.length()));
                }
            }
            if (th != null) {
                map.put("error", th.getClass().getName());
            }
            map.put(MTPushConstants.Operation.KEY_TAG, "AdvertisingIdClient");
            map.put("time_spent", Long.toString(j3));
            new a(map).start();
        }
    }

    public static Info getAdvertisingIdInfo(Context context) {
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context);
        try {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            advertisingIdClient.b();
            Info infoD = advertisingIdClient.d();
            c(infoD, SystemClock.elapsedRealtime() - jElapsedRealtime, null);
            return infoD;
        } finally {
        }
    }

    public final void a() {
        d0.g("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (this.f1370f == null || this.f1365a == null) {
                    return;
                }
                try {
                    if (this.f1367c) {
                        b.b().c(this.f1370f, this.f1365a);
                    }
                } catch (Throwable th) {
                    Log.i("AdvertisingIdClient", "AdvertisingIdClient unbindService failed.", th);
                }
                this.f1367c = false;
                this.f1366b = null;
                this.f1365a = null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void b() {
        d0.g("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (this.f1367c) {
                    a();
                }
                Context context = this.f1370f;
                try {
                    context.getPackageManager().getPackageInfo("com.android.vending", 0);
                    int iB = e.f5544b.b(context, 12451000);
                    if (iB != 0 && iB != 2) {
                        throw new IOException("Google Play services not available");
                    }
                    v3.a aVar = new v3.a();
                    Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                    intent.setPackage("com.google.android.gms");
                    try {
                        if (!b.b().a(context, intent, aVar, 1)) {
                            throw new IOException("Connection failure");
                        }
                        this.f1365a = aVar;
                        try {
                            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                            IBinder iBinderA = aVar.a();
                            int i6 = c.f2869b;
                            IInterface iInterfaceQueryLocalInterface = iBinderA.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                            this.f1366b = iInterfaceQueryLocalInterface instanceof d ? (d) iInterfaceQueryLocalInterface : new g4.b(iBinderA);
                            this.f1367c = true;
                        } catch (InterruptedException unused) {
                            throw new IOException("Interrupted exception");
                        } catch (Throwable th) {
                            throw new IOException(th);
                        }
                    } finally {
                        IOException iOException = new IOException(th);
                    }
                } catch (PackageManager.NameNotFoundException unused2) {
                    throw new x();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final Info d() {
        Info info;
        d0.g("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (!this.f1367c) {
                    synchronized (this.f1368d) {
                        r3.a aVar = this.f1369e;
                        if (aVar == null || !aVar.f4966d) {
                            throw new IOException("AdvertisingIdClient is not connected.");
                        }
                    }
                    try {
                        b();
                        if (!this.f1367c) {
                            throw new IOException("AdvertisingIdClient cannot reconnect.");
                        }
                    } catch (Exception e9) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.", e9);
                    }
                }
                d0.h(this.f1365a);
                d0.h(this.f1366b);
                try {
                    g4.b bVar = (g4.b) this.f1366b;
                    bVar.getClass();
                    Parcel parcelObtain = Parcel.obtain();
                    parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    boolean z5 = true;
                    Parcel parcelB = bVar.b(1, parcelObtain);
                    String string = parcelB.readString();
                    parcelB.recycle();
                    g4.b bVar2 = (g4.b) this.f1366b;
                    bVar2.getClass();
                    Parcel parcelObtain2 = Parcel.obtain();
                    parcelObtain2.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    int i6 = g4.a.f2867a;
                    parcelObtain2.writeInt(1);
                    Parcel parcelB2 = bVar2.b(2, parcelObtain2);
                    if (parcelB2.readInt() == 0) {
                        z5 = false;
                    }
                    parcelB2.recycle();
                    info = new Info(string, z5);
                } catch (RemoteException e10) {
                    Log.i("AdvertisingIdClient", "GMS remote exception ", e10);
                    throw new IOException("Remote exception");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        e();
        return info;
    }

    public final void e() {
        synchronized (this.f1368d) {
            r3.a aVar = this.f1369e;
            if (aVar != null) {
                aVar.f4965c.countDown();
                try {
                    this.f1369e.join();
                } catch (InterruptedException unused) {
                }
            }
            long j3 = this.f1371g;
            if (j3 > 0) {
                this.f1369e = new r3.a(this, j3);
            }
        }
    }

    public final void finalize() throws Throwable {
        a();
        super.finalize();
    }
}
