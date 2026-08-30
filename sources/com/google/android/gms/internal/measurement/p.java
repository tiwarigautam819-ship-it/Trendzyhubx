package com.google.android.gms.internal.measurement;

import com.engagelab.privates.core.api.WakeMessage;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class p implements n, Iterable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1798a;

    public p(String str) {
        if (str == null) {
            throw new IllegalArgumentException("StringValue cannot be null.");
        }
        this.f1798a = str;
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final n a() {
        return new p(this.f1798a);
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final Double c() {
        String str = this.f1798a;
        if (str.isEmpty()) {
            return Double.valueOf(0.0d);
        }
        try {
            return Double.valueOf(str);
        } catch (NumberFormatException unused) {
            return Double.valueOf(Double.NaN);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.n
    public final n d(String str, com.google.firebase.messaging.y yVar, ArrayList arrayList) {
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String strZzf;
        int i6;
        int i9;
        int i10;
        com.google.firebase.messaging.y yVar2;
        if ("charAt".equals(str) || "concat".equals(str) || "hasOwnProperty".equals(str) || "indexOf".equals(str) || "lastIndexOf".equals(str) || "match".equals(str) || "replace".equals(str) || FirebaseAnalytics.Event.SEARCH.equals(str) || "slice".equals(str) || "split".equals(str) || "substring".equals(str) || "toLowerCase".equals(str) || "toLocaleLowerCase".equals(str) || "toString".equals(str) || "toUpperCase".equals(str) || "toLocaleUpperCase".equals(str)) {
            str2 = "hasOwnProperty";
            str3 = "trim";
        } else {
            str2 = "hasOwnProperty";
            str3 = "trim";
            if (!str3.equals(str)) {
                throw new IllegalArgumentException(str.concat(" is not a String function"));
            }
        }
        byte b3 = -1;
        switch (str.hashCode()) {
            case -1789698943:
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                if (str.equals(str4)) {
                    b3 = 0;
                }
                break;
            case -1776922004:
                str5 = "charAt";
                str6 = "toString";
                str4 = str2;
                if (str.equals(str6)) {
                    b3 = 1;
                }
                break;
            case -1464939364:
                str5 = "charAt";
                if (str.equals("toLocaleLowerCase")) {
                    str4 = str2;
                    str6 = "toString";
                    b3 = 2;
                }
                str4 = str2;
                str6 = "toString";
                break;
            case -1361633751:
                str5 = "charAt";
                if (str.equals(str5)) {
                    str4 = str2;
                    str6 = "toString";
                    b3 = 3;
                }
                str4 = str2;
                str6 = "toString";
                break;
            case -1354795244:
                if (str.equals("concat")) {
                    b3 = 4;
                }
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                break;
            case -1137582698:
                if (str.equals("toLowerCase")) {
                    b3 = 5;
                }
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                break;
            case -906336856:
                if (str.equals(FirebaseAnalytics.Event.SEARCH)) {
                    b3 = 6;
                }
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                break;
            case -726908483:
                if (str.equals("toLocaleUpperCase")) {
                    b3 = 7;
                }
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                break;
            case -467511597:
                if (str.equals("lastIndexOf")) {
                    b3 = 8;
                }
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                break;
            case -399551817:
                if (str.equals("toUpperCase")) {
                    b3 = 9;
                }
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                break;
            case 3568674:
                if (str.equals(str3)) {
                    b3 = 10;
                }
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                break;
            case 103668165:
                if (str.equals("match")) {
                    b3 = 11;
                }
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                break;
            case 109526418:
                if (str.equals("slice")) {
                    b3 = 12;
                }
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                break;
            case 109648666:
                if (str.equals("split")) {
                    b3 = 13;
                }
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                break;
            case 530542161:
                if (str.equals("substring")) {
                    b3 = 14;
                }
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                break;
            case 1094496948:
                if (str.equals("replace")) {
                    b3 = 15;
                }
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                break;
            case 1943291465:
                if (str.equals("indexOf")) {
                    b3 = 16;
                }
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                break;
            default:
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                break;
        }
        strZzf = "undefined";
        String str7 = str4;
        String str8 = this.f1798a;
        switch (b3) {
            case 0:
                p4.g(1, str7, arrayList);
                n nVarG = ((y4) yVar.f2163b).G(yVar, (n) arrayList.get(0));
                if (!"length".equals(nVarG.zzf())) {
                    double dDoubleValue = nVarG.c().doubleValue();
                    if (dDoubleValue != Math.floor(dDoubleValue) || (i6 = (int) dDoubleValue) < 0 || i6 >= str8.length()) {
                        return n.f1749t;
                    }
                }
                return n.f1748s;
            case 1:
                p4.g(0, str6, arrayList);
                return this;
            case 2:
                p4.g(0, "toLocaleLowerCase", arrayList);
                return new p(str8.toLowerCase());
            case 3:
                p4.q(str5, 1, arrayList);
                int iA = !arrayList.isEmpty() ? (int) p4.a(((y4) yVar.f2163b).G(yVar, (n) arrayList.get(0)).c().doubleValue()) : 0;
                return (iA < 0 || iA >= str8.length()) ? n.f1750u : new p(String.valueOf(str8.charAt(iA)));
            case 4:
                if (!arrayList.isEmpty()) {
                    StringBuilder sb = new StringBuilder(str8);
                    for (int i11 = 0; i11 < arrayList.size(); i11++) {
                        sb.append(((y4) yVar.f2163b).G(yVar, (n) arrayList.get(i11)).zzf());
                    }
                    return new p(sb.toString());
                }
                return this;
            case 5:
                p4.g(0, "toLowerCase", arrayList);
                return new p(str8.toLowerCase(Locale.ENGLISH));
            case 6:
                p4.q(FirebaseAnalytics.Event.SEARCH, 1, arrayList);
                return Pattern.compile(arrayList.isEmpty() ? "undefined" : ((y4) yVar.f2163b).G(yVar, (n) arrayList.get(0)).zzf()).matcher(str8).find() ? new g(Double.valueOf(r0.start())) : new g(Double.valueOf(-1.0d));
            case 7:
                p4.g(0, "toLocaleUpperCase", arrayList);
                return new p(str8.toUpperCase());
            case WakeMessage.ACTIVITY /* 8 */:
                p4.q("lastIndexOf", 2, arrayList);
                strZzf = arrayList.size() > 0 ? ((y4) yVar.f2163b).G(yVar, (n) arrayList.get(0)).zzf() : "undefined";
                return new g(Double.valueOf(str8.lastIndexOf(strZzf, (int) (Double.isNaN(arrayList.size() < 2 ? Double.NaN : ((y4) yVar.f2163b).G(yVar, (n) arrayList.get(1)).c().doubleValue()) ? Double.POSITIVE_INFINITY : p4.a(r2)))));
            case 9:
                p4.g(0, "toUpperCase", arrayList);
                return new p(str8.toUpperCase(Locale.ENGLISH));
            case 10:
                p4.g(0, "toUpperCase", arrayList);
                return new p(str8.trim());
            case 11:
                p4.q("match", 1, arrayList);
                Matcher matcher = Pattern.compile(arrayList.size() <= 0 ? "" : ((y4) yVar.f2163b).G(yVar, (n) arrayList.get(0)).zzf()).matcher(str8);
                return matcher.find() ? new e(new p(matcher.group())) : n.f1744o;
            case 12:
                p4.q("slice", 2, arrayList);
                double dA = p4.a(!arrayList.isEmpty() ? ((y4) yVar.f2163b).G(yVar, (n) arrayList.get(0)).c().doubleValue() : 0.0d);
                int iMax = (int) (dA < 0.0d ? Math.max(((double) str8.length()) + dA, 0.0d) : Math.min(dA, str8.length()));
                double dA2 = p4.a(arrayList.size() > 1 ? ((y4) yVar.f2163b).G(yVar, (n) arrayList.get(1)).c().doubleValue() : str8.length());
                return new p(str8.substring(iMax, Math.max(0, ((int) (dA2 < 0.0d ? Math.max(((double) str8.length()) + dA2, 0.0d) : Math.min(dA2, str8.length()))) - iMax) + iMax));
            case 13:
                p4.q("split", 2, arrayList);
                if (str8.length() == 0) {
                    return new e(this);
                }
                ArrayList arrayList2 = new ArrayList();
                if (arrayList.isEmpty()) {
                    arrayList2.add(this);
                } else {
                    String strZzf2 = ((y4) yVar.f2163b).G(yVar, (n) arrayList.get(0)).zzf();
                    long jM = arrayList.size() > 1 ? ((long) p4.m(((y4) yVar.f2163b).G(yVar, (n) arrayList.get(1)).c().doubleValue())) & 4294967295L : 2147483647L;
                    if (jM == 0) {
                        return new e();
                    }
                    String[] strArrSplit = str8.split(Pattern.quote(strZzf2), ((int) jM) + 1);
                    int length = strArrSplit.length;
                    if (!strZzf2.isEmpty() || strArrSplit.length <= 0) {
                        i9 = 0;
                    } else {
                        boolean zIsEmpty = strArrSplit[0].isEmpty();
                        i9 = zIsEmpty;
                        if (strArrSplit[strArrSplit.length - 1].isEmpty()) {
                            length = strArrSplit.length - 1;
                            i9 = zIsEmpty;
                        }
                    }
                    if (strArrSplit.length > jM) {
                        length--;
                    }
                    while (i9 < length) {
                        arrayList2.add(new p(strArrSplit[i9]));
                        i9++;
                    }
                }
                return new e(arrayList2);
            case 14:
                p4.q("substring", 2, arrayList);
                int iA2 = !arrayList.isEmpty() ? (int) p4.a(((y4) yVar.f2163b).G(yVar, (n) arrayList.get(0)).c().doubleValue()) : 0;
                int iA3 = arrayList.size() > 1 ? (int) p4.a(((y4) yVar.f2163b).G(yVar, (n) arrayList.get(1)).c().doubleValue()) : str8.length();
                int iMin = Math.min(Math.max(iA2, 0), str8.length());
                int iMin2 = Math.min(Math.max(iA3, 0), str8.length());
                return new p(str8.substring(Math.min(iMin, iMin2), Math.max(iMin, iMin2)));
            case 15:
                p4.q("replace", 2, arrayList);
                boolean zIsEmpty2 = arrayList.isEmpty();
                n nVarE = n.f1743n;
                if (!zIsEmpty2) {
                    strZzf = ((y4) yVar.f2163b).G(yVar, (n) arrayList.get(0)).zzf();
                    if (arrayList.size() > 1) {
                        nVarE = ((y4) yVar.f2163b).G(yVar, (n) arrayList.get(1));
                    }
                }
                int iIndexOf = str8.indexOf(strZzf);
                if (iIndexOf >= 0) {
                    if (nVarE instanceof j) {
                        i10 = 0;
                        nVarE = ((j) nVarE).e(yVar, Arrays.asList(new p(strZzf), new g(Double.valueOf(iIndexOf)), this));
                    } else {
                        i10 = 0;
                    }
                    return new p(str8.substring(i10, iIndexOf) + nVarE.zzf() + str8.substring(strZzf.length() + iIndexOf));
                }
                return this;
            case 16:
                p4.q("indexOf", 2, arrayList);
                if (arrayList.size() <= 0) {
                    yVar2 = yVar;
                } else {
                    yVar2 = yVar;
                    strZzf = ((y4) yVar2.f2163b).G(yVar2, (n) arrayList.get(0)).zzf();
                }
                return new g(Double.valueOf(str8.indexOf(strZzf, (int) p4.a(arrayList.size() < 2 ? 0.0d : ((y4) yVar2.f2163b).G(yVar2, (n) arrayList.get(1)).c().doubleValue()))));
            default:
                throw new IllegalArgumentException("Command not supported");
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof p) {
            return this.f1798a.equals(((p) obj).f1798a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f1798a.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new r(0, this);
    }

    public final String toString() {
        return q2.x.g("\"", this.f1798a, "\"");
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final Boolean zzd() {
        return Boolean.valueOf(!this.f1798a.isEmpty());
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final String zzf() {
        return this.f1798a;
    }

    @Override // com.google.android.gms.internal.measurement.n
    public final Iterator zzh() {
        return new r(1, this);
    }
}
