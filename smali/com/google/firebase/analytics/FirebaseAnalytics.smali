###### Class com.google.firebase.analytics.FirebaseAnalytics (com.google.firebase.analytics.FirebaseAnalytics)
.class public final Lcom/google/firebase/analytics/FirebaseAnalytics;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;,
        Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;,
        Lcom/google/firebase/analytics/FirebaseAnalytics$UserProperty;,
        Lcom/google/firebase/analytics/FirebaseAnalytics$Param;,
        Lcom/google/firebase/analytics/FirebaseAnalytics$Event;
    }
.end annotation


# static fields
.field private static volatile zza:Lcom/google/firebase/analytics/FirebaseAnalytics;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/k1;

.field private zzc:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/k1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/internal/measurement/k1;

    .line 8
    .line 9
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;
    .registers 3

    .line 1
    sget-object v0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 2
    .line 3
    if-nez v0, :cond_1e

    .line 4
    .line 5
    const-class v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 9
    .line 10
    if-nez v1, :cond_1a

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p0, v1, v1, v1, v1}, Lcom/google/android/gms/internal/measurement/k1;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/k1;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v1, Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lcom/google/android/gms/internal/measurement/k1;)V

    .line 20
    .line 21
    .line 22
    sput-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 23
    .line 24
    goto :goto_1a

    .line 25
    :catchall_18
    move-exception p0

    .line 26
    goto :goto_1c

    .line 27
    :cond_1a
    :goto_1a
    monitor-exit v0

    .line 28
    goto :goto_1e

    .line 29
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_18

    .line 30
    throw p0

    .line 31
    :cond_1e
    :goto_1e
    sget-object p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 32
    .line 33
    return-object p0
.end method

.method public static getScionFrontendApiImplementation(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/zzlb;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, v0, v0, p1}, Lcom/google/android/gms/internal/measurement/k1;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/k1;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    if-nez p0, :cond_8

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_8
    new-instance p1, Lcom/google/firebase/analytics/zzd;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/google/firebase/analytics/zzd;-><init>(Lcom/google/android/gms/internal/measurement/k1;)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method

.method public static bridge synthetic zza(Lcom/google/firebase/analytics/FirebaseAnalytics;)Lcom/google/android/gms/internal/measurement/k1;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/internal/measurement/k1;

    return-object p0
.end method

