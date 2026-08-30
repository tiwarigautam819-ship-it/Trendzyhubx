package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import j7.g;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zznn implements Parcelable.Creator<zzno> {
    @Override // android.os.Parcelable.Creator
    public final zzno createFromParcel(Parcel parcel) {
        int iU = g.u(parcel);
        String strG = null;
        long jQ = 0;
        int iP = 0;
        while (parcel.dataPosition() < iU) {
            int i6 = parcel.readInt();
            char c8 = (char) i6;
            if (c8 == 1) {
                strG = g.g(i6, parcel);
            } else if (c8 == 2) {
                jQ = g.q(i6, parcel);
            } else if (c8 != 3) {
                g.s(i6, parcel);
            } else {
                iP = g.p(i6, parcel);
            }
        }
        g.i(iU, parcel);
        return new zzno(strG, jQ, iP);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzno[] newArray(int i6) {
        return new zzno[i6];
    }
}
