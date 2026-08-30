###### Class com.google.firebase.analytics.ktx.ktxtesting.TestingKt (com.google.firebase.analytics.ktx.ktxtesting.TestingKt)
.class public final Lcom/google/firebase/analytics/ktx/ktxtesting/TestingKt;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public static final withAnalyticsForTest(Lcom/google/firebase/analytics/FirebaseAnalytics;Lc7/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/analytics/FirebaseAnalytics;",
            "Lc7/a;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "analytics"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "block"

    .line 7
    .line 8
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/google/firebase/analytics/ktx/AnalyticsKt;->getLOCK()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    monitor-enter v0

    .line 16
    :try_start_f
    invoke-static {}, Lcom/google/firebase/analytics/ktx/AnalyticsKt;->getANALYTICS()Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {p0}, Lcom/google/firebase/analytics/ktx/AnalyticsKt;->setANALYTICS(Lcom/google/firebase/analytics/FirebaseAnalytics;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_1e

    .line 21
    .line 22
    .line 23
    :try_start_16
    invoke-interface {p1}, Lc7/a;->b()Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_20

    .line 24
    .line 25
    .line 26
    :try_start_19
    invoke-static {v1}, Lcom/google/firebase/analytics/ktx/AnalyticsKt;->setANALYTICS(Lcom/google/firebase/analytics/FirebaseAnalytics;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1e

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_1e
    move-exception p0

    .line 32
    goto :goto_25

    .line 33
    :catchall_20
    move-exception p0

    .line 34
    :try_start_21
    invoke-static {v1}, Lcom/google/firebase/analytics/ktx/AnalyticsKt;->setANALYTICS(Lcom/google/firebase/analytics/FirebaseAnalytics;)V

    .line 35
    .line 36
    .line 37
    throw p0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_1e

    .line 38
    :goto_25
    monitor-exit v0

    .line 39
    throw p0
.end method
