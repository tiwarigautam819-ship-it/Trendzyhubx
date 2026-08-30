package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.d0;
import java.util.List;
import z7.d;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzo extends y3.a {
    public static final Parcelable.Creator<zzo> CREATOR = new zzq();
    public final String zza;
    public final int zzaa;
    public final long zzab;
    public final String zzac;
    public final String zzad;

    @Deprecated
    private final long zzae;
    private final String zzaf;
    public final String zzb;
    public final String zzc;
    public final String zzd;
    public final long zze;
    public final long zzf;
    public final String zzg;
    public final boolean zzh;
    public final boolean zzi;
    public final long zzj;
    public final String zzk;
    public final long zzl;
    public final int zzm;
    public final boolean zzn;
    public final boolean zzo;
    public final String zzp;
    public final Boolean zzq;
    public final long zzr;
    public final List<String> zzs;
    public final String zzt;
    public final String zzu;
    public final String zzv;
    public final boolean zzw;
    public final long zzx;
    public final int zzy;
    public final String zzz;

    public zzo(String str, String str2, String str3, long j3, String str4, long j8, long j9, String str5, boolean z5, boolean z8, String str6, long j10, long j11, int i6, boolean z9, boolean z10, String str7, Boolean bool, long j12, List<String> list, String str8, String str9, String str10, String str11, boolean z11, long j13, int i9, String str12, int i10, long j14, String str13, String str14) {
        d0.d(str);
        this.zza = str;
        this.zzb = TextUtils.isEmpty(str2) ? null : str2;
        this.zzc = str3;
        this.zzj = j3;
        this.zzd = str4;
        this.zze = j8;
        this.zzf = j9;
        this.zzg = str5;
        this.zzh = z5;
        this.zzi = z8;
        this.zzk = str6;
        this.zzae = j10;
        this.zzl = j11;
        this.zzm = i6;
        this.zzn = z9;
        this.zzo = z10;
        this.zzp = str7;
        this.zzq = bool;
        this.zzr = j12;
        this.zzs = list;
        this.zzaf = null;
        this.zzt = str9;
        this.zzu = str10;
        this.zzv = str11;
        this.zzw = z11;
        this.zzx = j13;
        this.zzy = i9;
        this.zzz = str12;
        this.zzaa = i10;
        this.zzab = j14;
        this.zzac = str13;
        this.zzad = str14;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iP = d.p(20293, parcel);
        d.m(parcel, 2, this.zza);
        d.m(parcel, 3, this.zzb);
        d.m(parcel, 4, this.zzc);
        d.m(parcel, 5, this.zzd);
        long j3 = this.zze;
        d.r(parcel, 6, 8);
        parcel.writeLong(j3);
        long j8 = this.zzf;
        d.r(parcel, 7, 8);
        parcel.writeLong(j8);
        d.m(parcel, 8, this.zzg);
        boolean z5 = this.zzh;
        d.r(parcel, 9, 4);
        parcel.writeInt(z5 ? 1 : 0);
        boolean z8 = this.zzi;
        d.r(parcel, 10, 4);
        parcel.writeInt(z8 ? 1 : 0);
        long j9 = this.zzj;
        d.r(parcel, 11, 8);
        parcel.writeLong(j9);
        d.m(parcel, 12, this.zzk);
        long j10 = this.zzae;
        d.r(parcel, 13, 8);
        parcel.writeLong(j10);
        long j11 = this.zzl;
        d.r(parcel, 14, 8);
        parcel.writeLong(j11);
        int i9 = this.zzm;
        d.r(parcel, 15, 4);
        parcel.writeInt(i9);
        boolean z9 = this.zzn;
        d.r(parcel, 16, 4);
        parcel.writeInt(z9 ? 1 : 0);
        boolean z10 = this.zzo;
        d.r(parcel, 18, 4);
        parcel.writeInt(z10 ? 1 : 0);
        d.m(parcel, 19, this.zzp);
        Boolean bool = this.zzq;
        if (bool != null) {
            d.r(parcel, 21, 4);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        }
        long j12 = this.zzr;
        d.r(parcel, 22, 8);
        parcel.writeLong(j12);
        List<String> list = this.zzs;
        if (list != null) {
            int iP2 = d.p(23, parcel);
            parcel.writeStringList(list);
            d.q(iP2, parcel);
        }
        d.m(parcel, 24, this.zzaf);
        d.m(parcel, 25, this.zzt);
        d.m(parcel, 26, this.zzu);
        d.m(parcel, 27, this.zzv);
        boolean z11 = this.zzw;
        d.r(parcel, 28, 4);
        parcel.writeInt(z11 ? 1 : 0);
        long j13 = this.zzx;
        d.r(parcel, 29, 8);
        parcel.writeLong(j13);
        int i10 = this.zzy;
        d.r(parcel, 30, 4);
        parcel.writeInt(i10);
        d.m(parcel, 31, this.zzz);
        int i11 = this.zzaa;
        d.r(parcel, 32, 4);
        parcel.writeInt(i11);
        long j14 = this.zzab;
        d.r(parcel, 34, 8);
        parcel.writeLong(j14);
        d.m(parcel, 35, this.zzac);
        d.m(parcel, 36, this.zzad);
        d.q(iP, parcel);
    }

    public zzo(String str, String str2, String str3, String str4, long j3, long j8, String str5, boolean z5, boolean z8, long j9, String str6, long j10, long j11, int i6, boolean z9, boolean z10, String str7, Boolean bool, long j12, List<String> list, String str8, String str9, String str10, String str11, boolean z11, long j13, int i9, String str12, int i10, long j14, String str13, String str14) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzj = j9;
        this.zzd = str4;
        this.zze = j3;
        this.zzf = j8;
        this.zzg = str5;
        this.zzh = z5;
        this.zzi = z8;
        this.zzk = str6;
        this.zzae = j10;
        this.zzl = j11;
        this.zzm = i6;
        this.zzn = z9;
        this.zzo = z10;
        this.zzp = str7;
        this.zzq = bool;
        this.zzr = j12;
        this.zzs = list;
        this.zzaf = str8;
        this.zzt = str9;
        this.zzu = str10;
        this.zzv = str11;
        this.zzw = z11;
        this.zzx = j13;
        this.zzy = i9;
        this.zzz = str12;
        this.zzaa = i10;
        this.zzab = j14;
        this.zzac = str13;
        this.zzad = str14;
    }
}
