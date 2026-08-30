package m2;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.List;
import java.util.concurrent.TimeUnit;
import q2.l;
import x1.r;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f4251a = new e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Boolean f4252b;

    public final Intent a(Context context) {
        if (!v2.a.b(this)) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null) {
                    Intent intent = new Intent("ReceiverService");
                    intent.setPackage("com.facebook.katana");
                    if (packageManager.resolveService(intent, 0) != null && l.a(context, "com.facebook.katana")) {
                        return intent;
                    }
                    Intent intent2 = new Intent("ReceiverService");
                    intent2.setPackage("com.facebook.wakizashi");
                    if (packageManager.resolveService(intent2, 0) != null) {
                        if (l.a(context, "com.facebook.wakizashi")) {
                            return intent2;
                        }
                    }
                }
            } catch (Throwable th) {
                v2.a.a(th, this);
                return null;
            }
        }
        return null;
    }

    public final int b(int i6, String str, List list) {
        if (v2.a.b(this)) {
            return 0;
        }
        try {
            Context contextA = r.a();
            Intent intentA = a(contextA);
            int i9 = 2;
            if (intentA == null) {
                return 2;
            }
            d dVar = new d();
            try {
                if (!contextA.bindService(intentA, dVar, 1)) {
                    return 3;
                }
                try {
                    dVar.f4249a.await(5L, TimeUnit.SECONDS);
                    IBinder iBinder = dVar.f4250b;
                    if (iBinder != null) {
                        z2.c cVarB = z2.b.b(iBinder);
                        Bundle bundleA = c.a(i6, str, list);
                        if (bundleA != null) {
                            ((z2.a) cVarB).b(bundleA);
                            bundleA.toString();
                        }
                        i9 = 1;
                    }
                    contextA.unbindService(dVar);
                    return i9;
                } catch (RemoteException unused) {
                    r rVar = r.f5918a;
                    contextA.unbindService(dVar);
                    return 3;
                } catch (InterruptedException unused2) {
                    r rVar2 = r.f5918a;
                    contextA.unbindService(dVar);
                    return 3;
                }
            } catch (Throwable th) {
                contextA.unbindService(dVar);
                r rVar3 = r.f5918a;
                throw th;
            }
        } catch (Throwable th2) {
            v2.a.a(th2, this);
            return 0;
        }
    }
}
