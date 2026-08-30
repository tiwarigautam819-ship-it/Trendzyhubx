package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a1 extends h0 implements x0 {
    public a1() {
        super("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.h0
    public final boolean zza(int i6, Parcel parcel, Parcel parcel2, int i9) {
        if (i6 == 1) {
            String string = parcel.readString();
            String string2 = parcel.readString();
            Bundle bundle = (Bundle) g0.a(parcel, Bundle.CREATOR);
            long j3 = parcel.readLong();
            g0.d(parcel);
            zza(string, string2, bundle, j3);
            parcel2.writeNoException();
        } else {
            if (i6 != 2) {
                return false;
            }
            int iZza = zza();
            parcel2.writeNoException();
            parcel2.writeInt(iZza);
        }
        return true;
    }
}
