package com.google.android.gms.internal.measurement;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g implements n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Double f1647a;

    public g(Double d6) {
        if (d6 == null) {
            this.f1647a = Double.valueOf(Double.NaN);
        } else {
            this.f1647a = d6;
        }
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final n a() {
        return new g(this.f1647a);
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final Double c() {
        return this.f1647a;
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final n d(String str, com.google.firebase.messaging.y yVar, ArrayList arrayList) {
        if ("toString".equals(str)) {
            return new p(zzf());
        }
        throw new IllegalArgumentException(zzf() + "." + str + " is not a function.");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof g) {
            return this.f1647a.equals(((g) obj).f1647a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f1647a.hashCode();
    }

    public final String toString() {
        return zzf();
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final Boolean zzd() {
        Double d6 = this.f1647a;
        return Boolean.valueOf((Double.isNaN(d6.doubleValue()) || d6.doubleValue() == 0.0d) ? false : true);
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final String zzf() {
        Double d6 = this.f1647a;
        if (Double.isNaN(d6.doubleValue())) {
            return "NaN";
        }
        if (Double.isInfinite(d6.doubleValue())) {
            return d6.doubleValue() > 0.0d ? "Infinity" : "-Infinity";
        }
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(d6.doubleValue());
        BigDecimal bigDecimal = (bigDecimalValueOf.signum() == 0 || bigDecimalValueOf.signum() == 0) ? new BigDecimal(BigInteger.ZERO, 0) : bigDecimalValueOf.stripTrailingZeros();
        DecimalFormat decimalFormat = new DecimalFormat("0E0");
        decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        decimalFormat.setMinimumFractionDigits((bigDecimal.scale() > 0 ? bigDecimal.precision() : bigDecimal.scale()) - 1);
        String str = decimalFormat.format(bigDecimal);
        int iIndexOf = str.indexOf("E");
        if (iIndexOf <= 0) {
            return str;
        }
        int i6 = Integer.parseInt(str.substring(iIndexOf + 1));
        return ((i6 >= 0 || i6 <= -7) && (i6 < 0 || i6 >= 21)) ? str.replace("E-", "e-").replace("E", "e+") : bigDecimal.toPlainString();
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final Iterator zzh() {
        return null;
    }
}
