package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q8 implements r8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e5 f1840a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final e5 f1841b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final e5 f1842c;

    static {
        f5 f5Var = new f5(c5.a("com.google.android.gms.measurement"), "", "", true, true);
        f5Var.c("measurement.service.audience.fix_skip_audience_with_failed_filters", true);
        f1840a = f5Var.c("measurement.audience.refresh_event_count_filters_timestamp", false);
        f1841b = f5Var.c("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", false);
        f1842c = f5Var.c("measurement.audience.use_bundle_timestamp_for_event_count_filters", false);
    }
}
