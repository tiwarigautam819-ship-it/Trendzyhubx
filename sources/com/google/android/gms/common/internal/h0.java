package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h0 extends x {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final IBinder f1423g;
    public final /* synthetic */ f h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h0(f fVar, int i6, IBinder iBinder, Bundle bundle) {
        super(fVar, i6, bundle);
        this.h = fVar;
        this.f1423g = iBinder;
    }

    @Override // com.google.android.gms.common.internal.x
    public final void a(ConnectionResult connectionResult) {
        f fVar = this.h;
        if (fVar.zzx != null) {
            fVar.zzx.onConnectionFailed(connectionResult);
        }
        fVar.onConnectionFailed(connectionResult);
    }

    @Override // com.google.android.gms.common.internal.x
    public final boolean b() {
        IBinder iBinder = this.f1423g;
        try {
            d0.h(iBinder);
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            f fVar = this.h;
            if (!fVar.getServiceDescriptor().equals(interfaceDescriptor)) {
                Log.w("GmsClient", "service descriptor mismatch: " + fVar.getServiceDescriptor() + " vs. " + interfaceDescriptor);
                return false;
            }
            IInterface iInterfaceCreateServiceInterface = fVar.createServiceInterface(iBinder);
            if (iInterfaceCreateServiceInterface == null || !(f.zzn(fVar, 2, 4, iInterfaceCreateServiceInterface) || f.zzn(fVar, 3, 4, iInterfaceCreateServiceInterface))) {
                return false;
            }
            fVar.zzB = null;
            Bundle connectionHint = fVar.getConnectionHint();
            if (fVar.zzw == null) {
                return true;
            }
            fVar.zzw.onConnected(connectionHint);
            return true;
        } catch (RemoteException unused) {
            Log.w("GmsClient", "service probably died");
            return false;
        }
    }
}
