package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.SystemClock;
import android.util.Pair;
import b4.b;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzmw extends zznr {
    public final zzhb zza;
    public final zzhb zzb;
    public final zzhb zzc;
    public final zzhb zzd;
    public final zzhb zze;
    public final zzhb zzf;
    private final Map<String, zzmv> zzh;

    public zzmw(zznv zznvVar) {
        super(zznvVar);
        this.zzh = new HashMap();
        zzha zzhaVarZzk = zzk();
        Objects.requireNonNull(zzhaVarZzk);
        this.zza = new zzhb(zzhaVarZzk, "last_delete_stale", 0L);
        zzha zzhaVarZzk2 = zzk();
        Objects.requireNonNull(zzhaVarZzk2);
        this.zzb = new zzhb(zzhaVarZzk2, "last_delete_stale_batch", 0L);
        zzha zzhaVarZzk3 = zzk();
        Objects.requireNonNull(zzhaVarZzk3);
        this.zzc = new zzhb(zzhaVarZzk3, "backoff", 0L);
        zzha zzhaVarZzk4 = zzk();
        Objects.requireNonNull(zzhaVarZzk4);
        this.zzd = new zzhb(zzhaVarZzk4, "last_upload", 0L);
        zzha zzhaVarZzk5 = zzk();
        Objects.requireNonNull(zzhaVarZzk5);
        this.zze = new zzhb(zzhaVarZzk5, "last_upload_attempt", 0L);
        zzha zzhaVarZzk6 = zzk();
        Objects.requireNonNull(zzhaVarZzk6);
        this.zzf = new zzhb(zzhaVarZzk6, "midnight_offset", 0L);
    }

    @Override // com.google.android.gms.measurement.internal.zzns
    public final /* bridge */ /* synthetic */ zzoo g_() {
        return super.g_();
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ b4.a zzb() {
        return super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zznr
    public final boolean zzc() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ zzab zzd() {
        return super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzag zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzaz zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.zzns
    public final /* bridge */ /* synthetic */ zzt zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zzns
    public final /* bridge */ /* synthetic */ zzal zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzgh zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ zzgo zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzha zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ zzhv zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzns
    public final /* bridge */ /* synthetic */ zzhl zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzns
    public final /* bridge */ /* synthetic */ zzmw zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzns
    public final /* bridge */ /* synthetic */ zznu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzos zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ void zzr() {
        super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ void zzs() {
        super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    @Deprecated
    private final Pair<String, Boolean> zza(String str) {
        zzmv zzmvVar;
        AdvertisingIdClient.Info advertisingIdInfo;
        zzt();
        ((b) zzb()).getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        zzmv zzmvVar2 = this.zzh.get(str);
        if (zzmvVar2 != null && jElapsedRealtime < zzmvVar2.zzc) {
            return new Pair<>(zzmvVar2.zza, Boolean.valueOf(zzmvVar2.zzb));
        }
        long jZzd = zze().zzd(str) + jElapsedRealtime;
        try {
            try {
                advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(zza());
            } catch (PackageManager.NameNotFoundException unused) {
                if (zzmvVar2 != null && jElapsedRealtime < zzmvVar2.zzc + zze().zzc(str, zzbh.zzb)) {
                    return new Pair<>(zzmvVar2.zza, Boolean.valueOf(zzmvVar2.zzb));
                }
                advertisingIdInfo = null;
            }
        } catch (Exception e9) {
            zzj().zzc().zza("Unable to get advertising id", e9);
            zzmvVar = new zzmv("", false, jZzd);
        }
        if (advertisingIdInfo == null) {
            return new Pair<>("00000000-0000-0000-0000-000000000000", Boolean.FALSE);
        }
        String id = advertisingIdInfo.getId();
        zzmvVar = id != null ? new zzmv(id, advertisingIdInfo.isLimitAdTrackingEnabled(), jZzd) : new zzmv("", advertisingIdInfo.isLimitAdTrackingEnabled(), jZzd);
        this.zzh.put(str, zzmvVar);
        return new Pair<>(zzmvVar.zza, Boolean.valueOf(zzmvVar.zzb));
    }

    public final Pair<String, Boolean> zza(String str, zzje zzjeVar) {
        if (zzjeVar.zzg()) {
            return zza(str);
        }
        return new Pair<>("", Boolean.FALSE);
    }

    @Deprecated
    public final String zza(String str, boolean z5) {
        String str2;
        zzt();
        if (z5) {
            str2 = (String) zza(str).first;
        } else {
            str2 = "00000000-0000-0000-0000-000000000000";
        }
        MessageDigest messageDigestZzu = zzos.zzu();
        if (messageDigestZzu == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, messageDigestZzu.digest(str2.getBytes())));
    }
}
