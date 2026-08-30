package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.engagelab.privates.core.api.WakeMessage;
import j7.g;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzq implements Parcelable.Creator<zzo> {
    @Override // android.os.Parcelable.Creator
    public final zzo createFromParcel(Parcel parcel) {
        int iU = g.u(parcel);
        String strG = null;
        String strG2 = null;
        String strG3 = null;
        String strG4 = null;
        String strG5 = null;
        String strG6 = null;
        String strG7 = null;
        Boolean boolValueOf = null;
        ArrayList<String> arrayList = null;
        String strG8 = null;
        String strG9 = null;
        String strG10 = null;
        long jQ = 0;
        long jQ2 = 0;
        long jQ3 = 0;
        long jQ4 = 0;
        long jQ5 = 0;
        long jQ6 = 0;
        long jQ7 = 0;
        boolean zN = true;
        boolean zN2 = true;
        boolean zN3 = false;
        int iP = 0;
        boolean zN4 = false;
        boolean zN5 = false;
        int iP2 = 0;
        long jQ8 = -2147483648L;
        String strG11 = "";
        String strG12 = strG11;
        String strG13 = strG12;
        String strG14 = strG13;
        int iP3 = 100;
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
                    strG3 = g.g(i6, parcel);
                    break;
                case 5:
                    strG4 = g.g(i6, parcel);
                    break;
                case 6:
                    jQ = g.q(i6, parcel);
                    break;
                case 7:
                    jQ2 = g.q(i6, parcel);
                    break;
                case WakeMessage.ACTIVITY /* 8 */:
                    strG5 = g.g(i6, parcel);
                    break;
                case '\t':
                    zN = g.n(i6, parcel);
                    break;
                case '\n':
                    zN3 = g.n(i6, parcel);
                    break;
                case 11:
                    jQ8 = g.q(i6, parcel);
                    break;
                case '\f':
                    strG6 = g.g(i6, parcel);
                    break;
                case '\r':
                    jQ3 = g.q(i6, parcel);
                    break;
                case 14:
                    jQ4 = g.q(i6, parcel);
                    break;
                case 15:
                    iP = g.p(i6, parcel);
                    break;
                case 16:
                    zN2 = g.n(i6, parcel);
                    break;
                case 17:
                case 20:
                case '!':
                default:
                    g.s(i6, parcel);
                    break;
                case 18:
                    zN4 = g.n(i6, parcel);
                    break;
                case 19:
                    strG7 = g.g(i6, parcel);
                    break;
                case 21:
                    int iR = g.r(i6, parcel);
                    if (iR != 0) {
                        g.x(parcel, iR, 4);
                        boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
                    } else {
                        boolValueOf = null;
                    }
                    break;
                case 22:
                    jQ5 = g.q(i6, parcel);
                    break;
                case 23:
                    int iR2 = g.r(i6, parcel);
                    int iDataPosition = parcel.dataPosition();
                    if (iR2 != 0) {
                        ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
                        parcel.setDataPosition(iDataPosition + iR2);
                        arrayList = arrayListCreateStringArrayList;
                    } else {
                        arrayList = null;
                    }
                    break;
                case 24:
                    strG8 = g.g(i6, parcel);
                    break;
                case 25:
                    strG11 = g.g(i6, parcel);
                    break;
                case 26:
                    strG12 = g.g(i6, parcel);
                    break;
                case 27:
                    strG9 = g.g(i6, parcel);
                    break;
                case 28:
                    zN5 = g.n(i6, parcel);
                    break;
                case 29:
                    jQ6 = g.q(i6, parcel);
                    break;
                case 30:
                    iP3 = g.p(i6, parcel);
                    break;
                case 31:
                    strG13 = g.g(i6, parcel);
                    break;
                case ' ':
                    iP2 = g.p(i6, parcel);
                    break;
                case '\"':
                    jQ7 = g.q(i6, parcel);
                    break;
                case '#':
                    strG10 = g.g(i6, parcel);
                    break;
                case '$':
                    strG14 = g.g(i6, parcel);
                    break;
            }
        }
        g.i(iU, parcel);
        return new zzo(strG, strG2, strG3, strG4, jQ, jQ2, strG5, zN, zN3, jQ8, strG6, jQ3, jQ4, iP, zN2, zN4, strG7, boolValueOf, jQ5, arrayList, strG8, strG11, strG12, strG9, zN5, jQ6, iP3, strG13, iP2, jQ7, strG10, strG14);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzo[] newArray(int i6) {
        return new zzo[i6];
    }
}
