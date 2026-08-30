package com.google.firebase.analytics.ktx;

import c7.l;
import com.google.firebase.analytics.FirebaseAnalytics;
import d7.g;
import m5.a;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class AnalyticsKt {
    private static volatile FirebaseAnalytics zza;
    private static final Object zzb = new Object();

    public static final FirebaseAnalytics getANALYTICS() {
        return zza;
    }

    public static final FirebaseAnalytics getAnalytics(a aVar) {
        g.f("<this>", aVar);
        if (zza == null) {
            synchronized (zzb) {
                if (zza == null) {
                    t4.g gVarC = t4.g.c();
                    gVarC.a();
                    zza = FirebaseAnalytics.getInstance(gVarC.f5320a);
                }
            }
        }
        FirebaseAnalytics firebaseAnalytics = zza;
        g.c(firebaseAnalytics);
        return firebaseAnalytics;
    }

    public static final Object getLOCK() {
        return zzb;
    }

    public static final void logEvent(FirebaseAnalytics firebaseAnalytics, String str, l lVar) {
        g.f("<this>", firebaseAnalytics);
        g.f("name", str);
        g.f("block", lVar);
        ParametersBuilder parametersBuilder = new ParametersBuilder();
        lVar.g(parametersBuilder);
        firebaseAnalytics.logEvent(str, parametersBuilder.getBundle());
    }

    public static final void setANALYTICS(FirebaseAnalytics firebaseAnalytics) {
        zza = firebaseAnalytics;
    }

    public static final void setConsent(FirebaseAnalytics firebaseAnalytics, l lVar) {
        g.f("<this>", firebaseAnalytics);
        g.f("block", lVar);
        ConsentBuilder consentBuilder = new ConsentBuilder();
        lVar.g(consentBuilder);
        firebaseAnalytics.setConsent(consentBuilder.asMap());
    }
}
