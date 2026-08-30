package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import z7.d;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzaj extends y3.a {
    public static final Parcelable.Creator<zzaj> CREATOR = new zzam();
    public final Bundle zza;

    public zzaj(Bundle bundle) {
        this.zza = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iP = d.p(20293, parcel);
        d.j(parcel, 1, this.zza);
        d.q(iP, parcel);
    }
}
