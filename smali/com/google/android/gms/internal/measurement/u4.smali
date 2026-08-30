###### Class com.google.android.gms.internal.measurement.u4 (com.google.android.gms.internal.measurement.u4)
.class public final Lcom/google/android/gms/internal/measurement/u4;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/x4;


# static fields
.field public static final h:Ls/e;

.field public static final i:[Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Landroid/net/Uri;

.field public final c:Ljava/lang/Runnable;

.field public final d:Lcom/google/android/gms/internal/measurement/r4;

.field public final e:Ljava/lang/Object;

.field public volatile f:Ljava/util/Map;

.field public final g:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ls/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ls/j;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/android/gms/internal/measurement/u4;->h:Ls/e;

    .line 8
    .line 9
    const-string v0, "key"

    .line 10
    .line 11
    const-string v1, "value"

    .line 12
    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/google/android/gms/internal/measurement/u4;->i:[Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/measurement/r4;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/measurement/r4;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/u4;->d:Lcom/google/android/gms/internal/measurement/r4;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/Object;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/u4;->e:Ljava/lang/Object;

    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/u4;->g:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/u4;->a:Landroid/content/ContentResolver;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/u4;->b:Landroid/net/Uri;

    .line 35
    .line 36
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/u4;->c:Ljava/lang/Runnable;

    .line 37
    .line 38
    const/4 p3, 0x0

    .line 39
    invoke-virtual {p1, p2, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/u4;
    .registers 7

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/u4;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/u4;->h:Ls/e;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    check-cast v2, Lcom/google/android/gms/internal/measurement/u4;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_17

    .line 11
    .line 12
    if-nez v2, :cond_19

    .line 13
    .line 14
    :try_start_d
    new-instance v3, Lcom/google/android/gms/internal/measurement/u4;

    .line 15
    .line 16
    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/u4;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)V
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_12} :catch_19
    .catchall {:try_start_d .. :try_end_12} :catchall_17

    .line 17
    .line 18
    .line 19
    :try_start_12
    invoke-virtual {v1, p1, v3}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_15} :catch_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_17

    .line 20
    .line 21
    .line 22
    :catch_15
    move-object v2, v3

    .line 23
    goto :goto_19

    .line 24
    :catchall_17
    move-exception p0

    .line 25
    goto :goto_1b

    .line 26
    :catch_19
    :cond_19
    :goto_19
    :try_start_19
    monitor-exit v0

    .line 27
    return-object v2

    .line 28
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_17

    .line 29
    throw p0
.end method

.method public static declared-synchronized c()V
    .registers 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/u4;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/u4;->h:Ls/e;

    .line 5
    .line 6
    invoke-virtual {v1}, Ls/e;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ls/d;

    .line 11
    .line 12
    invoke-virtual {v1}, Ls/d;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_25

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/google/android/gms/internal/measurement/u4;

    .line 27
    .line 28
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/u4;->a:Landroid/content/ContentResolver;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/u4;->d:Lcom/google/android/gms/internal/measurement/r4;

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 33
    .line 34
    .line 35
    goto :goto_f

    .line 36
    :catchall_23
    move-exception v1

    .line 37
    goto :goto_2c

    .line 38
    :cond_25
    sget-object v1, Lcom/google/android/gms/internal/measurement/u4;->h:Ls/e;

    .line 39
    .line 40
    invoke-virtual {v1}, Ls/j;->clear()V
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_23

    .line 41
    .line 42
    .line 43
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :goto_2c
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_23

    .line 46
    throw v1
.end method


# virtual methods
.method public final b()Ljava/util/Map;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u4;->f:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_53

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/u4;->e:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u4;->f:Ljava/util/Map;

    .line 9
    .line 10
    if-nez v0, :cond_4f

    .line 11
    .line 12
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_49

    .line 16
    :try_start_f
    new-instance v2, Lcom/google/android/gms/internal/measurement/o6;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p0, v2, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_16} :catch_32
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_16} :catch_30
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_16} :catch_2e
    .catchall {:try_start_f .. :try_end_16} :catchall_2c

    .line 22
    .line 23
    :try_start_16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/o6;->c()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2
    :try_end_1a
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_1a} :catch_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_1a} :catch_30
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_1a} :catch_2e
    .catchall {:try_start_16 .. :try_end_1a} :catchall_2c

    .line 27
    goto :goto_26

    .line 28
    :catch_1b
    :try_start_1b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3
    :try_end_1f
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_1f} :catch_32
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1f} :catch_30
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_1f} :catch_2e
    .catchall {:try_start_1b .. :try_end_1f} :catchall_2c

    .line 32
    :try_start_1f
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/o6;->c()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_34

    .line 36
    :try_start_23
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    .line 38
    .line 39
    :goto_26
    check-cast v2, Ljava/util/Map;
    :try_end_28
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_28} :catch_32
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_23 .. :try_end_28} :catch_30
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_28} :catch_2e
    .catchall {:try_start_23 .. :try_end_28} :catchall_2c

    .line 40
    .line 41
    :try_start_28
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_49

    .line 42
    .line 43
    .line 44
    goto :goto_45

    .line 45
    :catchall_2c
    move-exception v2

    .line 46
    goto :goto_4b

    .line 47
    :catch_2e
    move-exception v2

    .line 48
    goto :goto_39

    .line 49
    :catch_30
    move-exception v2

    .line 50
    goto :goto_39

    .line 51
    :catch_32
    move-exception v2

    .line 52
    goto :goto_39

    .line 53
    :catchall_34
    move-exception v2

    .line 54
    :try_start_35
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    throw v2
    :try_end_39
    .catch Ljava/lang/SecurityException; {:try_start_35 .. :try_end_39} :catch_32
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_35 .. :try_end_39} :catch_30
    .catch Ljava/lang/IllegalStateException; {:try_start_35 .. :try_end_39} :catch_2e
    .catchall {:try_start_35 .. :try_end_39} :catchall_2c

    .line 58
    :goto_39
    :try_start_39
    const-string v3, "ConfigurationContentLdr"

    .line 59
    .line 60
    const-string v4, "Unable to query ContentProvider, using default values"

    .line 61
    .line 62
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_2c

    .line 66
    .line 67
    :try_start_42
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 68
    .line 69
    .line 70
    :goto_45
    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/u4;->f:Ljava/util/Map;

    .line 71
    .line 72
    move-object v0, v2

    .line 73
    goto :goto_4f

    .line 74
    :catchall_49
    move-exception v0

    .line 75
    goto :goto_51

    .line 76
    :goto_4b
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 77
    .line 78
    .line 79
    throw v2

    .line 80
    :cond_4f
    :goto_4f
    monitor-exit v1

    .line 81
    goto :goto_53

    .line 82
    :goto_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_42 .. :try_end_52} :catchall_49

    .line 83
    throw v0

    .line 84
    :cond_53
    :goto_53
    if-eqz v0, :cond_56

    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_56
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 88
    .line 89
    return-object v0
.end method

.method public final synthetic zza(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u4;->b()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/String;

    .line 10
    .line 11
    return-object p1
.end method
