package com.google.android.gms.measurement;

import android.os.Bundle;
import android.os.SystemClock;
import b4.b;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.internal.zzhy;
import com.google.android.gms.measurement.internal.zzjl;
import com.google.android.gms.measurement.internal.zzjm;
import com.google.android.gms.measurement.internal.zzjq;
import com.google.android.gms.measurement.internal.zzon;
import java.util.List;
import java.util.Map;
import s.e;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzb extends AppMeasurement.zza {
    private final zzhy zza;
    private final zzjq zzb;

    public zzb(zzhy zzhyVar) {
        super();
        d0.h(zzhyVar);
        this.zza = zzhyVar;
        this.zzb = zzhyVar.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final int zza(String str) {
        return zzjq.zza(str);
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.zza
    public final Double zzb() {
        return this.zzb.zzad();
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.zza
    public final Integer zzc() {
        return this.zzb.zzae();
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.zza
    public final Long zzd() {
        return this.zzb.zzaf();
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.zza
    public final String zze() {
        return this.zzb.zzak();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final long zzf() {
        return this.zza.zzt().zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final String zzg() {
        return this.zzb.zzag();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final String zzh() {
        return this.zzb.zzah();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final String zzi() {
        return this.zzb.zzai();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final String zzj() {
        return this.zzb.zzag();
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.zza
    public final Boolean zza() {
        return this.zzb.zzac();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zzb(String str) {
        com.google.android.gms.measurement.internal.zzb zzbVarZze = this.zza.zze();
        ((b) this.zza.zzb()).getClass();
        zzbVarZze.zza(str, SystemClock.elapsedRealtime());
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zzc(String str) {
        com.google.android.gms.measurement.internal.zzb zzbVarZze = this.zza.zze();
        ((b) this.zza.zzb()).getClass();
        zzbVarZze.zzb(str, SystemClock.elapsedRealtime());
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final Object zza(int i6) {
        if (i6 == 0) {
            return zze();
        }
        if (i6 == 1) {
            return zzd();
        }
        if (i6 == 2) {
            return zzb();
        }
        if (i6 == 3) {
            return zzc();
        }
        if (i6 != 4) {
            return null;
        }
        return zza();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zzb(String str, String str2, Bundle bundle) {
        this.zzb.zzb(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final List<Bundle> zza(String str, String str2) {
        return this.zzb.zza(str, str2);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zzb(zzjl zzjlVar) {
        this.zzb.zzb(zzjlVar);
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.zza
    public final Map<String, Object> zza(boolean z5) {
        List<zzon> listZza = this.zzb.zza(z5);
        e eVar = new e(listZza.size());
        for (zzon zzonVar : listZza) {
            Object objZza = zzonVar.zza();
            if (objZza != null) {
                eVar.put(zzonVar.zza, objZza);
            }
        }
        return eVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final Map<String, Object> zza(String str, String str2, boolean z5) {
        return this.zzb.zza(str, str2, z5);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zza(String str, String str2, Bundle bundle) {
        this.zza.zzp().zza(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zza(String str, String str2, Bundle bundle, long j3) {
        this.zzb.zza(str, str2, bundle, j3);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zza(zzjl zzjlVar) {
        this.zzb.zza(zzjlVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zza(Bundle bundle) {
        this.zzb.zzb(bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zza(zzjm zzjmVar) {
        this.zzb.zza(zzjmVar);
    }
}
