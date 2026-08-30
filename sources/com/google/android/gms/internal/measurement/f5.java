package com.google.android.gms.internal.measurement;

import android.net.Uri;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri f1632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f1633b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f1634c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f1635d;

    public f5(Uri uri, String str, String str2, boolean z5, boolean z8) {
        this.f1632a = uri;
        this.f1633b = str;
        this.f1634c = str2;
        this.f1635d = z5;
    }

    public final e5 a(String str, long j3) {
        Long lValueOf = Long.valueOf(j3);
        Object obj = e5.f1577g;
        return new e5(this, str, lValueOf, 0);
    }

    public final e5 b(String str, String str2) {
        Object obj = e5.f1577g;
        return new e5(this, str, str2, 3);
    }

    public final e5 c(String str, boolean z5) {
        Boolean boolValueOf = Boolean.valueOf(z5);
        Object obj = e5.f1577g;
        return new e5(this, str, boolValueOf, 2);
    }
}
