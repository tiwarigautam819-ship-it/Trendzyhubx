package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.measurement.e0;
import com.google.android.gms.internal.measurement.g0;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzgd extends e0 implements zzgb {
    public zzgd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final zzaj zza(zzo zzoVar) {
        Parcel parcelA_ = a_();
        g0.c(parcelA_, zzoVar);
        Parcel parcelZza = zza(21, parcelA_);
        zzaj zzajVar = (zzaj) g0.a(parcelZza, zzaj.CREATOR);
        parcelZza.recycle();
        return zzajVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final String zzb(zzo zzoVar) {
        Parcel parcelA_ = a_();
        g0.c(parcelA_, zzoVar);
        Parcel parcelZza = zza(11, parcelA_);
        String string = parcelZza.readString();
        parcelZza.recycle();
        return string;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzc(zzo zzoVar) {
        Parcel parcelA_ = a_();
        g0.c(parcelA_, zzoVar);
        zzb(27, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzd(zzo zzoVar) {
        Parcel parcelA_ = a_();
        g0.c(parcelA_, zzoVar);
        zzb(4, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zze(zzo zzoVar) {
        Parcel parcelA_ = a_();
        g0.c(parcelA_, zzoVar);
        zzb(18, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzf(zzo zzoVar) {
        Parcel parcelA_ = a_();
        g0.c(parcelA_, zzoVar);
        zzb(20, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzg(zzo zzoVar) {
        Parcel parcelA_ = a_();
        g0.c(parcelA_, zzoVar);
        zzb(26, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzh(zzo zzoVar) {
        Parcel parcelA_ = a_();
        g0.c(parcelA_, zzoVar);
        zzb(6, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzi(zzo zzoVar) {
        Parcel parcelA_ = a_();
        g0.c(parcelA_, zzoVar);
        zzb(25, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List<zzno> zza(zzo zzoVar, Bundle bundle) {
        Parcel parcelA_ = a_();
        g0.c(parcelA_, zzoVar);
        g0.c(parcelA_, bundle);
        Parcel parcelZza = zza(24, parcelA_);
        ArrayList arrayListCreateTypedArrayList = parcelZza.createTypedArrayList(zzno.CREATOR);
        parcelZza.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzb(Bundle bundle, zzo zzoVar) {
        Parcel parcelA_ = a_();
        g0.c(parcelA_, bundle);
        g0.c(parcelA_, zzoVar);
        zzb(28, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List<zzon> zza(zzo zzoVar, boolean z5) {
        Parcel parcelA_ = a_();
        g0.c(parcelA_, zzoVar);
        parcelA_.writeInt(z5 ? 1 : 0);
        Parcel parcelZza = zza(7, parcelA_);
        ArrayList arrayListCreateTypedArrayList = parcelZza.createTypedArrayList(zzon.CREATOR);
        parcelZza.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List<zzae> zza(String str, String str2, zzo zzoVar) {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        g0.c(parcelA_, zzoVar);
        Parcel parcelZza = zza(16, parcelA_);
        ArrayList arrayListCreateTypedArrayList = parcelZza.createTypedArrayList(zzae.CREATOR);
        parcelZza.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List<zzae> zza(String str, String str2, String str3) {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        parcelA_.writeString(str3);
        Parcel parcelZza = zza(17, parcelA_);
        ArrayList arrayListCreateTypedArrayList = parcelZza.createTypedArrayList(zzae.CREATOR);
        parcelZza.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List<zzon> zza(String str, String str2, boolean z5, zzo zzoVar) {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        ClassLoader classLoader = g0.f1648a;
        parcelA_.writeInt(z5 ? 1 : 0);
        g0.c(parcelA_, zzoVar);
        Parcel parcelZza = zza(14, parcelA_);
        ArrayList arrayListCreateTypedArrayList = parcelZza.createTypedArrayList(zzon.CREATOR);
        parcelZza.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List<zzon> zza(String str, String str2, String str3, boolean z5) {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        parcelA_.writeString(str3);
        ClassLoader classLoader = g0.f1648a;
        parcelA_.writeInt(z5 ? 1 : 0);
        Parcel parcelZza = zza(15, parcelA_);
        ArrayList arrayListCreateTypedArrayList = parcelZza.createTypedArrayList(zzon.CREATOR);
        parcelZza.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(zzbf zzbfVar, zzo zzoVar) {
        Parcel parcelA_ = a_();
        g0.c(parcelA_, zzbfVar);
        g0.c(parcelA_, zzoVar);
        zzb(1, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(zzbf zzbfVar, String str, String str2) {
        Parcel parcelA_ = a_();
        g0.c(parcelA_, zzbfVar);
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        zzb(5, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(zzae zzaeVar, zzo zzoVar) {
        Parcel parcelA_ = a_();
        g0.c(parcelA_, zzaeVar);
        g0.c(parcelA_, zzoVar);
        zzb(12, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(zzae zzaeVar) {
        Parcel parcelA_ = a_();
        g0.c(parcelA_, zzaeVar);
        zzb(13, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(long j3, String str, String str2, String str3) {
        Parcel parcelA_ = a_();
        parcelA_.writeLong(j3);
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        parcelA_.writeString(str3);
        zzb(10, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(Bundle bundle, zzo zzoVar) {
        Parcel parcelA_ = a_();
        g0.c(parcelA_, bundle);
        g0.c(parcelA_, zzoVar);
        zzb(19, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(zzon zzonVar, zzo zzoVar) {
        Parcel parcelA_ = a_();
        g0.c(parcelA_, zzonVar);
        g0.c(parcelA_, zzoVar);
        zzb(2, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final byte[] zza(zzbf zzbfVar, String str) {
        Parcel parcelA_ = a_();
        g0.c(parcelA_, zzbfVar);
        parcelA_.writeString(str);
        Parcel parcelZza = zza(9, parcelA_);
        byte[] bArrCreateByteArray = parcelZza.createByteArray();
        parcelZza.recycle();
        return bArrCreateByteArray;
    }
}
