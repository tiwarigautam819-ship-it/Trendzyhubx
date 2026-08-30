package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzje;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzax {
    private static final zzax zza = new zzax(null, 100);
    private final int zzb;
    private final String zzc;
    private final Boolean zzd;
    private final String zze;
    private final EnumMap<zzje.zza, zzjh> zzf;

    public zzax(Boolean bool, int i6) {
        this((Boolean) null, i6, (Boolean) null, (String) null);
    }

    private final String zzh() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.zzb);
        for (zzje.zza zzaVar : zzjg.DMA.zza()) {
            sb.append(":");
            sb.append(zzje.zza(this.zzf.get(zzaVar)));
        }
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzax)) {
            return false;
        }
        zzax zzaxVar = (zzax) obj;
        if (this.zzc.equalsIgnoreCase(zzaxVar.zzc) && Objects.equals(this.zzd, zzaxVar.zzd)) {
            return Objects.equals(this.zze, zzaxVar.zze);
        }
        return false;
    }

    public final int hashCode() {
        Boolean bool = this.zzd;
        int i6 = bool == null ? 3 : bool == Boolean.TRUE ? 7 : 13;
        String str = this.zze;
        return ((str == null ? 17 : str.hashCode()) * 137) + (i6 * 29) + this.zzc.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("source=");
        sb.append(zzje.zza(this.zzb));
        for (zzje.zza zzaVar : zzjg.DMA.zza()) {
            sb.append(",");
            sb.append(zzaVar.zze);
            sb.append("=");
            zzjh zzjhVar = this.zzf.get(zzaVar);
            if (zzjhVar == null) {
                sb.append("uninitialized");
            } else {
                int i6 = zzba.zza[zzjhVar.ordinal()];
                if (i6 == 1) {
                    sb.append("uninitialized");
                } else if (i6 == 2) {
                    sb.append("eu_consent_policy");
                } else if (i6 == 3) {
                    sb.append("denied");
                } else if (i6 == 4) {
                    sb.append("granted");
                }
            }
        }
        if (this.zzd != null) {
            sb.append(",isDmaRegion=");
            sb.append(this.zzd);
        }
        if (this.zze != null) {
            sb.append(",cpsDisplayStr=");
            sb.append(this.zze);
        }
        return sb.toString();
    }

    public final int zza() {
        return this.zzb;
    }

    public final Bundle zzb() {
        Bundle bundle = new Bundle();
        Iterator it = this.zzf.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String strZzb = zzje.zzb((zzjh) entry.getValue());
            if (strZzb != null) {
                bundle.putString(((zzje.zza) entry.getKey()).zze, strZzb);
            }
        }
        Boolean bool = this.zzd;
        if (bool != null) {
            bundle.putString("is_dma_region", bool.toString());
        }
        String str = this.zze;
        if (str != null) {
            bundle.putString("cps_display_str", str);
        }
        return bundle;
    }

    public final zzjh zzc() {
        zzjh zzjhVar = this.zzf.get(zzje.zza.AD_USER_DATA);
        return zzjhVar == null ? zzjh.UNINITIALIZED : zzjhVar;
    }

    public final Boolean zzd() {
        return this.zzd;
    }

    public final String zze() {
        return this.zze;
    }

    public final String zzf() {
        return this.zzc;
    }

    public final boolean zzg() {
        Iterator<zzjh> it = this.zzf.values().iterator();
        while (it.hasNext()) {
            if (it.next() != zzjh.UNINITIALIZED) {
                return true;
            }
        }
        return false;
    }

    public zzax(Boolean bool, int i6, Boolean bool2, String str) {
        EnumMap<zzje.zza, zzjh> enumMap = new EnumMap<>(zzje.zza.class);
        this.zzf = enumMap;
        enumMap.put(zzje.zza.AD_USER_DATA, zzje.zza(bool));
        this.zzb = i6;
        this.zzc = zzh();
        this.zzd = bool2;
        this.zze = str;
    }

    public static zzax zza(Bundle bundle, int i6) {
        if (bundle == null) {
            return new zzax(null, i6);
        }
        EnumMap enumMap = new EnumMap(zzje.zza.class);
        for (zzje.zza zzaVar : zzjg.DMA.zza()) {
            enumMap.put(zzaVar, zzje.zza(bundle.getString(zzaVar.zze)));
        }
        return new zzax((EnumMap<zzje.zza, zzjh>) enumMap, i6, bundle.containsKey("is_dma_region") ? Boolean.valueOf(bundle.getString("is_dma_region")) : null, bundle.getString("cps_display_str"));
    }

    private zzax(EnumMap<zzje.zza, zzjh> enumMap, int i6, Boolean bool, String str) {
        EnumMap<zzje.zza, zzjh> enumMap2 = new EnumMap<>(zzje.zza.class);
        this.zzf = enumMap2;
        enumMap2.putAll(enumMap);
        this.zzb = i6;
        this.zzc = zzh();
        this.zzd = bool;
        this.zze = str;
    }

    public static zzax zza(zzjh zzjhVar, int i6) {
        EnumMap enumMap = new EnumMap(zzje.zza.class);
        enumMap.put(zzje.zza.AD_USER_DATA, zzjhVar);
        return new zzax((EnumMap<zzje.zza, zzjh>) enumMap, -10, (Boolean) null, (String) null);
    }

    public static zzax zza(String str) {
        if (str != null && str.length() > 0) {
            String[] strArrSplit = str.split(":");
            int i6 = Integer.parseInt(strArrSplit[0]);
            EnumMap enumMap = new EnumMap(zzje.zza.class);
            zzje.zza[] zzaVarArrZza = zzjg.DMA.zza();
            int length = zzaVarArrZza.length;
            int i9 = 1;
            int i10 = 0;
            while (i10 < length) {
                enumMap.put(zzaVarArrZza[i10], zzje.zza(strArrSplit[i9].charAt(0)));
                i10++;
                i9++;
            }
            return new zzax((EnumMap<zzje.zza, zzjh>) enumMap, i6, (Boolean) null, (String) null);
        }
        return zza;
    }

    public static Boolean zza(Bundle bundle) {
        zzjh zzjhVarZza;
        if (bundle == null || (zzjhVarZza = zzje.zza(bundle.getString("ad_personalization"))) == null) {
            return null;
        }
        int i6 = zzba.zza[zzjhVarZza.ordinal()];
        if (i6 == 3) {
            return Boolean.FALSE;
        }
        if (i6 != 4) {
            return null;
        }
        return Boolean.TRUE;
    }
}
