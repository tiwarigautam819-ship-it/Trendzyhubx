package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.d0;
import z7.d;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzon extends y3.a {
    public static final Parcelable.Creator<zzon> CREATOR = new zzoq();
    public final String zza;
    public final long zzb;
    public final Long zzc;
    public final String zzd;
    public final String zze;
    public final Double zzf;
    private final int zzg;

    public zzon(int i6, String str, long j3, Long l4, Float f9, String str2, String str3, Double d6) {
        this.zzg = i6;
        this.zza = str;
        this.zzb = j3;
        this.zzc = l4;
        if (i6 == 1) {
            this.zzf = f9 != null ? Double.valueOf(f9.doubleValue()) : null;
        } else {
            this.zzf = d6;
        }
        this.zzd = str2;
        this.zze = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iP = d.p(20293, parcel);
        int i9 = this.zzg;
        d.r(parcel, 1, 4);
        parcel.writeInt(i9);
        d.m(parcel, 2, this.zza);
        long j3 = this.zzb;
        d.r(parcel, 3, 8);
        parcel.writeLong(j3);
        Long l4 = this.zzc;
        if (l4 != null) {
            d.r(parcel, 4, 8);
            parcel.writeLong(l4.longValue());
        }
        d.m(parcel, 6, this.zzd);
        d.m(parcel, 7, this.zze);
        Double d6 = this.zzf;
        if (d6 != null) {
            d.r(parcel, 8, 8);
            parcel.writeDouble(d6.doubleValue());
        }
        d.q(iP, parcel);
    }

    public final Object zza() {
        Long l4 = this.zzc;
        if (l4 != null) {
            return l4;
        }
        Double d6 = this.zzf;
        if (d6 != null) {
            return d6;
        }
        String str = this.zzd;
        if (str != null) {
            return str;
        }
        return null;
    }

    public zzon(String str, long j3, Object obj, String str2) {
        d0.d(str);
        this.zzg = 2;
        this.zza = str;
        this.zzb = j3;
        this.zze = str2;
        if (obj == null) {
            this.zzc = null;
            this.zzf = null;
            this.zzd = null;
            return;
        }
        if (obj instanceof Long) {
            this.zzc = (Long) obj;
            this.zzf = null;
            this.zzd = null;
        } else if (obj instanceof String) {
            this.zzc = null;
            this.zzf = null;
            this.zzd = (String) obj;
        } else {
            if (obj instanceof Double) {
                this.zzc = null;
                this.zzf = (Double) obj;
                this.zzd = null;
                return;
            }
            throw new IllegalArgumentException("User attribute given of un-supported type");
        }
    }

    public zzon(zzop zzopVar) {
        this(zzopVar.zzc, zzopVar.zzd, zzopVar.zze, zzopVar.zzb);
    }
}
