package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import z7.d;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzno extends y3.a {
    public static final Parcelable.Creator<zzno> CREATOR = new zznn();
    public final String zza;
    public final long zzb;
    public final int zzc;

    public zzno(String str, long j3, int i6) {
        this.zza = str;
        this.zzb = j3;
        this.zzc = i6;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iP = d.p(20293, parcel);
        d.m(parcel, 1, this.zza);
        long j3 = this.zzb;
        d.r(parcel, 2, 8);
        parcel.writeLong(j3);
        int i9 = this.zzc;
        d.r(parcel, 3, 4);
        parcel.writeInt(i9);
        d.q(iP, parcel);
    }
}