.method private final zza()Ljava/util/concurrent/ExecutorService;
    .registers 11

    .line 2
    const-class v1, Lcom/google/firebase/analytics/FirebaseAnalytics;

    monitor-enter v1

    .line 3
    :try_start_3
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_22

    .line 4
    new-instance v2, Lcom/google/firebase/analytics/zza;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x64

    invoke-direct {v9, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x1e

    move-object v3, p0

    :try_start_17
    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/analytics/zza;-><init>(Lcom/google/firebase/analytics/FirebaseAnalytics;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, v3, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Ljava/util/concurrent/ExecutorService;

    goto :goto_23

    :catchall_1d
    move-exception v0

    goto :goto_27

    :catchall_1f
    move-exception v0

    move-object v3, p0

    goto :goto_27

    :cond_22
    move-object v3, p0

    .line 5
    :goto_23
    iget-object v0, v3, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Ljava/util/concurrent/ExecutorService;

    monitor-exit v1

    return-object v0

    .line 6
    :goto_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_1d

    throw v0
.end method


# virtual methods
.method public final getAppInstanceId()Lp4/i;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lp4/i;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/firebase/analytics/zzc;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/google/firebase/analytics/zzc;-><init>(Lcom/google/firebase/analytics/FirebaseAnalytics;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lj7/g;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lp4/q;

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_e

    .line 14
    return-object v0

    .line 15
    :catch_e
    move-exception v0

    .line 16
    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/internal/measurement/k1;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/google/android/gms/internal/measurement/v1;

    .line 22
    .line 23
    const-string v3, "Failed to schedule task for getAppInstanceId"

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/gms/internal/measurement/v1;-><init>(Lcom/google/android/gms/internal/measurement/k1;Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/k1;->f(Lcom/google/android/gms/internal/measurement/g1;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lj7/g;->k(Ljava/lang/Exception;)Lp4/q;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.method public final getFirebaseInstanceId()Ljava/lang/String;
    .registers 5

    .line 1
    :try_start_0
    sget-object v0, Lh5/d;->m:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {}, Lt4/g;->c()Lt4/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lh5/e;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lt4/g;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lh5/d;

    .line 14
    .line 15
    invoke-virtual {v0}, Lh5/d;->d()Lp4/q;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    .line 21
    const-wide/16 v2, 0x7530

    .line 22
    .line 23
    invoke-static {v0, v2, v3, v1}, Lj7/g;->b(Lp4/i;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/String;
    :try_end_1c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_1c} :catch_1f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_1c} :catch_27
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 28
    .line 29
    return-object v0

    .line 30
    :catch_1d
    move-exception v0

    .line 31
    goto :goto_21

    .line 32
    :catch_1f
    move-exception v0

    .line 33
    goto :goto_2f

    .line 34
    :goto_21
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw v1

    .line 40
    :catch_27
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    .line 41
    .line 42
    const-string v1, "Firebase Installations getId Task has timed out."

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :goto_2f
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    throw v1
.end method

.method public final getSessionId()Lp4/i;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lp4/i;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/firebase/analytics/zzb;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/google/firebase/analytics/zzb;-><init>(Lcom/google/firebase/analytics/FirebaseAnalytics;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lj7/g;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lp4/q;

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_e

    .line 14
    return-object v0

    .line 15
    :catch_e
    move-exception v0

    .line 16
    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/internal/measurement/k1;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/google/android/gms/internal/measurement/v1;

    .line 22
    .line 23
    const-string v3, "Failed to schedule task for getSessionId"

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/gms/internal/measurement/v1;-><init>(Lcom/google/android/gms/internal/measurement/k1;Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/k1;->f(Lcom/google/android/gms/internal/measurement/g1;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lj7/g;->k(Ljava/lang/Exception;)Lp4/q;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.method public final logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 11

    .line 1
    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/internal/measurement/k1;

    .line 2
    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/z1;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x1

    .line 12
    move-object v4, p1

    .line 13
    move-object v5, p2

    .line 14
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/z1;-><init>(Lcom/google/android/gms/internal/measurement/k1;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/k1;->f(Lcom/google/android/gms/internal/measurement/g1;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final resetAnalyticsData()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/internal/measurement/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/r1;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/r1;-><init>(Lcom/google/android/gms/internal/measurement/k1;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/k1;->f(Lcom/google/android/gms/internal/measurement/g1;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setAnalyticsCollectionEnabled(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/internal/measurement/k1;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/google/android/gms/internal/measurement/q1;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/gms/internal/measurement/q1;-><init>(Lcom/google/android/gms/internal/measurement/k1;Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/k1;->f(Lcom/google/android/gms/internal/measurement/g1;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final setConsent(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;",
            "Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;->AD_STORAGE:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

    .line 7
    .line 8
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    .line 13
    .line 14
    const-string v2, "granted"

    .line 15
    .line 16
    const-string v3, "denied"

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    if-eqz v1, :cond_26

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const-string v5, "ad_storage"

    .line 26
    .line 27
    if-eqz v1, :cond_23

    .line 28
    .line 29
    if-eq v1, v4, :cond_1f

    .line 30
    .line 31
    goto :goto_26

    .line 32
    :cond_1f
    invoke-virtual {v0, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_26

    .line 36
    :cond_23
    invoke-virtual {v0, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_26
    :goto_26
    sget-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;->ANALYTICS_STORAGE:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

    .line 40
    .line 41
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    .line 46
    .line 47
    if-eqz v1, :cond_42

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const-string v5, "analytics_storage"

    .line 54
    .line 55
    if-eqz v1, :cond_3f

    .line 56
    .line 57
    if-eq v1, v4, :cond_3b

    .line 58
    .line 59
    goto :goto_42

    .line 60
    :cond_3b
    invoke-virtual {v0, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_42

    .line 64
    :cond_3f
    invoke-virtual {v0, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_42
    :goto_42
    sget-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;->AD_USER_DATA:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

    .line 68
    .line 69
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    .line 74
    .line 75
    if-eqz v1, :cond_5e

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    const-string v5, "ad_user_data"

    .line 82
    .line 83
    if-eqz v1, :cond_5b

    .line 84
    .line 85
    if-eq v1, v4, :cond_57

    .line 86
    .line 87
    goto :goto_5e

    .line 88
    :cond_57
    invoke-virtual {v0, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_5e

    .line 92
    :cond_5b
    invoke-virtual {v0, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_5e
    :goto_5e
    sget-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;->AD_PERSONALIZATION:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

    .line 96
    .line 97
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    .line 102
    .line 103
    if-eqz p1, :cond_7a

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    const-string v1, "ad_personalization"

    .line 110
    .line 111
    if-eqz p1, :cond_77

    .line 112
    .line 113
    if-eq p1, v4, :cond_73

    .line 114
    .line 115
    goto :goto_7a

    .line 116
    :cond_73
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_7a

    .line 120
    :cond_77
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_7a
    :goto_7a
    iget-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/internal/measurement/k1;

    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    new-instance v1, Lcom/google/android/gms/internal/measurement/l1;

    .line 129
    .line 130
    const/4 v2, 0x2

    .line 131
    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/gms/internal/measurement/l1;-><init>(Lcom/google/android/gms/internal/measurement/k1;Landroid/os/Bundle;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/k1;->f(Lcom/google/android/gms/internal/measurement/g1;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public final setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/internal/measurement/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/o1;

    .line 7
    .line 8
    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/o1;-><init>(Lcom/google/android/gms/internal/measurement/k1;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/k1;->f(Lcom/google/android/gms/internal/measurement/g1;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setDefaultEventParameters(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    if-eqz p1, :cond_8

    .line 2
    .line 3
    new-instance v0, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    move-object p1, v0

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/internal/measurement/k1;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/google/android/gms/internal/measurement/l1;

    .line 15
    .line 16
    const/4 v2, 0x3

    .line 17
    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/gms/internal/measurement/l1;-><init>(Lcom/google/android/gms/internal/measurement/k1;Landroid/os/Bundle;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/k1;->f(Lcom/google/android/gms/internal/measurement/g1;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final setSessionTimeoutDuration(J)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/internal/measurement/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/s1;

    .line 7
    .line 8
    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/gms/internal/measurement/s1;-><init>(Lcom/google/android/gms/internal/measurement/k1;J)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/k1;->f(Lcom/google/android/gms/internal/measurement/g1;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/internal/measurement/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/p1;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/gms/internal/measurement/p1;-><init>(Lcom/google/android/gms/internal/measurement/k1;Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/k1;->f(Lcom/google/android/gms/internal/measurement/g1;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setUserProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 1
    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/internal/measurement/k1;

    .line 2
    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/n1;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    move-object v3, p1

    .line 11
    move-object v4, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/n1;-><init>(Lcom/google/android/gms/internal/measurement/k1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/k1;->f(Lcom/google/android/gms/internal/measurement/g1;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

###### Class com.google.firebase.analytics.FirebaseAnalytics.ConsentStatus (com.google.firebase.analytics.FirebaseAnalytics$ConsentStatus)
.class public final enum Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;
.super Ljava/lang/Enum;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/analytics/FirebaseAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConsentStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DENIED:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

.field public static final enum GRANTED:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

.field private static final synthetic zza:[Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    .line 2
    .line 3
    const-string v1, "GRANTED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;->GRANTED:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    .line 10
    .line 11
    new-instance v1, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    .line 12
    .line 13
    const-string v3, "DENIED"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;->DENIED:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    new-array v3, v3, [Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    .line 23
    .line 24
    aput-object v0, v3, v2

    .line 25
    .line 26
    aput-object v1, v3, v4

    .line 27
    .line 28
    sput-object v3, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;->zza:[Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    .line 29
    .line 30
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;
    .registers 2

    .line 1
    const-class v0, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;->zza:[Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    .line 8
    .line 9
    return-object v0
.end method

###### Class com.google.firebase.analytics.FirebaseAnalytics.ConsentType (com.google.firebase.analytics.FirebaseAnalytics$ConsentType)
.class public final enum Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;
.super Ljava/lang/Enum;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/analytics/FirebaseAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConsentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD_PERSONALIZATION:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

.field public static final enum AD_STORAGE:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

.field public static final enum AD_USER_DATA:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

.field public static final enum ANALYTICS_STORAGE:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

.field private static final synthetic zza:[Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

    .line 2
    .line 3
    const-string v1, "AD_STORAGE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;->AD_STORAGE:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

    .line 10
    .line 11
    new-instance v1, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

    .line 12
    .line 13
    const-string v3, "ANALYTICS_STORAGE"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;->ANALYTICS_STORAGE:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

    .line 20
    .line 21
    new-instance v3, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

    .line 22
    .line 23
    const-string v5, "AD_USER_DATA"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;->AD_USER_DATA:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

    .line 30
    .line 31
    new-instance v5, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

    .line 32
    .line 33
    const-string v7, "AD_PERSONALIZATION"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;->AD_PERSONALIZATION:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

    .line 40
    .line 41
    const/4 v7, 0x4

    .line 42
    new-array v7, v7, [Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

    .line 43
    .line 44
    aput-object v0, v7, v2

    .line 45
    .line 46
    aput-object v1, v7, v4

    .line 47
    .line 48
    aput-object v3, v7, v6

    .line 49
    .line 50
    aput-object v5, v7, v8

    .line 51
    .line 52
    sput-object v7, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;->zza:[Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

    .line 53
    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;
    .registers 2

    .line 1
    const-class v0, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;->zza:[Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

    .line 8
    .line 9
    return-object v0
.end method

###### Class com.google.firebase.analytics.FirebaseAnalytics.Event (com.google.firebase.analytics.FirebaseAnalytics$Event)
.class public Lcom/google/firebase/analytics/FirebaseAnalytics$Event;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/analytics/FirebaseAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# static fields
.field public static final ADD_PAYMENT_INFO:Ljava/lang/String; = "add_payment_info"

.field public static final ADD_SHIPPING_INFO:Ljava/lang/String; = "add_shipping_info"

.field public static final ADD_TO_CART:Ljava/lang/String; = "add_to_cart"

.field public static final ADD_TO_WISHLIST:Ljava/lang/String; = "add_to_wishlist"

.field public static final AD_IMPRESSION:Ljava/lang/String; = "ad_impression"

.field public static final APP_OPEN:Ljava/lang/String; = "app_open"

.field public static final BEGIN_CHECKOUT:Ljava/lang/String; = "begin_checkout"

.field public static final CAMPAIGN_DETAILS:Ljava/lang/String; = "campaign_details"

.field public static final EARN_VIRTUAL_CURRENCY:Ljava/lang/String; = "earn_virtual_currency"

.field public static final GENERATE_LEAD:Ljava/lang/String; = "generate_lead"

.field public static final JOIN_GROUP:Ljava/lang/String; = "join_group"

.field public static final LEVEL_END:Ljava/lang/String; = "level_end"

.field public static final LEVEL_START:Ljava/lang/String; = "level_start"

.field public static final LEVEL_UP:Ljava/lang/String; = "level_up"

.field public static final LOGIN:Ljava/lang/String; = "login"

.field public static final POST_SCORE:Ljava/lang/String; = "post_score"

.field public static final PURCHASE:Ljava/lang/String; = "purchase"

.field public static final REFUND:Ljava/lang/String; = "refund"

.field public static final REMOVE_FROM_CART:Ljava/lang/String; = "remove_from_cart"

.field public static final SCREEN_VIEW:Ljava/lang/String; = "screen_view"

.field public static final SEARCH:Ljava/lang/String; = "search"

.field public static final SELECT_CONTENT:Ljava/lang/String; = "select_content"

.field public static final SELECT_ITEM:Ljava/lang/String; = "select_item"

.field public static final SELECT_PROMOTION:Ljava/lang/String; = "select_promotion"

.field public static final SHARE:Ljava/lang/String; = "share"

.field public static final SIGN_UP:Ljava/lang/String; = "sign_up"

.field public static final SPEND_VIRTUAL_CURRENCY:Ljava/lang/String; = "spend_virtual_currency"

.field public static final TUTORIAL_BEGIN:Ljava/lang/String; = "tutorial_begin"

.field public static final TUTORIAL_COMPLETE:Ljava/lang/String; = "tutorial_complete"

.field public static final UNLOCK_ACHIEVEMENT:Ljava/lang/String; = "unlock_achievement"

.field public static final VIEW_CART:Ljava/lang/String; = "view_cart"

.field public static final VIEW_ITEM:Ljava/lang/String; = "view_item"

.field public static final VIEW_ITEM_LIST:Ljava/lang/String; = "view_item_list"

.field public static final VIEW_PROMOTION:Ljava/lang/String; = "view_promotion"

.field public static final VIEW_SEARCH_RESULTS:Ljava/lang/String; = "view_search_results"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

###### Class com.google.firebase.analytics.FirebaseAnalytics.Param (com.google.firebase.analytics.FirebaseAnalytics$Param)
.class public Lcom/google/firebase/analytics/FirebaseAnalytics$Param;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/analytics/FirebaseAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Param"
.end annotation


# static fields
.field public static final ACHIEVEMENT_ID:Ljava/lang/String; = "achievement_id"

.field public static final ACLID:Ljava/lang/String; = "aclid"

.field public static final AD_FORMAT:Ljava/lang/String; = "ad_format"

.field public static final AD_PLATFORM:Ljava/lang/String; = "ad_platform"

.field public static final AD_SOURCE:Ljava/lang/String; = "ad_source"

.field public static final AD_UNIT_NAME:Ljava/lang/String; = "ad_unit_name"

.field public static final AFFILIATION:Ljava/lang/String; = "affiliation"

.field public static final CAMPAIGN:Ljava/lang/String; = "campaign"

.field public static final CAMPAIGN_ID:Ljava/lang/String; = "campaign_id"

.field public static final CHARACTER:Ljava/lang/String; = "character"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field public static final COUPON:Ljava/lang/String; = "coupon"

.field public static final CP1:Ljava/lang/String; = "cp1"

.field public static final CREATIVE_FORMAT:Ljava/lang/String; = "creative_format"

.field public static final CREATIVE_NAME:Ljava/lang/String; = "creative_name"

.field public static final CREATIVE_SLOT:Ljava/lang/String; = "creative_slot"

.field public static final CURRENCY:Ljava/lang/String; = "currency"

.field public static final DESTINATION:Ljava/lang/String; = "destination"

.field public static final DISCOUNT:Ljava/lang/String; = "discount"

.field public static final END_DATE:Ljava/lang/String; = "end_date"

.field public static final EXTEND_SESSION:Ljava/lang/String; = "extend_session"

.field public static final FLIGHT_NUMBER:Ljava/lang/String; = "flight_number"

.field public static final GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final INDEX:Ljava/lang/String; = "index"

.field public static final ITEMS:Ljava/lang/String; = "items"

.field public static final ITEM_BRAND:Ljava/lang/String; = "item_brand"

.field public static final ITEM_CATEGORY:Ljava/lang/String; = "item_category"

.field public static final ITEM_CATEGORY2:Ljava/lang/String; = "item_category2"

.field public static final ITEM_CATEGORY3:Ljava/lang/String; = "item_category3"

.field public static final ITEM_CATEGORY4:Ljava/lang/String; = "item_category4"

.field public static final ITEM_CATEGORY5:Ljava/lang/String; = "item_category5"

.field public static final ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final ITEM_LIST_ID:Ljava/lang/String; = "item_list_id"

.field public static final ITEM_LIST_NAME:Ljava/lang/String; = "item_list_name"

.field public static final ITEM_NAME:Ljava/lang/String; = "item_name"

.field public static final ITEM_VARIANT:Ljava/lang/String; = "item_variant"

.field public static final LEVEL:Ljava/lang/String; = "level"

.field public static final LEVEL_NAME:Ljava/lang/String; = "level_name"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final LOCATION_ID:Ljava/lang/String; = "location_id"

.field public static final MARKETING_TACTIC:Ljava/lang/String; = "marketing_tactic"

.field public static final MEDIUM:Ljava/lang/String; = "medium"

.field public static final METHOD:Ljava/lang/String; = "method"

.field public static final NUMBER_OF_NIGHTS:Ljava/lang/String; = "number_of_nights"

.field public static final NUMBER_OF_PASSENGERS:Ljava/lang/String; = "number_of_passengers"

.field public static final NUMBER_OF_ROOMS:Ljava/lang/String; = "number_of_rooms"

.field public static final ORIGIN:Ljava/lang/String; = "origin"

.field public static final PAYMENT_TYPE:Ljava/lang/String; = "payment_type"

.field public static final PRICE:Ljava/lang/String; = "price"

.field public static final PROMOTION_ID:Ljava/lang/String; = "promotion_id"

.field public static final PROMOTION_NAME:Ljava/lang/String; = "promotion_name"

.field public static final QUANTITY:Ljava/lang/String; = "quantity"

.field public static final SCORE:Ljava/lang/String; = "score"

.field public static final SCREEN_CLASS:Ljava/lang/String; = "screen_class"

.field public static final SCREEN_NAME:Ljava/lang/String; = "screen_name"

.field public static final SEARCH_TERM:Ljava/lang/String; = "search_term"

.field public static final SHIPPING:Ljava/lang/String; = "shipping"

.field public static final SHIPPING_TIER:Ljava/lang/String; = "shipping_tier"

.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final SOURCE_PLATFORM:Ljava/lang/String; = "source_platform"

.field public static final START_DATE:Ljava/lang/String; = "start_date"

.field public static final SUCCESS:Ljava/lang/String; = "success"

.field public static final TAX:Ljava/lang/String; = "tax"

.field public static final TERM:Ljava/lang/String; = "term"

.field public static final TRANSACTION_ID:Ljava/lang/String; = "transaction_id"

.field public static final TRAVEL_CLASS:Ljava/lang/String; = "travel_class"

.field public static final VALUE:Ljava/lang/String; = "value"

.field public static final VIRTUAL_CURRENCY_NAME:Ljava/lang/String; = "virtual_currency_name"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

###### Class com.google.firebase.analytics.FirebaseAnalytics.UserProperty (com.google.firebase.analytics.FirebaseAnalytics$UserProperty)
.class public Lcom/google/firebase/analytics/FirebaseAnalytics$UserProperty;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/analytics/FirebaseAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserProperty"
.end annotation


# static fields
.field public static final ALLOW_AD_PERSONALIZATION_SIGNALS:Ljava/lang/String; = "allow_personalized_ads"

.field public static final SIGN_UP_METHOD:Ljava/lang/String; = "sign_up_method"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
