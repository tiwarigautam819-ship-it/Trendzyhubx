package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class x7 implements y7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e5 f1977a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final e5 f1978b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final e5 f1979c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final e5 f1980d;

    static {
        f5 f5Var = new f5(c5.a("com.google.android.gms.measurement"), "", "", true, true);
        f1977a = f5Var.c("measurement.consent.stop_reset_on_storage_denied.client", true);
        f1978b = f5Var.c("measurement.consent.stop_reset_on_storage_denied.service", true);
        f1979c = f5Var.c("measurement.consent.scrub_audience_data_analytics_consent", true);
        f1980d = f5Var.c("measurement.consent.fix_first_open_count_from_snapshot", true);
    }
}
