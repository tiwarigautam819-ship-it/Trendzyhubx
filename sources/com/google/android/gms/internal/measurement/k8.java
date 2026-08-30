package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k8 implements l8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e5 f1712a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final e5 f1713b;

    static {
        f5 f5Var = new f5(c5.a("com.google.android.gms.measurement"), "", "", true, true);
        f5Var.c("measurement.collection.event_safelist", true);
        f1712a = f5Var.c("measurement.service.store_null_safelist", true);
        f1713b = f5Var.c("measurement.service.store_safelist", true);
    }
}
