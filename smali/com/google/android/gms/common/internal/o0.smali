###### Class com.google.android.gms.common.internal.o0 (com.google.android.gms.common.internal.o0)
.class public final Lcom/google/android/gms/common/internal/o0;
.super Lcom/google/android/gms/common/internal/k;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final d:Ljava/util/HashMap;

.field public final e:Landroid/content/Context;

.field public volatile f:Lcom/google/android/gms/internal/measurement/r0;

.field public final g:La4/b;

.field public final h:J

.field public final i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/common/internal/o0;->d:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/common/internal/n0;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/n0;-><init>(Lcom/google/android/gms/common/internal/o0;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/common/internal/o0;->e:Landroid/content/Context;

    .line 21
    .line 22
    new-instance p1, Lcom/google/android/gms/internal/measurement/r0;

    .line 23
    .line 24
    invoke-direct {p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/google/android/gms/common/internal/o0;->f:Lcom/google/android/gms/internal/measurement/r0;

    .line 31
    .line 32
    invoke-static {}, La4/b;->b()La4/b;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/google/android/gms/common/internal/o0;->g:La4/b;

    .line 37
    .line 38
    const-wide/16 p1, 0x1388

    .line 39
    .line 40
    iput-wide p1, p0, Lcom/google/android/gms/common/internal/o0;->h:J

    .line 41
    .line 42
    const-wide/32 p1, 0x493e0

    .line 43
    .line 44
    .line 45
    iput-wide p1, p0, Lcom/google/android/gms/common/internal/o0;->i:J

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final d(Lcom/google/android/gms/common/internal/k0;Lcom/google/android/gms/common/internal/g0;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z
    .registers 10

    .line 1
    const-string v0, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/internal/o0;->d:Ljava/util/HashMap;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/common/internal/o0;->d:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/google/android/gms/common/internal/m0;

    .line 13
    .line 14
    if-nez p4, :cond_10

    .line 15
    .line 16
    const/4 p4, 0x0

    .line 17
    :cond_10
    if-nez v2, :cond_27

    .line 18
    .line 19
    new-instance v2, Lcom/google/android/gms/common/internal/m0;

    .line 20
    .line 21
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/common/internal/m0;-><init>(Lcom/google/android/gms/common/internal/o0;Lcom/google/android/gms/common/internal/k0;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v2, Lcom/google/android/gms/common/internal/m0;->a:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {v0, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p3, p4}, Lcom/google/android/gms/common/internal/m0;->a(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/google/android/gms/common/internal/o0;->d:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {p2, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    goto :goto_4e

    .line 38
    :catchall_25
    move-exception p1

    .line 39
    goto :goto_60

    .line 40
    :cond_27
    iget-object v3, p0, Lcom/google/android/gms/common/internal/o0;->f:Lcom/google/android/gms/internal/measurement/r0;

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object v3, v2, Lcom/google/android/gms/common/internal/m0;->a:Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_52

    .line 53
    .line 54
    iget-object p1, v2, Lcom/google/android/gms/common/internal/m0;->a:Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-virtual {p1, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    iget p1, v2, Lcom/google/android/gms/common/internal/m0;->b:I

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    if-eq p1, v0, :cond_47

    .line 63
    .line 64
    const/4 p2, 0x2

    .line 65
    if-eq p1, p2, :cond_43

    .line 66
    .line 67
    goto :goto_4e

    .line 68
    :cond_43
    invoke-virtual {v2, p3, p4}, Lcom/google/android/gms/common/internal/m0;->a(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 69
    .line 70
    .line 71
    goto :goto_4e

    .line 72
    :cond_47
    iget-object p1, v2, Lcom/google/android/gms/common/internal/m0;->f:Landroid/content/ComponentName;

    .line 73
    .line 74
    iget-object p3, v2, Lcom/google/android/gms/common/internal/m0;->d:Landroid/os/IBinder;

    .line 75
    .line 76
    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/common/internal/g0;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 77
    .line 78
    .line 79
    :goto_4e
    iget-boolean p1, v2, Lcom/google/android/gms/common/internal/m0;->c:Z

    .line 80
    .line 81
    monitor-exit v1

    .line 82
    return p1

    .line 83
    :cond_52
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/k0;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p2

    .line 97
    :goto_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_5 .. :try_end_61} :catchall_25

    .line 98
    throw p1
.end method
