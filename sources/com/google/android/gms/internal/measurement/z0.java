package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class z0 extends e0 implements x0 {
    public z0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.x0
    public final int zza() {
        Parcel parcelZza = zza(2, a_());
        int i6 = parcelZza.readInt();
        parcelZza.recycle();
        return i6;
    }

    @Override // com.google.android.gms.internal.measurement.x0
    public final void zza(String str, String str2, Bundle bundle, long j3) {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        g0.c(parcelA_, bundle);
        parcelA_.writeLong(j3);
        zzb(1, parcelA_);
    }
}
