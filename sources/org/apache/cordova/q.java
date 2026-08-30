package org.apache.cordova;

import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f4558a = new HashMap(20);

    public final boolean a(String str, boolean z5) {
        String str2 = (String) this.f4558a.get(str.toLowerCase(Locale.ENGLISH));
        return str2 != null ? Boolean.parseBoolean(str2) : z5;
    }

    public final String b(String str, String str2) {
        String str3 = (String) this.f4558a.get(str.toLowerCase(Locale.ENGLISH));
        return str3 != null ? str3 : str2;
    }
}
