###### Class com.google.android.gms.internal.measurement.g5 (com.google.android.gms.internal.measurement.g5)
.class public abstract Lcom/google/android/gms/internal/measurement/g5;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/x4;


# static fields
.field public static final a:Ls/e;


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
    sput-object v0, Lcom/google/android/gms/internal/measurement/g5;->a:Ls/e;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/d5;)Lcom/google/android/gms/internal/measurement/g5;
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/s4;->a()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 p1, 0x0

    .line 6
    if-nez p0, :cond_1f

    .line 7
    .line 8
    const-class p0, Lcom/google/android/gms/internal/measurement/g5;

    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_a
    sget-object v0, Lcom/google/android/gms/internal/measurement/g5;->a:Ls/e;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/android/gms/internal/measurement/g5;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 20
    .line 21
    .line 22
    move-result-object v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1c

    .line 23
    :try_start_16
    throw p1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    .line 24
    :catchall_17
    move-exception p1

    .line 25
    :try_start_18
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :catchall_1c
    move-exception p1

    .line 30
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1c

    .line 31
    throw p1

    .line 32
    :cond_1f
    throw p1
.end method

.method public static declared-synchronized b()V
    .registers 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/g5;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/g5;->a:Ls/e;

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
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_1e

    .line 21
    .line 22
    sget-object v1, Lcom/google/android/gms/internal/measurement/g5;->a:Ls/e;

    .line 23
    .line 24
    invoke-virtual {v1}, Ls/j;->clear()V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_1c
    move-exception v1

    .line 30
    goto :goto_29

    .line 31
    :cond_1e
    :try_start_1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/google/android/gms/internal/measurement/g5;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    throw v1

    .line 42
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_1c

    .line 43
    throw v1
.end method
