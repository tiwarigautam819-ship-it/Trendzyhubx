package x3;

import android.accounts.Account;
import android.content.Context;
import android.os.Handler;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.common.internal.v;
import com.google.android.gms.internal.measurement.r0;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class r extends j4.a implements w3.c, w3.d {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final m4.b f6005j = m4.c.f4279a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f6006c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Handler f6007d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final m4.b f6008e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Set f6009f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final com.google.android.gms.common.internal.g f6010g;
    public n4.a h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public l f6011i;

    public r(Context context, r0 r0Var, com.google.android.gms.common.internal.g gVar) {
        attachInterface(this, "com.google.android.gms.signin.internal.ISignInCallbacks");
        this.f6006c = context;
        this.f6007d = r0Var;
        this.f6010g = gVar;
        this.f6009f = (Set) gVar.f1409b;
        this.f6008e = f6005j;
    }

    @Override // w3.c
    public final void b() {
        GoogleSignInAccount googleSignInAccountA;
        n4.a aVar = this.h;
        aVar.getClass();
        boolean z5 = false;
        try {
            aVar.f4329c.getClass();
            Account account = new Account(com.google.android.gms.common.internal.f.DEFAULT_ACCOUNT, "com.google");
            if (com.google.android.gms.common.internal.f.DEFAULT_ACCOUNT.equals(account.name)) {
                Context context = aVar.getContext();
                ReentrantLock reentrantLock = t3.a.f5307c;
                d0.h(context);
                ReentrantLock reentrantLock2 = t3.a.f5307c;
                reentrantLock2.lock();
                try {
                    if (t3.a.f5308d == null) {
                        t3.a.f5308d = new t3.a(context.getApplicationContext());
                    }
                    t3.a aVar2 = t3.a.f5308d;
                    reentrantLock2.unlock();
                    String strA = aVar2.a("defaultGoogleSignInAccount");
                    if (!TextUtils.isEmpty(strA)) {
                        String strA2 = aVar2.a("googleSignInAccount:" + strA);
                        if (strA2 != null) {
                            try {
                                googleSignInAccountA = GoogleSignInAccount.a(strA2);
                            } catch (JSONException unused) {
                                googleSignInAccountA = null;
                            }
                        }
                    }
                    googleSignInAccountA = null;
                } catch (Throwable th) {
                    reentrantLock2.unlock();
                    throw th;
                }
            } else {
                googleSignInAccountA = null;
            }
            Integer num = aVar.f4331e;
            d0.h(num);
            v vVar = new v(2, account, num.intValue(), googleSignInAccountA);
            n4.c cVar = (n4.c) aVar.getService();
            cVar.getClass();
            Parcel parcelObtain = Parcel.obtain();
            parcelObtain.writeInterfaceToken(cVar.f2973d);
            int i6 = h4.b.f2974a;
            parcelObtain.writeInt(1);
            int iP = z7.d.p(20293, parcelObtain);
            z7.d.r(parcelObtain, 1, 4);
            parcelObtain.writeInt(1);
            z7.d.l(parcelObtain, 2, vVar, 0);
            z7.d.q(iP, parcelObtain);
            parcelObtain.writeStrongBinder(this);
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                cVar.f2972c.transact(12, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                parcelObtain.recycle();
                parcelObtain2.recycle();
            } catch (Throwable th2) {
                parcelObtain.recycle();
                parcelObtain2.recycle();
                throw th2;
            }
        } catch (RemoteException e9) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                this.f6007d.post(new s4.b(this, new n4.f(1, new ConnectionResult(8, null), null), 19, z5));
            } catch (RemoteException unused2) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e9);
            }
        }
    }

    @Override // w3.d
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.f6011i.b(connectionResult);
    }

    @Override // w3.c
    public final void onConnectionSuspended(int i6) {
        l lVar = this.f6011i;
        j jVar = (j) lVar.f5998f.f5974j.get(lVar.f5994b);
        if (jVar != null) {
            if (jVar.f5987j) {
                jVar.n(new ConnectionResult(17));
            } else {
                jVar.onConnectionSuspended(i6);
            }
        }
    }
}
