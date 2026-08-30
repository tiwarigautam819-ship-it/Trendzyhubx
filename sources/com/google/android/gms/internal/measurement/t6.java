package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class t6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f1911a;

    static {
        char[] cArr = new char[80];
        f1911a = cArr;
        Arrays.fill(cArr, ' ');
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x018b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(com.google.android.gms.internal.measurement.z5 r21, java.lang.StringBuilder r22, int r23) {
        /*
            Method dump skipped, instruction units count: 562
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.t6.a(com.google.android.gms.internal.measurement.z5, java.lang.StringBuilder, int):void");
    }

    public static void b(StringBuilder sb, int i6) {
        while (i6 > 0) {
            int i9 = 80;
            if (i6 <= 80) {
                i9 = i6;
            }
            sb.append(f1911a, 0, i9);
            i6 -= i9;
        }
    }

    public static void c(StringBuilder sb, int i6, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                c(sb, i6, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                c(sb, i6, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        b(sb, i6);
        if (!str.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Character.toLowerCase(str.charAt(0)));
            for (int i9 = 1; i9 < str.length(); i9++) {
                char cCharAt = str.charAt(i9);
                if (Character.isUpperCase(cCharAt)) {
                    sb2.append("_");
                }
                sb2.append(Character.toLowerCase(cCharAt));
            }
            str = sb2.toString();
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            p5 p5Var = p5.f1805c;
            sb.append(q0.c(new p5(((String) obj).getBytes(b6.f1534a))));
            sb.append('\"');
            return;
        }
        if (obj instanceof p5) {
            sb.append(": \"");
            sb.append(q0.c((p5) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof z5) {
            sb.append(" {");
            a((z5) obj, sb, i6 + 2);
            sb.append("\n");
            b(sb, i6);
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj);
            return;
        }
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int i10 = i6 + 2;
        c(sb, i10, "key", entry.getKey());
        c(sb, i10, "value", entry.getValue());
        sb.append("\n");
        b(sb, i6);
        sb.append("}");
    }
}
