package u3;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import android.util.SparseArray;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.google.android.gms.internal.measurement.r0;
import com.google.android.gms.internal.measurement.y4;
import com.google.firebase.messaging.x;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5472a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Messenger f5473b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public y4 f5474c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayDeque f5475d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SparseArray f5476e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ n f5477f;

    public l(n nVar) {
        this.f5477f = nVar;
        r0 r0Var = new r0(Looper.getMainLooper(), new Handler.Callback() { // from class: u3.k
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                int i6 = message.arg1;
                if (Log.isLoggable("MessengerIpcClient", 3)) {
                    Log.d("MessengerIpcClient", "Received response to request: " + i6);
                }
                l lVar = this.f5471a;
                synchronized (lVar) {
                    try {
                        m mVar = (m) lVar.f5476e.get(i6);
                        if (mVar == null) {
                            Log.w("MessengerIpcClient", "Received response for unknown request: " + i6);
                            return true;
                        }
                        lVar.f5476e.remove(i6);
                        lVar.c();
                        Bundle data = message.getData();
                        if (data.getBoolean("unsupported", false)) {
                            mVar.b(new x("Not supported by GmsCore", null));
                            return true;
                        }
                        switch (mVar.f5482e) {
                            case 0:
                                if (data.getBoolean("ack", false)) {
                                    mVar.c(null);
                                    return true;
                                }
                                mVar.b(new x("Invalid response to one way request", null));
                                return true;
                            default:
                                Bundle bundle = data.getBundle(MTCoreConstants.Protocol.KEY_DATA);
                                if (bundle == null) {
                                    bundle = Bundle.EMPTY;
                                }
                                mVar.c(bundle);
                                return true;
                        }
                    } finally {
                    }
                }
            }
        });
        Looper.getMainLooper();
        this.f5473b = new Messenger(r0Var);
        this.f5475d = new ArrayDeque();
        this.f5476e = new SparseArray();
    }

    public final synchronized void a(String str) {
        b(str, null);
    }

    public final synchronized void b(String str, SecurityException securityException) {
        try {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                Log.d("MessengerIpcClient", "Disconnected: ".concat(String.valueOf(str)));
            }
            int i6 = this.f5472a;
            if (i6 == 0) {
                throw new IllegalStateException();
            }
            if (i6 != 1 && i6 != 2) {
                if (i6 != 3) {
                    return;
                }
                this.f5472a = 4;
                return;
            }
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Unbinding service");
            }
            this.f5472a = 4;
            a4.b.b().c(this.f5477f.f5484a, this);
            x xVar = new x(str, securityException);
            Iterator it = this.f5475d.iterator();
            while (it.hasNext()) {
                ((m) it.next()).b(xVar);
            }
            this.f5475d.clear();
            for (int i9 = 0; i9 < this.f5476e.size(); i9++) {
                ((m) this.f5476e.valueAt(i9)).b(xVar);
            }
            this.f5476e.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void c() {
        try {
            if (this.f5472a == 2 && this.f5475d.isEmpty() && this.f5476e.size() == 0) {
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
                }
                this.f5472a = 3;
                a4.b.b().c(this.f5477f.f5484a, this);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized boolean d(m mVar) {
        int i6 = this.f5472a;
        if (i6 != 0) {
            if (i6 == 1) {
                this.f5475d.add(mVar);
                return true;
            }
            if (i6 != 2) {
                return false;
            }
            this.f5475d.add(mVar);
            this.f5477f.f5485b.execute(new j(this, 0));
            return true;
        }
        this.f5475d.add(mVar);
        if (this.f5472a != 0) {
            throw new IllegalStateException();
        }
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Starting bind to GmsCore");
        }
        this.f5472a = 1;
        Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
        intent.setPackage("com.google.android.gms");
        try {
            if (a4.b.b().a(this.f5477f.f5484a, intent, this, 1)) {
                this.f5477f.f5485b.schedule(new j(this, 1), 30L, TimeUnit.SECONDS);
            } else {
                a("Unable to bind to service");
            }
        } catch (SecurityException e9) {
            b("Unable to bind to service", e9);
        }
        return true;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service connected");
        }
        this.f5477f.f5485b.execute(new s4.b(this, 15, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service disconnected");
        }
        this.f5477f.f5485b.execute(new j(this, 2));
    }
}
