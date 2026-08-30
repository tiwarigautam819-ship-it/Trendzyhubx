package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.engagelab.privates.core.api.WakeMessage;
import j7.g;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzad implements Parcelable.Creator<zzae> {
    @Override // android.os.Parcelable.Creator
    public final zzae createFromParcel(Parcel parcel) {
        int iU = g.u(parcel);
        String strG = null;
        String strG2 = null;
        zzon zzonVar = null;
        String strG3 = null;
        zzbf zzbfVar = null;
        zzbf zzbfVar2 = null;
        zzbf zzbfVar3 = null;
        long jQ = 0;
        long jQ2 = 0;
        long jQ3 = 0;
        boolean zN = false;
        while (parcel.dataPosition() < iU) {
            int i6 = parcel.readInt();
            switch ((char) i6) {
                case 2:
                    strG = g.g(i6, parcel);
                    break;
                case 3:
                    strG2 = g.g(i6, parcel);
                    break;
                case 4:
                    zzonVar = (zzon) g.f(parcel, i6, zzon.CREATOR);
                    break;
                case 5:
                    jQ = g.q(i6, parcel);
                    break;
                case 6:
                    zN = g.n(i6, parcel);
                    break;
                case 7:
                    strG3 = g.g(i6, parcel);
                    break;
                case WakeMessage.ACTIVITY /* 8 */:
                    zzbfVar = (zzbf) g.f(parcel, i6, zzbf.CREATOR);
                    break;
                case '\t':
                    jQ2 = g.q(i6, parcel);
                    break;
                case '\n':
                    zzbfVar2 = (zzbf) g.f(parcel, i6, zzbf.CREATOR);
                    break;
                case 11:
                    jQ3 = g.q(i6, parcel);
                    break;
                case '\f':
                    zzbfVar3 = (zzbf) g.f(parcel, i6, zzbf.CREATOR);
                    break;
                default:
                    g.s(i6, parcel);
                    break;
            }
        }
        g.i(iU, parcel);
        return new zzae(strG, strG2, zzonVar, jQ, zN, strG3, zzbfVar, jQ2, zzbfVar2, jQ3, zzbfVar3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzae[] newArray(int i6) {
        return new zzae[i6];
    }
}
