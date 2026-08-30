package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import j7.g;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbi implements Parcelable.Creator<zzbf> {
    @Override // android.os.Parcelable.Creator
    public final zzbf createFromParcel(Parcel parcel) {
        int iU = g.u(parcel);
        String strG = null;
        zzbe zzbeVar = null;
        String strG2 = null;
        long jQ = 0;
        while (parcel.dataPosition() < iU) {
            int i6 = parcel.readInt();
            char c8 = (char) i6;
            if (c8 == 2) {
                strG = g.g(i6, parcel);
            } else if (c8 == 3) {
                zzbeVar = (zzbe) g.f(parcel, i6, zzbe.CREATOR);
            } else if (c8 == 4) {
                strG2 = g.g(i6, parcel);
            } else if (c8 != 5) {
                g.s(i6, parcel);
            } else {
                jQ = g.q(i6, parcel);
            }
        }
        g.i(iU, parcel);
        return new zzbf(strG, zzbeVar, strG2, jQ);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbf[] newArray(int i6) {
        return new zzbf[i6];
    }
}
