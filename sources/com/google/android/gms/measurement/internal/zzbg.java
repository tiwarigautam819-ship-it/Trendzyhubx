package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import j7.g;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbg implements Parcelable.Creator<zzbe> {
    @Override // android.os.Parcelable.Creator
    public final zzbe createFromParcel(Parcel parcel) {
        int iU = g.u(parcel);
        Bundle bundleE = null;
        while (parcel.dataPosition() < iU) {
            int i6 = parcel.readInt();
            if (((char) i6) != 2) {
                g.s(i6, parcel);
            } else {
                bundleE = g.e(i6, parcel);
            }
        }
        g.i(iU, parcel);
        return new zzbe(bundleE);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbe[] newArray(int i6) {
        return new zzbe[i6];
    }
}
