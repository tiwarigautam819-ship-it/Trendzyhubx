package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import b4.b;
import com.engagelab.privates.core.api.WakeMessage;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.ja;
import com.google.android.gms.internal.measurement.v7;
import com.google.android.gms.internal.measurement.x9;
import com.google.android.gms.measurement.internal.zzje;
import java.math.BigInteger;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzgg extends zzh {
    private String zza;
    private String zzb;
    private int zzc;
    private String zzd;
    private long zze;
    private long zzf;
    private List<String> zzg;
    private String zzh;
    private int zzi;
    private String zzj;
    private String zzk;
    private String zzl;
    private long zzm;
    private String zzn;

    public zzgg(zzhy zzhyVar, long j3) {
        super(zzhyVar);
        this.zzm = 0L;
        this.zzn = null;
        this.zzf = j3;
    }

    private final String zzah() {
        ja.f1687b.get();
        if (zze().zza(zzbh.zzbr)) {
            zzj().zzp().zza("Disabled IID for tests.");
            return null;
        }
        try {
            Class<?> clsLoadClass = zza().getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
            if (clsLoadClass != null) {
                try {
                    Object objInvoke = clsLoadClass.getDeclaredMethod("getInstance", Context.class).invoke(null, zza());
                    if (objInvoke != null) {
                        try {
                            return (String) clsLoadClass.getDeclaredMethod("getFirebaseInstanceId", null).invoke(objInvoke, null);
                        } catch (Exception unused) {
                            zzj().zzv().zza("Failed to retrieve Firebase Instance Id");
                            return null;
                        }
                    }
                } catch (Exception unused2) {
                    zzj().zzw().zza("Failed to obtain Firebase Analytics instance");
                }
            }
        } catch (ClassNotFoundException unused3) {
        }
        return null;
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    public final int zzaa() {
        zzu();
        return this.zzi;
    }

    public final int zzab() {
        zzu();
        return this.zzc;
    }

    public final String zzac() {
        zzu();
        return this.zzk;
    }

    public final String zzad() {
        zzu();
        d0.h(this.zza);
        return this.zza;
    }

    public final String zzae() {
        zzt();
        zzu();
        d0.h(this.zzj);
        return this.zzj;
    }

    public final List<String> zzaf() {
        return this.zzg;
    }

    public final void zzag() {
        String str;
        zzt();
        if (zzk().zzo().zza(zzje.zza.ANALYTICS_STORAGE)) {
            byte[] bArr = new byte[16];
            zzq().zzv().nextBytes(bArr);
            str = String.format(Locale.US, "%032x", new BigInteger(1, bArr));
        } else {
            zzj().zzc().zza("Analytics Storage consent is not granted");
            str = null;
        }
        zzj().zzc().zza("Resetting session stitching token to ".concat(str == null ? "null" : "not null"));
        this.zzl = str;
        ((b) zzb()).getClass();
        this.zzm = System.currentTimeMillis();
    }

    @Override // com.google.android.gms.measurement.internal.zzja, com.google.android.gms.measurement.internal.zzjc
    public final /* bridge */ /* synthetic */ b4.a zzb() {
        return super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzb zzc() {
        return super.zzc();
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

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzgg zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzgf zzh() {
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

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzjq zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzlj zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzls zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zznb zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ zzos zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ void zzr() {
        super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ void zzs() {
        super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzja
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.measurement.internal.zzh
    public final void zzx() {
        String str;
        String packageName = zza().getPackageName();
        PackageManager packageManager = zza().getPackageManager();
        String str2 = "";
        String installerPackageName = "unknown";
        String str3 = "Unknown";
        int i6 = Integer.MIN_VALUE;
        if (packageManager == null) {
            zzj().zzg().zza("PackageManager is null, app identity information might be inaccurate. appId", zzgo.zza(packageName));
        } else {
            try {
                installerPackageName = packageManager.getInstallerPackageName(packageName);
            } catch (IllegalArgumentException unused) {
                zzj().zzg().zza("Error retrieving app installer package name. appId", zzgo.zza(packageName));
            }
            if (installerPackageName == null) {
                installerPackageName = "manual_install";
            } else if ("com.android.vending".equals(installerPackageName)) {
                installerPackageName = "";
            }
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo(zza().getPackageName(), 0);
                if (packageInfo != null) {
                    CharSequence applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
                    String string = !TextUtils.isEmpty(applicationLabel) ? applicationLabel.toString() : "Unknown";
                    try {
                        str3 = packageInfo.versionName;
                        i6 = packageInfo.versionCode;
                    } catch (PackageManager.NameNotFoundException unused2) {
                        str = str3;
                        str3 = string;
                        zzj().zzg().zza("Error retrieving package info. appId, appName", zzgo.zza(packageName), str3);
                        str3 = str;
                    }
                }
            } catch (PackageManager.NameNotFoundException unused3) {
                str = "Unknown";
            }
        }
        this.zza = packageName;
        this.zzd = installerPackageName;
        this.zzb = str3;
        this.zzc = i6;
        this.zze = 0L;
        Object[] objArr = !TextUtils.isEmpty(this.zzu.zzu()) && "am".equals(this.zzu.zzv());
        int iZzc = this.zzu.zzc();
        switch (iZzc) {
            case 0:
                zzj().zzp().zza("App measurement collection enabled");
                break;
            case 1:
                zzj().zzo().zza("App measurement deactivated via the manifest");
                break;
            case 2:
                zzj().zzp().zza("App measurement deactivated via the init parameters");
                break;
            case 3:
                zzj().zzo().zza("App measurement disabled by setAnalyticsCollectionEnabled(false)");
                break;
            case 4:
                zzj().zzo().zza("App measurement disabled via the manifest");
                break;
            case 5:
                zzj().zzp().zza("App measurement disabled via the init parameters");
                break;
            case 6:
                zzj().zzv().zza("App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics");
                break;
            case 7:
                zzj().zzo().zza("App measurement disabled via the global data collection setting");
                break;
            case WakeMessage.ACTIVITY /* 8 */:
                zzj().zzo().zza("App measurement disabled due to denied storage consent");
                break;
            default:
                zzj().zzo().zza("App measurement disabled");
                zzj().zzn().zza("Invalid scion state in identity");
                break;
        }
        boolean z5 = iZzc == 0;
        this.zzj = "";
        this.zzk = "";
        if (objArr != false) {
            this.zzk = this.zzu.zzu();
        }
        try {
            String strZza = new zzhs(zza(), this.zzu.zzx()).zza("google_app_id");
            if (!TextUtils.isEmpty(strZza)) {
                str2 = strZza;
            }
            this.zzj = str2;
            if (!TextUtils.isEmpty(strZza)) {
                this.zzk = new zzhs(zza(), this.zzu.zzx()).zza("admob_app_id");
            }
            if (z5) {
                zzj().zzp().zza("App measurement enabled for app package, google app id", this.zza, TextUtils.isEmpty(this.zzj) ? this.zzk : this.zzj);
            }
        } catch (IllegalStateException e9) {
            zzj().zzg().zza("Fetching Google App Id failed with exception. appId", zzgo.zza(packageName), e9);
        }
        this.zzg = null;
        List<String> listZzg = zze().zzg("analytics.safelisted_events");
        if (listZzg == null) {
            this.zzg = listZzg;
        } else if (listZzg.isEmpty()) {
            zzj().zzv().zza("Safelisted event list is empty. Ignoring");
        } else {
            Iterator<String> it = listZzg.iterator();
            while (it.hasNext()) {
                if (!zzq().zzb("safelisted event", it.next())) {
                }
            }
            this.zzg = listZzg;
        }
        if (packageManager != null) {
            this.zzi = d4.a.c(zza()) ? 1 : 0;
        } else {
            this.zzi = 0;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzh
    public final boolean zzz() {
        return true;
    }

    public final zzo zza(String str) {
        int iZzc;
        zzt();
        String strZzad = zzad();
        String strZzae = zzae();
        zzu();
        String str2 = this.zzb;
        long jZzab = zzab();
        zzu();
        d0.h(this.zzd);
        String str3 = this.zzd;
        zzu();
        zzt();
        if (this.zze == 0) {
            this.zze = this.zzu.zzt().zza(zza(), zza().getPackageName());
        }
        long j3 = this.zze;
        boolean zZzac = this.zzu.zzac();
        boolean z5 = !zzk().zzm;
        zzt();
        String str4 = null;
        String strZzah = !this.zzu.zzac() ? null : zzah();
        long jZzm = 0;
        zzhy zzhyVar = this.zzu;
        String str5 = strZzah;
        long jZza = zzhyVar.zzn().zzc.zza();
        long jMin = jZza == 0 ? zzhyVar.zza : Math.min(zzhyVar.zza, jZza);
        int iZzaa = zzaa();
        boolean zZzv = zze().zzv();
        zzha zzhaVarZzk = zzk();
        zzhaVarZzk.zzt();
        boolean z8 = zzhaVarZzk.zzg().getBoolean("deferred_analytics_collection", false);
        String strZzac = zzac();
        Boolean boolValueOf = zze().zze("google_analytics_default_allow_ad_personalization_signals") == null ? null : Boolean.valueOf(!r14.booleanValue());
        long j8 = this.zzf;
        List<String> list = this.zzg;
        String strZzf = zzk().zzo().zzf();
        if (this.zzh == null) {
            this.zzh = zzq().zzp();
        }
        String str6 = this.zzh;
        v7.a();
        if (!zze().zza(zzbh.zzcx) || zzk().zzo().zza(zzje.zza.ANALYTICS_STORAGE)) {
            zzt();
            if (this.zzm != 0) {
                ((b) zzb()).getClass();
                long jCurrentTimeMillis = System.currentTimeMillis() - this.zzm;
                if (this.zzl != null && jCurrentTimeMillis > 86400000 && this.zzn == null) {
                    zzag();
                }
            }
            if (this.zzl == null) {
                zzag();
            }
            str4 = this.zzl;
        }
        Boolean boolZze = zze().zze("google_analytics_sgtm_upload_enabled");
        boolean zBooleanValue = boolZze == null ? false : boolZze.booleanValue();
        long jZzc = zzq().zzc(zzad());
        int iZza = zzk().zzo().zza();
        String strZzf2 = zzk().zzn().zzf();
        x9.a();
        zzag zzagVarZze = zze();
        zzfz<Boolean> zzfzVar = zzbh.zzci;
        if (zzagVarZze.zza(zzfzVar)) {
            zzq();
            iZzc = zzos.zzc();
        } else {
            iZzc = 0;
        }
        x9.a();
        if (zze().zza(zzfzVar)) {
            jZzm = zzq().zzm();
        }
        return new zzo(strZzad, strZzae, str2, jZzab, str3, 106000L, j3, str, zZzac, z5, str5, 0L, jMin, iZzaa, zZzv, z8, strZzac, boolValueOf, j8, list, (String) null, strZzf, str6, str4, zBooleanValue, jZzc, iZza, strZzf2, iZzc, jZzm, zze().zzu(), new zzf(zze().zzc("google_analytics_default_allow_ad_personalization_signals", true)).zzb());
    }

    public final boolean zzb(String str) {
        String str2 = this.zzn;
        boolean z5 = (str2 == null || str2.equals(str)) ? false : true;
        this.zzn = str;
        return z5;
    }
}
