package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f0 extends j4.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public f f1406c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1407d;

    public f0(f fVar, int i6) {
        super("com.google.android.gms.common.internal.IGmsCallbacks");
        this.f1406c = fVar;
        this.f1407d = i6;
    }

    @Override // j4.a
    public final boolean c(int i6, Parcel parcel, Parcel parcel2) {
        int i9 = this.f1407d;
        if (i6 == 1) {
            int i10 = parcel.readInt();
            IBinder strongBinder = parcel.readStrongBinder();
            Bundle bundle = (Bundle) j4.b.a(parcel, Bundle.CREATOR);
            j4.b.b(parcel);
            d0.i("onPostInitComplete can be called only once per call to getRemoteService", this.f1406c);
            this.f1406c.onPostInitHandler(i10, strongBinder, bundle, i9);
            this.f1406c = null;
        } else if (i6 == 2) {
            parcel.readInt();
            j4.b.b(parcel);
            Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
        } else {
            if (i6 != 3) {
                return false;
            }
            int i11 = parcel.readInt();
            IBinder strongBinder2 = parcel.readStrongBinder();
            j0 j0Var = (j0) j4.b.a(parcel, j0.CREATOR);
            j4.b.b(parcel);
            f fVar = this.f1406c;
            d0.i("onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService", fVar);
            d0.h(j0Var);
            f.zzj(fVar, j0Var);
            Bundle bundle2 = j0Var.f1441a;
            d0.i("onPostInitComplete can be called only once per call to getRemoteService", this.f1406c);
            this.f1406c.onPostInitHandler(i11, strongBinder2, bundle2, i9);
            this.f1406c = null;
        }
        parcel2.writeNoException();
        return true;
    }
}
