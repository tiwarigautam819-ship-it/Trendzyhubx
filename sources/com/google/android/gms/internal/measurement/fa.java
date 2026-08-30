package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class fa implements ca {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e5 f1645a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final e5 f1646b;

    static {
        f5 f5Var = new f5(c5.a("com.google.android.gms.measurement"), "", "", true, true);
        f5Var.c("measurement.client.sessions.background_sessions_enabled", true);
        f1645a = f5Var.c("measurement.client.sessions.enable_fix_background_engagement", false);
        f5Var.c("measurement.client.sessions.immediate_start_enabled_foreground", true);
        f1646b = f5Var.c("measurement.client.sessions.enable_pause_engagement_in_background", true);
        f5Var.c("measurement.client.sessions.remove_expired_session_properties_enabled", true);
        f5Var.c("measurement.client.sessions.session_id_enabled", true);
        f5Var.a("measurement.id.client.sessions.enable_fix_background_engagement", 0L);
    }
}
