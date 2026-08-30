package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class f {
    public static final int CONNECT_STATE_CONNECTED = 4;
    public static final int CONNECT_STATE_DISCONNECTED = 1;
    public static final int CONNECT_STATE_DISCONNECTING = 5;
    public static final String DEFAULT_ACCOUNT = "<<default account>>";
    public static final String KEY_PENDING_INTENT = "pendingIntent";
    private volatile String zzA;
    p0 zza;
    final Handler zzb;
    protected d zzc;
    private int zzf;
    private long zzg;
    private long zzh;
    private int zzi;
    private long zzj;
    private final Context zzl;
    private final Looper zzm;
    private final k zzn;
    private final v3.e zzo;
    private m zzr;
    private IInterface zzs;
    private g0 zzu;
    private final b zzw;
    private final c zzx;
    private final int zzy;
    private final String zzz;
    private static final v3.c[] zze = new v3.c[0];
    public static final String[] GOOGLE_PLUS_REQUIRED_FEATURES = {"service_esmobile", "service_googleme"};
    private volatile String zzk = null;
    private final Object zzp = new Object();
    private final Object zzq = new Object();
    private final ArrayList zzt = new ArrayList();
    private int zzv = 1;
    private ConnectionResult zzB = null;
    private boolean zzC = false;
    private volatile j0 zzD = null;
    protected AtomicInteger zzd = new AtomicInteger(0);

    public f(Context context, Looper looper, o0 o0Var, v3.e eVar, int i6, b bVar, c cVar, String str) {
        d0.i("Context must not be null", context);
        this.zzl = context;
        d0.i("Looper must not be null", looper);
        this.zzm = looper;
        d0.i("Supervisor must not be null", o0Var);
        this.zzn = o0Var;
        d0.i("API availability must not be null", eVar);
        this.zzo = eVar;
        this.zzb = new e0(this, looper);
        this.zzy = i6;
        this.zzw = bVar;
        this.zzx = cVar;
        this.zzz = str;
    }

    public static void zzj(f fVar, j0 j0Var) {
        fVar.zzD = j0Var;
        if (fVar.usesClientTelemetry()) {
            h hVar = j0Var.f1444d;
            o oVarB = o.b();
            p pVar = hVar == null ? null : hVar.f1417a;
            synchronized (oVarB) {
                if (pVar == null) {
                    oVarB.f1470a = o.f1469c;
                    return;
                }
                p pVar2 = (p) oVarB.f1470a;
                if (pVar2 == null || pVar2.f1476a < pVar.f1476a) {
                    oVarB.f1470a = pVar;
                }
            }
        }
    }

    public static /* bridge */ /* synthetic */ void zzk(f fVar, int i6) {
        int i9;
        int i10;
        synchronized (fVar.zzp) {
            i9 = fVar.zzv;
        }
        if (i9 == 3) {
            fVar.zzC = true;
            i10 = 5;
        } else {
            i10 = 4;
        }
        Handler handler = fVar.zzb;
        handler.sendMessage(handler.obtainMessage(i10, fVar.zzd.get(), 16));
    }

    public static /* bridge */ /* synthetic */ boolean zzn(f fVar, int i6, int i9, IInterface iInterface) {
        synchronized (fVar.zzp) {
            try {
                if (fVar.zzv != i6) {
                    return false;
                }
                fVar.b(i9, iInterface);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* bridge */ /* synthetic */ boolean zzo(f fVar) {
        if (fVar.zzC || TextUtils.isEmpty(fVar.getServiceDescriptor()) || TextUtils.isEmpty(fVar.getLocalStartServiceAction())) {
            return false;
        }
        try {
            Class.forName(fVar.getServiceDescriptor());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public final void b(int i6, IInterface iInterface) {
        p0 p0Var;
        d0.a((i6 == 4) == (iInterface != null));
        synchronized (this.zzp) {
            try {
                this.zzv = i6;
                this.zzs = iInterface;
                if (i6 == 1) {
                    g0 g0Var = this.zzu;
                    if (g0Var != null) {
                        k kVar = this.zzn;
                        String str = this.zza.f1481a;
                        d0.h(str);
                        String str2 = this.zza.f1482b;
                        zze();
                        kVar.c(str, str2, g0Var, this.zza.f1483c);
                        this.zzu = null;
                    }
                } else if (i6 == 2 || i6 == 3) {
                    g0 g0Var2 = this.zzu;
                    if (g0Var2 != null && (p0Var = this.zza) != null) {
                        Log.e("GmsClient", "Calling connect() while still connected, missing disconnect() for " + p0Var.f1481a + " on " + p0Var.f1482b);
                        k kVar2 = this.zzn;
                        String str3 = this.zza.f1481a;
                        d0.h(str3);
                        String str4 = this.zza.f1482b;
                        zze();
                        kVar2.c(str3, str4, g0Var2, this.zza.f1483c);
                        this.zzd.incrementAndGet();
                    }
                    g0 g0Var3 = new g0(this, this.zzd.get());
                    this.zzu = g0Var3;
                    p0 p0Var2 = (this.zzv != 3 || getLocalStartServiceAction() == null) ? new p0(getStartServicePackage(), getStartServiceAction(), getUseDynamicLookup()) : new p0(getContext().getPackageName(), getLocalStartServiceAction(), false);
                    this.zza = p0Var2;
                    if (p0Var2.f1483c && getMinApkVersion() < 17895000) {
                        throw new IllegalStateException("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(String.valueOf(this.zza.f1481a)));
                    }
                    k kVar3 = this.zzn;
                    String str5 = this.zza.f1481a;
                    d0.h(str5);
                    if (!kVar3.d(new k0(str5, this.zza.f1482b, this.zza.f1483c), g0Var3, zze(), getBindServiceExecutor())) {
                        p0 p0Var3 = this.zza;
                        Log.w("GmsClient", "unable to connect to service: " + p0Var3.f1481a + " on " + p0Var3.f1482b);
                        zzl(16, null, this.zzd.get());
                    }
                } else if (i6 == 4) {
                    d0.h(iInterface);
                    onConnectedLocked(iInterface);
                }
            } finally {
            }
        }
    }

    public void checkAvailabilityAndConnect() {
        int iB = this.zzo.b(this.zzl, getMinApkVersion());
        if (iB == 0) {
            connect(new o(this));
        } else {
            b(1, null);
            triggerNotAvailable(new o(this), iB, null);
        }
    }

    public final void checkConnected() {
        if (!isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    public void connect(d dVar) {
        d0.i("Connection progress callbacks cannot be null.", dVar);
        this.zzc = dVar;
        b(2, null);
    }

    public abstract IInterface createServiceInterface(IBinder iBinder);

    public void disconnect() {
        this.zzd.incrementAndGet();
        synchronized (this.zzt) {
            try {
                int size = this.zzt.size();
                for (int i6 = 0; i6 < size; i6++) {
                    ((x) this.zzt.get(i6)).c();
                }
                this.zzt.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.zzq) {
            this.zzr = null;
        }
        b(1, null);
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i6;
        IInterface iInterface;
        m mVar;
        synchronized (this.zzp) {
            i6 = this.zzv;
            iInterface = this.zzs;
        }
        synchronized (this.zzq) {
            mVar = this.zzr;
        }
        printWriter.append((CharSequence) str).append("mConnectState=");
        if (i6 == 1) {
            printWriter.print("DISCONNECTED");
        } else if (i6 == 2) {
            printWriter.print("REMOTE_CONNECTING");
        } else if (i6 == 3) {
            printWriter.print("LOCAL_CONNECTING");
        } else if (i6 == 4) {
            printWriter.print("CONNECTED");
        } else if (i6 != 5) {
            printWriter.print("UNKNOWN");
        } else {
            printWriter.print("DISCONNECTING");
        }
        printWriter.append(" mService=");
        if (iInterface == null) {
            printWriter.append("null");
        } else {
            printWriter.append((CharSequence) getServiceDescriptor()).append("@").append((CharSequence) Integer.toHexString(System.identityHashCode(iInterface.asBinder())));
        }
        printWriter.append(" mServiceBroker=");
        if (mVar == null) {
            printWriter.println("null");
        } else {
            printWriter.append("IGmsServiceBroker@").println(Integer.toHexString(System.identityHashCode(mVar.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        if (this.zzh > 0) {
            PrintWriter printWriterAppend = printWriter.append((CharSequence) str).append("lastConnectedTime=");
            long j3 = this.zzh;
            printWriterAppend.println(j3 + " " + simpleDateFormat.format(new Date(j3)));
        }
        if (this.zzg > 0) {
            printWriter.append((CharSequence) str).append("lastSuspendedCause=");
            int i9 = this.zzf;
            if (i9 == 1) {
                printWriter.append("CAUSE_SERVICE_DISCONNECTED");
            } else if (i9 == 2) {
                printWriter.append("CAUSE_NETWORK_LOST");
            } else if (i9 != 3) {
                printWriter.append((CharSequence) String.valueOf(i9));
            } else {
                printWriter.append("CAUSE_DEAD_OBJECT_EXCEPTION");
            }
            PrintWriter printWriterAppend2 = printWriter.append(" lastSuspendedTime=");
            long j8 = this.zzg;
            printWriterAppend2.println(j8 + " " + simpleDateFormat.format(new Date(j8)));
        }
        if (this.zzj > 0) {
            printWriter.append((CharSequence) str).append("lastFailedStatus=").append((CharSequence) b2.k.g(this.zzi));
            PrintWriter printWriterAppend3 = printWriter.append(" lastFailedTime=");
            long j9 = this.zzj;
            printWriterAppend3.println(j9 + " " + simpleDateFormat.format(new Date(j9)));
        }
    }

    public boolean enableLocalFallback() {
        return false;
    }

    public Account getAccount() {
        return null;
    }

    public v3.c[] getApiFeatures() {
        return zze;
    }

    public final v3.c[] getAvailableFeatures() {
        j0 j0Var = this.zzD;
        if (j0Var == null) {
            return null;
        }
        return j0Var.f1442b;
    }

    public Executor getBindServiceExecutor() {
        return null;
    }

    public Bundle getConnectionHint() {
        return null;
    }

    public final Context getContext() {
        return this.zzl;
    }

    public String getEndpointPackageName() {
        p0 p0Var;
        if (!isConnected() || (p0Var = this.zza) == null) {
            throw new RuntimeException("Failed to connect when checking package");
        }
        return p0Var.f1482b;
    }

    public int getGCoreServiceId() {
        return this.zzy;
    }

    public Bundle getGetServiceRequestExtraArgs() {
        return new Bundle();
    }

    public String getLastDisconnectMessage() {
        return this.zzk;
    }

    public String getLocalStartServiceAction() {
        return null;
    }

    public final Looper getLooper() {
        return this.zzm;
    }

    public abstract int getMinApkVersion();

    public void getRemoteService(l lVar, Set<Scope> set) {
        Bundle getServiceRequestExtraArgs = getGetServiceRequestExtraArgs();
        String str = this.zzA;
        int i6 = v3.e.f5543a;
        Scope[] scopeArr = i.f1424w;
        Bundle bundle = new Bundle();
        int i9 = this.zzy;
        v3.c[] cVarArr = i.f1425x;
        i iVar = new i(6, i9, i6, null, null, scopeArr, bundle, null, cVarArr, cVarArr, true, 0, false, str);
        iVar.f1429d = this.zzl.getPackageName();
        iVar.f1432g = getServiceRequestExtraArgs;
        if (set != null) {
            iVar.f1431f = (Scope[]) set.toArray(new Scope[0]);
        }
        if (requiresSignIn()) {
            Account account = getAccount();
            if (account == null) {
                account = new Account(DEFAULT_ACCOUNT, "com.google");
            }
            iVar.h = account;
            if (lVar != null) {
                iVar.f1430e = lVar.asBinder();
            }
        } else if (requiresAccount()) {
            iVar.h = getAccount();
        }
        iVar.f1433i = zze;
        iVar.f1434j = getApiFeatures();
        if (usesClientTelemetry()) {
            iVar.f1437m = true;
        }
        try {
            synchronized (this.zzq) {
                try {
                    m mVar = this.zzr;
                    if (mVar != null) {
                        ((z) mVar).b(new f0(this, this.zzd.get()), iVar);
                    } else {
                        Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                    }
                } finally {
                }
            }
        } catch (DeadObjectException e9) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e9);
            triggerConnectionSuspended(3);
        } catch (RemoteException e10) {
            e = e10;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            onPostInitHandler(8, null, null, this.zzd.get());
        } catch (SecurityException e11) {
            throw e11;
        } catch (RuntimeException e12) {
            e = e12;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            onPostInitHandler(8, null, null, this.zzd.get());
        }
    }

    public Set<Scope> getScopes() {
        return Collections.EMPTY_SET;
    }

    public final IInterface getService() {
        IInterface iInterface;
        synchronized (this.zzp) {
            try {
                if (this.zzv == 5) {
                    throw new DeadObjectException();
                }
                checkConnected();
                iInterface = this.zzs;
                d0.i("Client is connected but service is null", iInterface);
            } catch (Throwable th) {
                throw th;
            }
        }
        return iInterface;
    }

    public IBinder getServiceBrokerBinder() {
        synchronized (this.zzq) {
            try {
                m mVar = this.zzr;
                if (mVar == null) {
                    return null;
                }
                return mVar.asBinder();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract String getServiceDescriptor();

    public Intent getSignInIntent() {
        throw new UnsupportedOperationException("Not a sign in API");
    }

    public abstract String getStartServiceAction();

    public String getStartServicePackage() {
        return "com.google.android.gms";
    }

    public h getTelemetryConfiguration() {
        j0 j0Var = this.zzD;
        if (j0Var == null) {
            return null;
        }
        return j0Var.f1444d;
    }

    public boolean getUseDynamicLookup() {
        return getMinApkVersion() >= 211700000;
    }

    public boolean hasConnectionInfo() {
        return this.zzD != null;
    }

    public boolean isConnected() {
        boolean z5;
        synchronized (this.zzp) {
            z5 = this.zzv == 4;
        }
        return z5;
    }

    public boolean isConnecting() {
        boolean z5;
        synchronized (this.zzp) {
            int i6 = this.zzv;
            z5 = true;
            if (i6 != 2 && i6 != 3) {
                z5 = false;
            }
        }
        return z5;
    }

    public void onConnectedLocked(IInterface iInterface) {
        this.zzh = System.currentTimeMillis();
    }

    public void onConnectionFailed(ConnectionResult connectionResult) {
        this.zzi = connectionResult.f1389b;
        this.zzj = System.currentTimeMillis();
    }

    public void onConnectionSuspended(int i6) {
        this.zzf = i6;
        this.zzg = System.currentTimeMillis();
    }

    public void onPostInitHandler(int i6, IBinder iBinder, Bundle bundle, int i9) {
        this.zzb.sendMessage(this.zzb.obtainMessage(1, i9, -1, new h0(this, i6, iBinder, bundle)));
    }

    public void onUserSignOut(e eVar) {
        k1.h hVar = (k1.h) eVar;
        ((x3.j) hVar.f3502b).f5990m.f5977m.post(new androidx.fragment.app.p(15, hVar));
    }

    public boolean providesSignIn() {
        return false;
    }

    public boolean requiresAccount() {
        return false;
    }

    public boolean requiresGooglePlayServices() {
        return true;
    }

    public boolean requiresSignIn() {
        return false;
    }

    public void setAttributionTag(String str) {
        this.zzA = str;
    }

    public void triggerConnectionSuspended(int i6) {
        this.zzb.sendMessage(this.zzb.obtainMessage(6, this.zzd.get(), i6));
    }

    public void triggerNotAvailable(d dVar, int i6, PendingIntent pendingIntent) {
        d0.i("Connection progress callbacks cannot be null.", dVar);
        this.zzc = dVar;
        this.zzb.sendMessage(this.zzb.obtainMessage(3, this.zzd.get(), i6, pendingIntent));
    }

    public boolean usesClientTelemetry() {
        return false;
    }

    public final String zze() {
        String str = this.zzz;
        return str == null ? this.zzl.getClass().getName() : str;
    }

    public final void zzl(int i6, Bundle bundle, int i9) {
        this.zzb.sendMessage(this.zzb.obtainMessage(7, i9, -1, new i0(this, i6)));
    }

    public void disconnect(String str) {
        this.zzk = str;
        disconnect();
    }
}
