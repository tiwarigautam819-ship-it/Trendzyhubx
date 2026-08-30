package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class p8 implements m8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e5 f1812a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final e5 f1813b;

    static {
        f5 f5Var = new f5(c5.a("com.google.android.gms.measurement"), "", "", true, true);
        f5Var.c("measurement.client.ad_id_consent_fix", true);
        f5Var.c("measurement.service.consent.aiid_reset_fix", false);
        f5Var.c("measurement.service.consent.aiid_reset_fix2", true);
        f5Var.c("measurement.service.consent.app_start_fix", true);
        f1812a = f5Var.c("measurement.service.consent.params_on_fx", true);
        f1813b = f5Var.c("measurement.service.consent.pfo_on_fx", true);
    }
}
