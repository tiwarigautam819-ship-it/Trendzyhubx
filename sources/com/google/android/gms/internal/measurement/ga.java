package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class ga implements ha {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e5 f1660a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final e5 f1661b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final e5 f1662c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final e5 f1663d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final e5 f1664e;

    static {
        f5 f5Var = new f5(c5.a("com.google.android.gms.measurement"), "", "", true, true);
        f1660a = f5Var.c("measurement.sgtm.google_signal.enable", false);
        f1661b = f5Var.c("measurement.sgtm.preview_mode_enabled", true);
        f1662c = f5Var.c("measurement.sgtm.rollout_percentage_fix", false);
        f1663d = f5Var.c("measurement.sgtm.service", true);
        f1664e = f5Var.c("measurement.sgtm.upload_queue", false);
        f5Var.a("measurement.id.sgtm", 0L);
    }
}
