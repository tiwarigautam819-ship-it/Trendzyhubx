###### Class com.google.firebase.analytics.ktx.AnalyticsKt (com.google.firebase.analytics.ktx.AnalyticsKt)
.class public final Lcom/google/firebase/analytics/ktx/AnalyticsKt;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static volatile zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private static final zzb:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/analytics/ktx/AnalyticsKt;->zzb:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public static final getANALYTICS()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/firebase/analytics/ktx/AnalyticsKt;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getAnalytics(Lm5/a;)Lcom/google/firebase/analytics/FirebaseAnalytics;
    .registers 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/google/firebase/analytics/ktx/AnalyticsKt;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 7
    .line 8
    if-nez p0, :cond_26

    .line 9
    .line 10
    sget-object p0, Lcom/google/firebase/analytics/ktx/AnalyticsKt;->zzb:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter p0

    .line 13
    :try_start_c
    sget-object v0, Lcom/google/firebase/analytics/ktx/AnalyticsKt;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 14
    .line 15
    if-nez v0, :cond_22

    .line 16
    .line 17
    invoke-static {}, Lt4/g;->c()Lt4/g;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lt4/g;->a()V

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, Lt4/g;->a:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/google/firebase/analytics/ktx/AnalyticsKt;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_20

    .line 31
    .line 32
    goto :goto_22

    .line 33
    :catchall_20
    move-exception v0

    .line 34
    goto :goto_24

    .line 35
    :cond_22
    :goto_22
    monitor-exit p0

    .line 36
    goto :goto_26

    .line 37
    :goto_24
    monitor-exit p0

    .line 38
    throw v0

    .line 39
    :cond_26
    :goto_26
    sget-object p0, Lcom/google/firebase/analytics/ktx/AnalyticsKt;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 40
    .line 41
    invoke-static {p0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-object p0
.end method

.method public static final getLOCK()Ljava/lang/Object;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/firebase/analytics/ktx/AnalyticsKt;->zzb:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final logEvent(Lcom/google/firebase/analytics/FirebaseAnalytics;Ljava/lang/String;Lc7/l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/analytics/FirebaseAnalytics;",
            "Ljava/lang/String;",
            "Lc7/l;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "name"

    .line 7
    .line 8
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "block"

    .line 12
    .line 13
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/google/firebase/analytics/ktx/ParametersBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/google/firebase/analytics/ktx/ParametersBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {p2, v0}, Lc7/l;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/firebase/analytics/ktx/ParametersBuilder;->getBundle()Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static final setANALYTICS(Lcom/google/firebase/analytics/FirebaseAnalytics;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/google/firebase/analytics/ktx/AnalyticsKt;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 2
    .line 3
    return-void
.end method

.method public static final setConsent(Lcom/google/firebase/analytics/FirebaseAnalytics;Lc7/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/analytics/FirebaseAnalytics;",
            "Lc7/l;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

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
    new-instance v0, Lcom/google/firebase/analytics/ktx/ConsentBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/firebase/analytics/ktx/ConsentBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0}, Lc7/l;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/firebase/analytics/ktx/ConsentBuilder;->asMap()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setConsent(Ljava/util/Map;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
