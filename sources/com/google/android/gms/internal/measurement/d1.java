package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.engagelab.privates.core.api.WakeMessage;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iU = j7.g.u(parcel);
        long jQ = 0;
        long jQ2 = 0;
        boolean zN = false;
        String strG = null;
        String strG2 = null;
        String strG3 = null;
        Bundle bundleE = null;
        String strG4 = null;
        while (parcel.dataPosition() < iU) {
            int i6 = parcel.readInt();
            switch ((char) i6) {
                case 1:
                    jQ = j7.g.q(i6, parcel);
                    break;
                case 2:
                    jQ2 = j7.g.q(i6, parcel);
                    break;
                case 3:
                    zN = j7.g.n(i6, parcel);
                    break;
                case 4:
                    strG = j7.g.g(i6, parcel);
                    break;
                case 5:
                    strG2 = j7.g.g(i6, parcel);
                    break;
                case 6:
                    strG3 = j7.g.g(i6, parcel);
                    break;
                case 7:
                    bundleE = j7.g.e(i6, parcel);
                    break;
                case WakeMessage.ACTIVITY /* 8 */:
                    strG4 = j7.g.g(i6, parcel);
                    break;
                default:
                    j7.g.s(i6, parcel);
                    break;
            }
        }
        j7.g.i(iU, parcel);
        return new e1(jQ, jQ2, zN, strG, strG2, strG3, bundleE, strG4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i6) {
        return new e1[i6];
    }
}
