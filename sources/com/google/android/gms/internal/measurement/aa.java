package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class aa implements ba {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e5 f1528a;

    static {
        f5 f5Var = new f5(c5.a("com.google.android.gms.measurement"), "", "", true, true);
        f5Var.c("measurement.collection.enable_session_stitching_token.client.dev", true);
        f5Var.c("measurement.collection.enable_session_stitching_token.first_open_fix", true);
        f1528a = f5Var.c("measurement.session_stitching_token_enabled", false);
        f5Var.c("measurement.link_sst_to_sid", true);
    }
}
