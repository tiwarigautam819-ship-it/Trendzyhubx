package com.google.firebase.messaging;

import android.util.Log;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Pattern f2069d = Pattern.compile("[a-zA-Z0-9-_.~%]{1,900}");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2070a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f2071b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f2072c;

    public d0(String str, String str2) {
        String strSubstring;
        if (str2 == null || !str2.startsWith("/topics/")) {
            strSubstring = str2;
        } else {
            Log.w("FirebaseMessaging", "Format /topics/topic-name is deprecated. Only 'topic-name' should be used in " + str + ".");
            strSubstring = str2.substring(8);
        }
        if (strSubstring == null || !f2069d.matcher(strSubstring).matches()) {
            throw new IllegalArgumentException(q2.x.g("Invalid topic name: ", strSubstring, " does not match the allowed format [a-zA-Z0-9-_.~%]{1,900}."));
        }
        this.f2070a = strSubstring;
        this.f2071b = str;
        this.f2072c = str + "!" + str2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof d0)) {
            return false;
        }
        d0 d0Var = (d0) obj;
        return this.f2070a.equals(d0Var.f2070a) && this.f2071b.equals(d0Var.f2071b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f2071b, this.f2070a});
    }
}
