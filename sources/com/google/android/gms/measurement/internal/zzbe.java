package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Iterator;
import z7.d;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbe extends y3.a implements Iterable<String> {
    public static final Parcelable.Creator<zzbe> CREATOR = new zzbg();
    private final Bundle zza;

    public zzbe(Bundle bundle) {
        this.zza = bundle;
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new zzbd(this);
    }

    public final String toString() {
        return this.zza.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iP = d.p(20293, parcel);
        d.j(parcel, 2, zzb());
        d.q(iP, parcel);
    }

    public final Bundle zzb() {
        return new Bundle(this.zza);
    }

    public final Object zzc(String str) {
        return this.zza.get(str);
    }

    public final String zzd(String str) {
        return this.zza.getString(str);
    }

    public final int zza() {
        return this.zza.size();
    }

    public final Long zzb(String str) {
        return Long.valueOf(this.zza.getLong(str));
    }

    public final Double zza(String str) {
        return Double.valueOf(this.zza.getDouble(str));
    }
}
