package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.engagelab.privates.core.api.WakeMessage;
import j7.g;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzoq implements Parcelable.Creator<zzon> {
    @Override // android.os.Parcelable.Creator
    public final zzon createFromParcel(Parcel parcel) {
        int iU = g.u(parcel);
        int iP = 0;
        String strG = null;
        Long lValueOf = null;
        Float fValueOf = null;
        String strG2 = null;
        String strG3 = null;
        Double dValueOf = null;
        long jQ = 0;
        while (parcel.dataPosition() < iU) {
            int i6 = parcel.readInt();
            switch ((char) i6) {
                case 1:
                    iP = g.p(i6, parcel);
                    break;
                case 2:
                    strG = g.g(i6, parcel);
                    break;
                case 3:
                    jQ = g.q(i6, parcel);
                    break;
                case 4:
                    int iR = g.r(i6, parcel);
                    if (iR != 0) {
                        g.x(parcel, iR, 8);
                        lValueOf = Long.valueOf(parcel.readLong());
                    } else {
                        lValueOf = null;
                    }
                    break;
                case 5:
                    int iR2 = g.r(i6, parcel);
                    if (iR2 != 0) {
                        g.x(parcel, iR2, 4);
                        fValueOf = Float.valueOf(parcel.readFloat());
                    } else {
                        fValueOf = null;
                    }
                    break;
                case 6:
                    strG2 = g.g(i6, parcel);
                    break;
                case 7:
                    strG3 = g.g(i6, parcel);
                    break;
                case WakeMessage.ACTIVITY /* 8 */:
                    int iR3 = g.r(i6, parcel);
                    if (iR3 != 0) {
                        g.x(parcel, iR3, 8);
                        dValueOf = Double.valueOf(parcel.readDouble());
                    } else {
                        dValueOf = null;
                    }
                    break;
                default:
                    g.s(i6, parcel);
                    break;
            }
        }
        g.i(iU, parcel);
        return new zzon(iP, strG, jQ, lValueOf, fValueOf, strG2, strG3, dValueOf);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzon[] newArray(int i6) {
        return new zzon[i6];
    }
}
