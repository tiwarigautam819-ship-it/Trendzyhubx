package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.google.android.gms.internal.measurement.ea;
import com.google.android.gms.internal.measurement.y2;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zznu extends zzns {
    public zznu(zznv zznvVar) {
        super(zznvVar);
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

    private final String zzb(String str) throws Throwable {
        String strZzf = zzm().zzf(str);
        if (TextUtils.isEmpty(strZzf)) {
            return zzbh.zzq.zza(null);
        }
        Uri uri = Uri.parse(zzbh.zzq.zza(null));
        Uri.Builder builderBuildUpon = uri.buildUpon();
        builderBuildUpon.authority(strZzf + "." + uri.getAuthority());
        return builderBuildUpon.build().toString();
    }

    public final zznw zza(String str) {
        zzg zzgVarZze;
        ea.a();
        if (zze().zza(zzbh.zzbx)) {
            zzq();
            if (zzos.zzf(str)) {
                zzj().zzp().zza("sgtm feature flag enabled.");
                zzg zzgVarZze2 = zzh().zze(str);
                if (zzgVarZze2 == null) {
                    return new zznw(zzb(str), zznt.GOOGLE_ANALYTICS);
                }
                String strZzad = zzgVarZze2.zzad();
                y2 y2VarZzc = zzm().zzc(str);
                if (y2VarZzc == null || (zzgVarZze = zzh().zze(str)) == null || ((!y2VarZzc.F() || y2VarZzc.w().n() != 100) && !zzq().zzd(str, zzgVarZze.zzam()) && (!zze().zza(zzbh.zzbz) ? !(TextUtils.isEmpty(strZzad) || strZzad.hashCode() % 100 >= y2VarZzc.w().n()) : !(TextUtils.isEmpty(strZzad) || Math.abs(strZzad.hashCode() % 100) >= y2VarZzc.w().n())))) {
                    return new zznw(zzb(str), zznt.GOOGLE_ANALYTICS);
                }
                zznw zznwVar = null;
                if (zzgVarZze2.zzat()) {
                    zzj().zzp().zza("sgtm upload enabled in manifest.");
                    y2 y2VarZzc2 = zzm().zzc(zzgVarZze2.zzac());
                    if (y2VarZzc2 != null && y2VarZzc2.F()) {
                        String strQ = y2VarZzc2.w().q();
                        if (!TextUtils.isEmpty(strQ)) {
                            String strP = y2VarZzc2.w().p();
                            zzj().zzp().zza("sgtm configured with upload_url, server_info", strQ, TextUtils.isEmpty(strP) ? "Y" : "N");
                            if (TextUtils.isEmpty(strP)) {
                                zznwVar = new zznw(strQ, zznt.SGTM);
                            } else {
                                HashMap map = new HashMap();
                                map.put("x-sgtm-server-info", strP);
                                if (!TextUtils.isEmpty(zzgVarZze2.zzam())) {
                                    map.put("x-gtm-server-preview", zzgVarZze2.zzam());
                                }
                                zznwVar = new zznw(strQ, map, zznt.SGTM);
                            }
                        }
                    }
                }
                if (zznwVar != null) {
                    return zznwVar;
                }
            }
        }
        return new zznw(zzb(str), zznt.GOOGLE_ANALYTICS);
    }

    public final String zza(zzg zzgVar) {
        Uri.Builder builder = new Uri.Builder();
        String strZzah = zzgVar.zzah();
        if (TextUtils.isEmpty(strZzah)) {
            strZzah = zzgVar.zzaa();
        }
        builder.scheme(zzbh.zze.zza(null)).encodedAuthority(zzbh.zzf.zza(null)).path("config/app/" + strZzah).appendQueryParameter(MTPushConstants.PlatformNode.KEY_PLATFORM, "android").appendQueryParameter("gmp_version", "106000").appendQueryParameter("runtime_version", "0");
        return builder.build().toString();
    }
}
