package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g0 implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1415a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f1416b;

    public g0(f fVar, int i6) {
        this.f1416b = fVar;
        this.f1415a = i6;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        f fVar = this.f1416b;
        if (iBinder == null) {
            f.zzk(fVar, 16);
            return;
        }
        synchronized (fVar.zzq) {
            try {
                f fVar2 = this.f1416b;
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                fVar2.zzr = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof m)) ? new z(iBinder) : (m) iInterfaceQueryLocalInterface;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f1416b.zzl(0, null, this.f1415a);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.f1416b.zzq) {
            this.f1416b.zzr = null;
        }
        f fVar = this.f1416b;
        int i6 = this.f1415a;
        Handler handler = fVar.zzb;
        handler.sendMessage(handler.obtainMessage(6, i6, 1));
    }
}
