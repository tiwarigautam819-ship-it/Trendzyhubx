package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.measurement.r0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e0 extends r0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f1405a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e0(f fVar, Looper looper) {
        super(looper, 3);
        this.f1405a = fVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Boolean bool;
        if (this.f1405a.zzd.get() != message.arg1) {
            int i6 = message.what;
            if (i6 == 2 || i6 == 1 || i6 == 7) {
                x xVar = (x) message.obj;
                xVar.getClass();
                xVar.d();
                return;
            }
            return;
        }
        int i9 = message.what;
        if ((i9 == 1 || i9 == 7 || ((i9 == 4 && !this.f1405a.enableLocalFallback()) || message.what == 5)) && !this.f1405a.isConnecting()) {
            x xVar2 = (x) message.obj;
            xVar2.getClass();
            xVar2.d();
            return;
        }
        int i10 = message.what;
        if (i10 == 4) {
            this.f1405a.zzB = new ConnectionResult(message.arg2);
            if (f.zzo(this.f1405a)) {
                f fVar = this.f1405a;
                if (!fVar.zzC) {
                    fVar.b(3, null);
                    return;
                }
            }
            f fVar2 = this.f1405a;
            ConnectionResult connectionResult = fVar2.zzB != null ? fVar2.zzB : new ConnectionResult(8);
            this.f1405a.zzc.a(connectionResult);
            this.f1405a.onConnectionFailed(connectionResult);
            return;
        }
        if (i10 == 5) {
            f fVar3 = this.f1405a;
            ConnectionResult connectionResult2 = fVar3.zzB != null ? fVar3.zzB : new ConnectionResult(8);
            this.f1405a.zzc.a(connectionResult2);
            this.f1405a.onConnectionFailed(connectionResult2);
            return;
        }
        if (i10 == 3) {
            Object obj = message.obj;
            ConnectionResult connectionResult3 = new ConnectionResult(message.arg2, obj instanceof PendingIntent ? (PendingIntent) obj : null);
            this.f1405a.zzc.a(connectionResult3);
            this.f1405a.onConnectionFailed(connectionResult3);
            return;
        }
        if (i10 == 6) {
            this.f1405a.b(5, null);
            f fVar4 = this.f1405a;
            if (fVar4.zzw != null) {
                fVar4.zzw.onConnectionSuspended(message.arg2);
            }
            this.f1405a.onConnectionSuspended(message.arg2);
            f.zzn(this.f1405a, 5, 1, null);
            return;
        }
        if (i10 == 2 && !this.f1405a.isConnected()) {
            x xVar3 = (x) message.obj;
            xVar3.getClass();
            xVar3.d();
            return;
        }
        int i11 = message.what;
        if (i11 != 2 && i11 != 1 && i11 != 7) {
            Log.wtf("GmsClient", a1.a.i(i11, "Don't know how to handle message: "), new Exception());
            return;
        }
        x xVar4 = (x) message.obj;
        synchronized (xVar4) {
            try {
                bool = xVar4.f1502a;
                if (xVar4.f1503b) {
                    Log.w("GmsClient", "Callback proxy " + xVar4.toString() + " being reused. This is not safe.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (bool != null) {
            f fVar5 = xVar4.f1507f;
            int i12 = xVar4.f1505d;
            if (i12 != 0) {
                fVar5.b(1, null);
                Bundle bundle = xVar4.f1506e;
                xVar4.a(new ConnectionResult(i12, bundle != null ? (PendingIntent) bundle.getParcelable(f.KEY_PENDING_INTENT) : null));
            } else if (!xVar4.b()) {
                fVar5.b(1, null);
                xVar4.a(new ConnectionResult(8, null));
            }
        }
        synchronized (xVar4) {
            xVar4.f1503b = true;
        }
        xVar4.d();
    }
}
