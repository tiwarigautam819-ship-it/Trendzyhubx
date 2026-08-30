package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i8 implements f8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e5 f1677a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final e5 f1678b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final e5 f1679c;

    static {
        f5 f5Var = new f5(c5.a("com.google.android.gms.measurement"), "", "", true, true);
        f5Var.c("measurement.dma_consent.client", true);
        f5Var.c("measurement.dma_consent.client_bow_check2", true);
        f5Var.c("measurement.dma_consent.separate_service_calls_fix", true);
        f5Var.c("measurement.dma_consent.service", true);
        f1677a = f5Var.c("measurement.dma_consent.service_database_update_fix", true);
        f5Var.c("measurement.dma_consent.service_dcu_event", true);
        f1678b = f5Var.c("measurement.dma_consent.service_dcu_event2", true);
        f5Var.c("measurement.dma_consent.service_npa_remote_default", true);
        f5Var.c("measurement.dma_consent.service_split_batch_on_consent", true);
        f5Var.c("measurement.dma_consent.set_consent_inline_on_worker", true);
        f1679c = f5Var.c("measurement.dma_consent.setting_npa_inline_fix", true);
    }
}
