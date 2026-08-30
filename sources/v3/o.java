package v3;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.a0;
import com.google.android.gms.common.internal.b0;
import com.google.android.gms.common.internal.c0;
import com.google.android.gms.common.internal.d0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k f5567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final k f5568b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile c0 f5569c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Object f5570d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Context f5571e;

    static {
        new k(l.d("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\bsù/\u008eQí"), 0);
        new k(l.d("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014\u0003£²\u00ad×árÊkì"), 1);
        f5567a = new k(l.d("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t\u0000Âà\u0087FdJ0\u008d0"), 2);
        f5568b = new k(l.d("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t\u0000Õ\u0085¸l}ÓNõ0"), 3);
        f5570d = new Object();
    }

    public static synchronized void a(Context context) {
        if (f5571e != null) {
            Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
        } else if (context != null) {
            f5571e = context.getApplicationContext();
        }
    }

    public static r b(String str, m mVar, boolean z5, boolean z8) {
        try {
            c();
            d0.h(f5571e);
            try {
                c0 c0Var = f5569c;
                e4.b bVar = new e4.b(f5571e.getPackageManager());
                a0 a0Var = (a0) c0Var;
                Parcel parcelC = a0Var.c();
                int i6 = j4.b.f3372a;
                boolean z9 = true;
                parcelC.writeInt(1);
                int iP = z7.d.p(20293, parcelC);
                z7.d.m(parcelC, 1, str);
                z7.d.k(parcelC, 2, mVar);
                z7.d.r(parcelC, 3, 4);
                parcelC.writeInt(z5 ? 1 : 0);
                z7.d.r(parcelC, 4, 4);
                parcelC.writeInt(z8 ? 1 : 0);
                z7.d.q(iP, parcelC);
                j4.b.c(parcelC, bVar);
                Parcel parcelB = a0Var.b(5, parcelC);
                if (parcelB.readInt() == 0) {
                    z9 = false;
                }
                parcelB.recycle();
                return z9 ? r.f5577d : new q(new j(z5, str, mVar));
            } catch (RemoteException e9) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e9);
                return new r(false, "module call", e9);
            }
        } catch (f4.b e10) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e10);
            return new r(false, "module init: ".concat(String.valueOf(e10.getMessage())), e10);
        }
    }

    public static void c() {
        c0 a0Var;
        if (f5569c != null) {
            return;
        }
        d0.h(f5571e);
        synchronized (f5570d) {
            try {
                if (f5569c == null) {
                    IBinder iBinderB = f4.e.c(f5571e, f4.e.f2595c, "com.google.android.gms.googlecertificates").b("com.google.android.gms.common.GoogleCertificatesImpl");
                    int i6 = b0.f1401c;
                    if (iBinderB == null) {
                        a0Var = null;
                    } else {
                        IInterface iInterfaceQueryLocalInterface = iBinderB.queryLocalInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
                        a0Var = iInterfaceQueryLocalInterface instanceof c0 ? (c0) iInterfaceQueryLocalInterface : new a0(iBinderB, "com.google.android.gms.common.internal.IGoogleCertificatesApi", 1);
                    }
                    f5569c = a0Var;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
