package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.d0;
import z7.d;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbf extends y3.a {
    public static final Parcelable.Creator<zzbf> CREATOR = new zzbi();
    public final String zza;
    public final zzbe zzb;
    public final String zzc;
    public final long zzd;

    public zzbf(zzbf zzbfVar, long j3) {
        d0.h(zzbfVar);
        this.zza = zzbfVar.zza;
        this.zzb = zzbfVar.zzb;
        this.zzc = zzbfVar.zzc;
        this.zzd = j3;
    }

    public final String toString() {
        return "origin=" + this.zzc + ",name=" + this.zza + ",params=" + String.valueOf(this.zzb);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iP = d.p(20293, parcel);
        d.m(parcel, 2, this.zza);
        d.l(parcel, 3, this.zzb, i6);
        d.m(parcel, 4, this.zzc);
        long j3 = this.zzd;
        d.r(parcel, 5, 8);
        parcel.writeLong(j3);
        d.q(iP, parcel);
    }

    public zzbf(String str, zzbe zzbeVar, String str2, long j3) {
        this.zza = str;
        this.zzb = zzbeVar;
        this.zzc = str2;
        this.zzd = j3;
    }
}
