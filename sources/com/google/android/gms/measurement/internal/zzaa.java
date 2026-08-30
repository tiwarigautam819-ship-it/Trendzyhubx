package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.j2;
import com.google.android.gms.internal.measurement.m2;
import com.google.android.gms.internal.measurement.n2;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
abstract class zzaa {
    String zza;
    int zzb;
    Boolean zzc;
    Boolean zzd;
    Long zze;
    Long zzf;

    public zzaa(String str, int i6) {
        this.zza = str;
        this.zzb = i6;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x010c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.Boolean zza(java.math.BigDecimal r8, com.google.android.gms.internal.measurement.j2 r9, double r10) {
        /*
            Method dump skipped, instruction units count: 284
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzaa.zza(java.math.BigDecimal, com.google.android.gms.internal.measurement.j2, double):java.lang.Boolean");
    }

    public abstract int zza();

    public abstract boolean zzb();

    public abstract boolean zzc();

    public static Boolean zza(String str, n2 n2Var, zzgo zzgoVar) {
        String strQ;
        List list;
        d0.h(n2Var);
        if (str != null && n2Var.v() && n2Var.o() != m2.UNKNOWN_MATCH_TYPE) {
            m2 m2VarO = n2Var.o();
            m2 m2Var = m2.IN_LIST;
            if (m2VarO != m2Var ? n2Var.u() : n2Var.n() != 0) {
                m2 m2VarO2 = n2Var.o();
                boolean zS = n2Var.s();
                m2 m2Var2 = m2.REGEXP;
                if (!zS && m2VarO2 != m2Var2 && m2VarO2 != m2Var) {
                    strQ = n2Var.q().toUpperCase(Locale.ENGLISH);
                } else {
                    strQ = n2Var.q();
                }
                String str2 = strQ;
                if (n2Var.n() == 0) {
                    list = null;
                } else {
                    List listR = n2Var.r();
                    if (!zS) {
                        ArrayList arrayList = new ArrayList(listR.size());
                        Iterator it = listR.iterator();
                        while (it.hasNext()) {
                            arrayList.add(((String) it.next()).toUpperCase(Locale.ENGLISH));
                        }
                        listR = Collections.unmodifiableList(arrayList);
                    }
                    list = listR;
                }
                return zza(str, m2VarO2, zS, str2, list, m2VarO2 == m2Var2 ? str2 : null, zzgoVar);
            }
        }
        return null;
    }

    private static Boolean zza(String str, m2 m2Var, boolean z5, String str2, List<String> list, String str3, zzgo zzgoVar) {
        if (str == null) {
            return null;
        }
        if (m2Var == m2.IN_LIST) {
            if (list == null || list.isEmpty()) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        if (!z5 && m2Var != m2.REGEXP) {
            str = str.toUpperCase(Locale.ENGLISH);
        }
        switch (zzw.zza[m2Var.ordinal()]) {
            case 1:
                if (str3 != null) {
                    try {
                    } catch (PatternSyntaxException unused) {
                        if (zzgoVar != null) {
                            zzgoVar.zzu().zza("Invalid regular expression in REGEXP audience filter. expression", str3);
                        }
                        return null;
                    }
                    break;
                }
                break;
            case 6:
                if (list != null) {
                    break;
                }
                break;
        }
        return null;
    }

    public static Boolean zza(double d6, j2 j2Var) {
        try {
            return zza(new BigDecimal(d6), j2Var, Math.ulp(d6));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static Boolean zza(long j3, j2 j2Var) {
        try {
            return zza(new BigDecimal(j3), j2Var, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static Boolean zza(String str, j2 j2Var) {
        if (!zzoo.zzb(str)) {
            return null;
        }
        try {
            return zza(new BigDecimal(str), j2Var, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static Boolean zza(Boolean bool, boolean z5) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z5);
    }
}
