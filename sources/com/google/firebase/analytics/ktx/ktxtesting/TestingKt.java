package com.google.firebase.analytics.ktx.ktxtesting;

import c7.a;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.analytics.ktx.AnalyticsKt;
import d7.g;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class TestingKt {
    public static final void withAnalyticsForTest(FirebaseAnalytics firebaseAnalytics, a aVar) {
        g.f("analytics", firebaseAnalytics);
        g.f("block", aVar);
        synchronized (AnalyticsKt.getLOCK()) {
            FirebaseAnalytics analytics = AnalyticsKt.getANALYTICS();
            AnalyticsKt.setANALYTICS(firebaseAnalytics);
            try {
                aVar.b();
            } finally {
                AnalyticsKt.setANALYTICS(analytics);
            }
        }
    }
}
