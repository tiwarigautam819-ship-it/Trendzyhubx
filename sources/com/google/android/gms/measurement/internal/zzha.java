package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import b4.b;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.measurement.internal.zzje;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzha extends zzjd {
    static final Pair<String, Long> zza = new Pair<>("", 0L);
    private long zzaa;
    public zzhe zzb;
    public final zzhb zzc;
    public final zzhb zzd;
    public final zzhd zze;
    public final zzhb zzf;
    public final zzgz zzg;
    public final zzhd zzh;
    public final zzhc zzi;
    public final zzgz zzj;
    public final zzhb zzk;
    public final zzhb zzl;
    public boolean zzm;
    public zzgz zzn;
    public zzgz zzo;
    public zzhb zzp;
    public final zzhd zzq;
    public final zzhd zzr;
    public final zzhb zzs;
    public final zzhc zzt;
    private SharedPreferences zzv;
    private Object zzw;
    private SharedPreferences zzx;
    private String zzy;
    private boolean zzz;

    public zzha(zzhy zzhyVar) {
        super(zzhyVar);
        this.zzw = new Object();
        this.zzf = new zzhb(this, "session_timeout", 1800000L);
        this.zzg = new zzgz(this, "start_new_session", true);
        this.zzk = new zzhb(this, "last_pause_time", 0L);
        this.zzl = new zzhb(this, "session_id", 0L);
        this.zzh = new zzhd(this, "non_personalized_ads", null);
        this.zzi = new zzhc(this, "last_received_uri_timestamps_by_source", null);
        this.zzj = new zzgz(this, "allow_remote_dynamite", false);
        this.zzc = new zzhb(this, "first_open_time", 0L);
        this.zzd = new zzhb(this, "app_install_time", 0L);
        this.zze = new zzhd(this, "app_instance_id", null);
        this.zzn = new zzgz(this, "app_backgrounded", false);
        this.zzo = new zzgz(this, "deep_link_retrieval_complete", false);
        this.zzp = new zzhb(this, "deep_link_retrieval_attempts", 0L);
        this.zzq = new zzhd(this, "firebase_feature_rollouts", null);
        this.zzr = new zzhd(this, "deferred_attribution_cache", null);
        this.zzs = new zzhb(this, "deferred_attribution_cache_timestamp", 0L);
        this.zzt = new zzhc(this, "default_event_parameters", null);
    }

    public final Pair<String, Boolean> zza(String str) {
        zzt();
        if (!zzo().zza(zzje.zza.AD_STORAGE)) {
            return new Pair<>("", Boolean.FALSE);
        }
        ((b) zzb()).getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.zzy != null && jElapsedRealtime < this.zzaa) {
            return new Pair<>(this.zzy, Boolean.valueOf(this.zzz));
        }
        this.zzaa = zze().zzd(str) + jElapsedRealtime;
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(zza());
            this.zzy = "";
            String id = advertisingIdInfo.getId();
            if (id != null) {
                this.zzy = id;
            }
            this.zzz = advertisingIdInfo.isLimitAdTrackingEnabled();
        } catch (Exception e9) {
            zzj().zzc().zza("Unable to get advertising id", e9);
            this.zzy = "";
        }
        return new Pair<>(this.zzy, Boolean.valueOf(this.zzz));
    }

    @Override // com.google.android.gms.measurement.internal.zzjd
    public final void zzaa() {
        SharedPreferences sharedPreferences = zza().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.zzv = sharedPreferences;
        boolean z5 = sharedPreferences.getBoolean("has_been_opened", false);
        this.zzm = z5;
        if (!z5) {
            SharedPreferences.Editor editorEdit = this.zzv.edit();
            editorEdit.putBoolean("has_been_opened", true);
            editorEdit.apply();
        }
        this.zzb = new zzhe(this, "health_monitor", Math.max(0L, zzbh.zzc.zza(null).longValue()));
    }

    public final boolean zzab() {
        SharedPreferences sharedPreferences = this.zzv;
        if (sharedPreferences == null) {
            return false;
        }
        return sharedPreferences.contains("deferred_analytics_collection");
    }

    public final void zzb(String str) {
        zzt();
        SharedPreferences.Editor editorEdit = zzg().edit();
        editorEdit.putString("admob_app_id", str);
        editorEdit.apply();
    }

    public final SharedPreferences zzc() {
        zzt();
        zzac();
        if (this.zzx == null) {
            synchronized (this.zzw) {
                try {
                    if (this.zzx == null) {
                        String str = zza().getPackageName() + "_preferences";
                        zzj().zzp().zza("Default prefs file", str);
                        this.zzx = zza().getSharedPreferences(str, 0);
                    }
                } finally {
                }
            }
        }
        return this.zzx;
    }

    public final SharedPreferences zzg() {
        zzt();
        zzac();
        d0.h(this.zzv);
        return this.zzv;
    }

    @Override // com.google.android.gms.measurement.internal.zzjd
    public final boolean zzh() {
        return true;
    }

    public final SparseArray<Long> zzm() {
        Bundle bundleZza = this.zzi.zza();
        if (bundleZza == null) {
            return new SparseArray<>();
        }
        int[] intArray = bundleZza.getIntArray("uriSources");
        long[] longArray = bundleZza.getLongArray("uriTimestamps");
        if (intArray == null || longArray == null) {
            return new SparseArray<>();
        }
        if (intArray.length != longArray.length) {
            zzj().zzg().zza("Trigger URI source and timestamp array lengths do not match");
            return new SparseArray<>();
        }
        SparseArray<Long> sparseArray = new SparseArray<>();
        for (int i6 = 0; i6 < intArray.length; i6++) {
            sparseArray.put(intArray[i6], Long.valueOf(longArray[i6]));
        }
        return sparseArray;
    }

    public final zzax zzn() {
        zzt();
        return zzax.zza(zzg().getString("dma_consent_settings", null));
    }

    public final zzje zzo() {
        zzt();
        return zzje.zza(zzg().getString("consent_settings", "G1"), zzg().getInt("consent_source", 100));
    }

    public final Boolean zzp() {
        zzt();
        if (zzg().contains("use_service")) {
            return Boolean.valueOf(zzg().getBoolean("use_service", false));
        }
        return null;
    }

    public final Boolean zzu() {
        zzt();
        if (zzg().contains("measurement_enabled_from_api")) {
            return Boolean.valueOf(zzg().getBoolean("measurement_enabled_from_api", true));
        }
        return null;
    }

    public final Boolean zzv() {
        zzt();
        if (zzg().contains("measurement_enabled")) {
            return Boolean.valueOf(zzg().getBoolean("measurement_enabled", true));
        }
        return null;
    }

    public final String zzw() {
        zzt();
        String string = zzg().getString("previous_os_version", null);
        zzf().zzac();
        String str = Build.VERSION.RELEASE;
        if (!TextUtils.isEmpty(str) && !str.equals(string)) {
            SharedPreferences.Editor editorEdit = zzg().edit();
            editorEdit.putString("previous_os_version", str);
            editorEdit.apply();
        }
        return string;
    }

    public final String zzx() {
        zzt();
        return zzg().getString("admob_app_id", null);
    }

    public final String zzy() {
        zzt();
        return zzg().getString("gmp_app_id", null);
    }

    public final void zzz() {
        zzt();
        Boolean boolZzv = zzv();
        SharedPreferences.Editor editorEdit = zzg().edit();
        editorEdit.clear();
        editorEdit.apply();
        if (boolZzv != null) {
            zza(boolZzv);
        }
    }

    public final void zzb(Boolean bool) {
        zzt();
        SharedPreferences.Editor editorEdit = zzg().edit();
        if (bool != null) {
            editorEdit.putBoolean("measurement_enabled_from_api", bool.booleanValue());
        } else {
            editorEdit.remove("measurement_enabled_from_api");
        }
        editorEdit.apply();
    }

    public final void zzb(boolean z5) {
        zzt();
        zzj().zzp().zza("App measurement setting deferred collection", Boolean.valueOf(z5));
        SharedPreferences.Editor editorEdit = zzg().edit();
        editorEdit.putBoolean("deferred_analytics_collection", z5);
        editorEdit.apply();
    }

    public final void zzc(String str) {
        zzt();
        SharedPreferences.Editor editorEdit = zzg().edit();
        editorEdit.putString("gmp_app_id", str);
        editorEdit.apply();
    }

    public final void zza(Boolean bool) {
        zzt();
        SharedPreferences.Editor editorEdit = zzg().edit();
        if (bool != null) {
            editorEdit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            editorEdit.remove("measurement_enabled");
        }
        editorEdit.apply();
    }

    public final void zza(boolean z5) {
        zzt();
        SharedPreferences.Editor editorEdit = zzg().edit();
        editorEdit.putBoolean("use_service", z5);
        editorEdit.apply();
    }

    public final void zza(SparseArray<Long> sparseArray) {
        if (sparseArray == null) {
            this.zzi.zza(null);
            return;
        }
        int[] iArr = new int[sparseArray.size()];
        long[] jArr = new long[sparseArray.size()];
        for (int i6 = 0; i6 < sparseArray.size(); i6++) {
            iArr[i6] = sparseArray.keyAt(i6);
            jArr[i6] = sparseArray.valueAt(i6).longValue();
        }
        Bundle bundle = new Bundle();
        bundle.putIntArray("uriSources", iArr);
        bundle.putLongArray("uriTimestamps", jArr);
        this.zzi.zza(bundle);
    }

    public final boolean zza(long j3) {
        return j3 - this.zzf.zza() > this.zzk.zza();
    }

    public final boolean zza(zzax zzaxVar) {
        zzt();
        if (!zzje.zza(zzaxVar.zza(), zzn().zza())) {
            return false;
        }
        SharedPreferences.Editor editorEdit = zzg().edit();
        editorEdit.putString("dma_consent_settings", zzaxVar.zzf());
        editorEdit.apply();
        return true;
    }

    public final boolean zza(zzje zzjeVar) {
        zzt();
        int iZza = zzjeVar.zza();
        if (!zza(iZza)) {
            return false;
        }
        SharedPreferences.Editor editorEdit = zzg().edit();
        editorEdit.putString("consent_settings", zzjeVar.zzf());
        editorEdit.putInt("consent_source", iZza);
        editorEdit.apply();
        return true;
    }

    public final boolean zza(int i6) {
        return zzje.zza(i6, zzg().getInt("consent_source", 100));
    }

    public final boolean zza(zznm zznmVar) {
        zzt();
        String string = zzg().getString("stored_tcf_param", "");
        String strZzc = zznmVar.zzc();
        if (strZzc.equals(string)) {
            return false;
        }
        SharedPreferences.Editor editorEdit = zzg().edit();
        editorEdit.putString("stored_tcf_param", strZzc);
        editorEdit.apply();
        return true;
    }
}
