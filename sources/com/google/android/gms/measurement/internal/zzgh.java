package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.d0;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzgh {
    private static final AtomicReference<String[]> zza = new AtomicReference<>();
    private static final AtomicReference<String[]> zzb = new AtomicReference<>();
    private static final AtomicReference<String[]> zzc = new AtomicReference<>();
    private final zzgk zzd;

    public zzgh(zzgk zzgkVar) {
        this.zzd = zzgkVar;
    }

    private final String zza(Object[] objArr) {
        if (objArr == null) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (Object obj : objArr) {
            String strZza = obj instanceof Bundle ? zza((Bundle) obj) : String.valueOf(obj);
            if (strZza != null) {
                if (sb.length() != 1) {
                    sb.append(", ");
                }
                sb.append(strZza);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public final String zzb(String str) {
        if (str == null) {
            return null;
        }
        return !this.zzd.zza() ? str : zza(str, zzjk.zzb, zzjk.zza, zzb);
    }

    public final String zzc(String str) {
        if (str == null) {
            return null;
        }
        return !this.zzd.zza() ? str : str.startsWith("_exp_") ? x.g("experiment_id(", str, ")") : zza(str, zzjj.zzb, zzjj.zza, zzc);
    }

    public final String zza(Bundle bundle) {
        String strValueOf;
        if (bundle == null) {
            return null;
        }
        if (!this.zzd.zza()) {
            return bundle.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Bundle[{");
        for (String str : bundle.keySet()) {
            if (sb.length() != 8) {
                sb.append(", ");
            }
            sb.append(zzb(str));
            sb.append("=");
            Object obj = bundle.get(str);
            if (obj instanceof Bundle) {
                strValueOf = zza(new Object[]{obj});
            } else if (obj instanceof Object[]) {
                strValueOf = zza((Object[]) obj);
            } else if (obj instanceof ArrayList) {
                strValueOf = zza(((ArrayList) obj).toArray());
            } else {
                strValueOf = String.valueOf(obj);
            }
            sb.append(strValueOf);
        }
        sb.append("}]");
        return sb.toString();
    }

    public final String zza(zzbf zzbfVar) {
        String strZza = null;
        if (zzbfVar == null) {
            return null;
        }
        if (!this.zzd.zza()) {
            return zzbfVar.toString();
        }
        StringBuilder sb = new StringBuilder("origin=");
        sb.append(zzbfVar.zzc);
        sb.append(",name=");
        sb.append(zza(zzbfVar.zza));
        sb.append(",params=");
        zzbe zzbeVar = zzbfVar.zzb;
        if (zzbeVar != null) {
            if (!this.zzd.zza()) {
                strZza = zzbeVar.toString();
            } else {
                strZza = zza(zzbeVar.zzb());
            }
        }
        sb.append(strZza);
        return sb.toString();
    }

    public final String zza(String str) {
        if (str == null) {
            return null;
        }
        return !this.zzd.zza() ? str : zza(str, zzji.zzc, zzji.zza, zza);
    }

    private static String zza(String str, String[] strArr, String[] strArr2, AtomicReference<String[]> atomicReference) {
        String str2;
        d0.h(strArr);
        d0.h(strArr2);
        d0.h(atomicReference);
        d0.a(strArr.length == strArr2.length);
        for (int i6 = 0; i6 < strArr.length; i6++) {
            if (Objects.equals(str, strArr[i6])) {
                synchronized (atomicReference) {
                    try {
                        String[] strArr3 = atomicReference.get();
                        if (strArr3 == null) {
                            strArr3 = new String[strArr2.length];
                            atomicReference.set(strArr3);
                        }
                        if (strArr3[i6] == null) {
                            strArr3[i6] = strArr2[i6] + "(" + strArr[i6] + ")";
                        }
                        str2 = strArr3[i6];
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return str2;
            }
        }
        return str;
    }
}
