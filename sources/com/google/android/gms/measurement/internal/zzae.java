package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.d0;
import z7.d;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzae extends y3.a {
    public static final Parcelable.Creator<zzae> CREATOR = new zzad();
    public String zza;
    public String zzb;
    public zzon zzc;
    public long zzd;
    public boolean zze;
    public String zzf;
    public zzbf zzg;
    public long zzh;
    public zzbf zzi;
    public long zzj;
    public zzbf zzk;

    public zzae(zzae zzaeVar) {
        d0.h(zzaeVar);
        this.zza = zzaeVar.zza;
        this.zzb = zzaeVar.zzb;
        this.zzc = zzaeVar.zzc;
        this.zzd = zzaeVar.zzd;
        this.zze = zzaeVar.zze;
        this.zzf = zzaeVar.zzf;
        this.zzg = zzaeVar.zzg;
        this.zzh = zzaeVar.zzh;
        this.zzi = zzaeVar.zzi;
        this.zzj = zzaeVar.zzj;
        this.zzk = zzaeVar.zzk;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iP = d.p(20293, parcel);
        d.m(parcel, 2, this.zza);
        d.m(parcel, 3, this.zzb);
        d.l(parcel, 4, this.zzc, i6);
        long j3 = this.zzd;
        d.r(parcel, 5, 8);
        parcel.writeLong(j3);
        boolean z5 = this.zze;
        d.r(parcel, 6, 4);
        parcel.writeInt(z5 ? 1 : 0);
        d.m(parcel, 7, this.zzf);
        d.l(parcel, 8, this.zzg, i6);
        long j8 = this.zzh;
        d.r(parcel, 9, 8);
        parcel.writeLong(j8);
        d.l(parcel, 10, this.zzi, i6);
        long j9 = this.zzj;
        d.r(parcel, 11, 8);
        parcel.writeLong(j9);
        d.l(parcel, 12, this.zzk, i6);
        d.q(iP, parcel);
    }

    public zzae(String str, String str2, zzon zzonVar, long j3, boolean z5, String str3, zzbf zzbfVar, long j8, zzbf zzbfVar2, long j9, zzbf zzbfVar3) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzonVar;
        this.zzd = j3;
        this.zze = z5;
        this.zzf = str3;
        this.zzg = zzbfVar;
        this.zzh = j8;
        this.zzi = zzbfVar2;
        this.zzj = j9;
        this.zzk = zzbfVar3;
    }
}
