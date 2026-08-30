package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.c;
import com.google.android.gms.common.internal.d0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzmq implements ServiceConnection, b, c {
    final /* synthetic */ zzls zza;
    private volatile boolean zzb;
    private volatile zzgj zzc;

    public zzmq(zzls zzlsVar) {
        this.zza = zzlsVar;
    }

    @Override // com.google.android.gms.common.internal.b
    public final void onConnected(Bundle bundle) {
        d0.c("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                d0.h(this.zzc);
                this.zza.zzl().zzb(new zzmr(this, (zzgb) this.zzc.getService()));
            } catch (DeadObjectException | IllegalStateException unused) {
                this.zzc = null;
                this.zzb = false;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.c
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        d0.c("MeasurementServiceConnection.onConnectionFailed");
        zzgo zzgoVarZzm = this.zza.zzu.zzm();
        if (zzgoVarZzm != null) {
            zzgoVarZzm.zzu().zza("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.zzb = false;
            this.zzc = null;
        }
        this.zza.zzl().zzb(new zzmt(this));
    }

    @Override // com.google.android.gms.common.internal.b
    public final void onConnectionSuspended(int i6) {
        d0.c("MeasurementServiceConnection.onConnectionSuspended");
        this.zza.zzj().zzc().zza("Service connection suspended");
        this.zza.zzl().zzb(new zzmu(this));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        d0.c("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.zzb = false;
                this.zza.zzj().zzg().zza("Service connected with null binder");
                return;
            }
            zzgb zzgdVar = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                    zzgdVar = iInterfaceQueryLocalInterface instanceof zzgb ? (zzgb) iInterfaceQueryLocalInterface : new zzgd(iBinder);
                    this.zza.zzj().zzp().zza("Bound to IMeasurementService interface");
                } else {
                    this.zza.zzj().zzg().zza("Got binder with a wrong descriptor", interfaceDescriptor);
                }
            } catch (RemoteException unused) {
                this.zza.zzj().zzg().zza("Service connect failed to get IMeasurementService");
            }
            if (zzgdVar == null) {
                this.zzb = false;
                try {
                    a4.b.b().c(this.zza.zza(), this.zza.zza);
                } catch (IllegalArgumentException unused2) {
                }
            } else {
                this.zza.zzl().zzb(new zzmp(this, zzgdVar));
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        d0.c("MeasurementServiceConnection.onServiceDisconnected");
        this.zza.zzj().zzc().zza("Service disconnected");
        this.zza.zzl().zzb(new zzms(this, componentName));
    }

    public final void zzb() {
        if (this.zzc != null && (this.zzc.isConnected() || this.zzc.isConnecting())) {
            this.zzc.disconnect();
        }
        this.zzc = null;
    }

    public final void zza(Intent intent) {
        this.zza.zzt();
        Context contextZza = this.zza.zza();
        a4.b bVarB = a4.b.b();
        synchronized (this) {
            try {
                if (this.zzb) {
                    this.zza.zzj().zzp().zza("Connection attempt already in progress");
                    return;
                }
                this.zza.zzj().zzp().zza("Using local app measurement service");
                this.zzb = true;
                bVarB.a(contextZza, intent, this.zza.zza, 129);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zza() {
        this.zza.zzt();
        Context contextZza = this.zza.zza();
        synchronized (this) {
            try {
                if (this.zzb) {
                    this.zza.zzj().zzp().zza("Connection attempt already in progress");
                    return;
                }
                if (this.zzc != null && (this.zzc.isConnecting() || this.zzc.isConnected())) {
                    this.zza.zzj().zzp().zza("Already awaiting connection attempt");
                    return;
                }
                this.zzc = new zzgj(contextZza, Looper.getMainLooper(), this, this);
                this.zza.zzj().zzp().zza("Connecting to remote service");
                this.zzb = true;
                d0.h(this.zzc);
                this.zzc.checkAvailabilityAndConnect();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
