package org.apache.cordova;

import java.net.MalformedURLException;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Pattern f4488a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Pattern f4489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Integer f4490c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Pattern f4491d;

    public a(String str, String str2, String str3, String str4) throws MalformedURLException {
        try {
            if ("*".equals(str)) {
                this.f4488a = null;
            } else {
                this.f4488a = Pattern.compile(a(str, false), 2);
            }
            if ("*".equals(str2)) {
                this.f4489b = null;
            } else if (str2.startsWith("*.")) {
                this.f4489b = Pattern.compile("([a-z0-9.-]*\\.)?" + a(str2.substring(2), false), 2);
            } else {
                this.f4489b = Pattern.compile(a(str2, false), 2);
            }
            if (str3 == null || "*".equals(str3)) {
                this.f4490c = null;
            } else {
                this.f4490c = Integer.valueOf(Integer.parseInt(str3, 10));
            }
            if (str4 != null && !"/*".equals(str4)) {
                this.f4491d = Pattern.compile(a(str4, true));
                return;
            }
            this.f4491d = null;
        } catch (NumberFormatException unused) {
            throw new MalformedURLException("Port must be a number");
        }
    }

    public static String a(String str, boolean z5) {
        StringBuilder sb = new StringBuilder();
        for (int i6 = 0; i6 < str.length(); i6++) {
            char cCharAt = str.charAt(i6);
            if (cCharAt == '*' && z5) {
                sb.append(".");
            } else if ("\\.[]{}()^$?+|".indexOf(cCharAt) > -1) {
                sb.append('\\');
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }
}
