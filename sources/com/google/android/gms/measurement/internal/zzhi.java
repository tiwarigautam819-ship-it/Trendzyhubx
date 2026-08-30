package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.measurement.i0;
import com.google.android.gms.internal.measurement.j0;
import com.google.android.gms.internal.measurement.l0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzhi implements ServiceConnection {
    final /* synthetic */ zzhf zza;
    private final String zzb;

    public zzhi(zzhf zzhfVar, String str) {
        this.zza = zzhfVar;
        this.zzb = str;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder == null) {
            this.zza.zza.zzj().zzu().zza("Install Referrer connection returned with null binder");
            return;
        }
        try {
            int i6 = i0.f1674b;
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            j0 l0Var = iInterfaceQueryLocalInterface instanceof j0 ? (j0) iInterfaceQueryLocalInterface : new l0(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            this.zza.zza.zzj().zzp().zza("Install Referrer Service connected");
            this.zza.zza.zzl().zzb(new zzhh(this, l0Var, this));
        } catch (RuntimeException e9) {
            this.zza.zza.zzj().zzu().zza("Exception occurred while calling Install Referrer API", e9);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.zza.zza.zzj().zzp().zza("Install Referrer Service disconnected");
    }
}
