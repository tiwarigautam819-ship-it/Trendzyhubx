###### Class s4.b (s4.b)
.class public final Ls4/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    .line 1
    iput p2, p0, Ls4/b;->a:I

    iput-object p1, p0, Ls4/b;->b:Ljava/lang/Object;

    iput-object p3, p0, Ls4/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .registers 5

    .line 2
    iput p3, p0, Ls4/b;->a:I

    iput-object p1, p0, Ls4/b;->c:Ljava/lang/Object;

    iput-object p2, p0, Ls4/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lw4/i;)V
    .registers 3

    const/16 v0, 0x11

    iput v0, p0, Ls4/b;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls4/b;->c:Ljava/lang/Object;

    return-void
.end method

.method private final a()V
    .registers 4

    .line 1
    iget-object v0, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp4/n;

    .line 4
    .line 5
    iget-object v0, v0, Lp4/n;->c:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    iget-object v1, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lp4/n;

    .line 11
    .line 12
    iget-object v1, v1, Lp4/n;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lp4/e;

    .line 15
    .line 16
    iget-object v2, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Lp4/i;

    .line 19
    .line 20
    invoke-virtual {v2}, Lp4/i;->d()Ljava/lang/Exception;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, v2}, Lp4/e;->onFailure(Ljava/lang/Exception;)V

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_1f
    move-exception v1

    .line 33
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    .line 34
    throw v1
.end method

.method private final b()V
    .registers 4

    .line 1
    iget-object v0, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp4/n;

    .line 4
    .line 5
    iget-object v0, v0, Lp4/n;->c:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    iget-object v1, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lp4/n;

    .line 11
    .line 12
    iget-object v1, v1, Lp4/n;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lp4/f;

    .line 15
    .line 16
    iget-object v2, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Lp4/i;

    .line 19
    .line 20
    invoke-virtual {v2}, Lp4/i;->e()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v1, v2}, Lp4/f;->onSuccess(Ljava/lang/Object;)V

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
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    .line 31
    throw v1
.end method

.method private final c()V
    .registers 5

    .line 1
    iget-object v0, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lu3/l;

    .line 4
    .line 5
    iget-object v1, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/os/IBinder;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    if-nez v1, :cond_14

    .line 11
    .line 12
    :try_start_b
    const-string v1, "Null service connection"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lu3/l;->a(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_12

    .line 18
    return-void

    .line 19
    :catchall_12
    move-exception v1

    .line 20
    goto :goto_37

    .line 21
    :cond_14
    :try_start_14
    new-instance v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 22
    .line 23
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/y4;-><init>(Landroid/os/IBinder;)V

    .line 24
    .line 25
    .line 26
    iput-object v2, v0, Lu3/l;->c:Lcom/google/android/gms/internal/measurement/y4;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1b} :catch_2d
    .catchall {:try_start_14 .. :try_end_1b} :catchall_12

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    :try_start_1c
    iput v1, v0, Lu3/l;->a:I

    .line 30
    .line 31
    iget-object v1, v0, Lu3/l;->f:Lu3/n;

    .line 32
    .line 33
    iget-object v1, v1, Lu3/n;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 34
    .line 35
    new-instance v2, Lu3/j;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-direct {v2, v0, v3}, Lu3/j;-><init>(Lu3/l;I)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :catch_2d
    move-exception v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lu3/l;->a(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_1c .. :try_end_38} :catchall_12

    .line 57
    throw v1
.end method

.method private final d()V
    .registers 6

    .line 1
    iget-object v0, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lu3/l;

    .line 4
    .line 5
    iget-object v1, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lu3/m;

    .line 8
    .line 9
    iget v1, v1, Lu3/m;->a:I

    .line 10
    .line 11
    const-string v2, "Timing out request: "

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_d
    iget-object v3, v0, Lu3/l;->e:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lu3/m;

    .line 21
    .line 22
    if-eqz v3, :cond_3f

    .line 23
    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v4, "MessengerIpcClient"

    .line 37
    .line 38
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object v2, v0, Lu3/l;->e:Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 44
    .line 45
    .line 46
    const-string v1, "Timed out waiting for response"

    .line 47
    .line 48
    new-instance v2, Lcom/google/firebase/messaging/x;

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-direct {v2, v1, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v2}, Lu3/m;->b(Lcom/google/firebase/messaging/x;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lu3/l;->c()V
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_3d

    .line 58
    .line 59
    .line 60
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :catchall_3d
    move-exception v1

    .line 63
    goto :goto_41

    .line 64
    :cond_3f
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :goto_41
    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_3d

    .line 67
    throw v1
.end method

.method private final e()V
    .registers 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ls4/b;->f()V
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_3} :catch_4

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_4
    move-exception v0

    .line 6
    iget-object v1, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lw4/i;

    .line 9
    .line 10
    iget-object v1, v1, Lw4/i;->b:Ljava/util/ArrayDeque;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_c
    iget-object v2, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Lw4/i;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    iput v3, v2, Lw4/i;->c:I

    .line 19
    .line 20
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    .line 21
    throw v0

    .line 22
    :catchall_15
    move-exception v0

    .line 23
    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    .line 24
    throw v0
.end method


# virtual methods
.method public f()V
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    :try_start_2
    iget-object v2, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v2, Lw4/i;

    .line 6
    .line 7
    iget-object v2, v2, Lw4/i;->b:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    monitor-enter v2
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_58

    .line 10
    const/4 v3, 0x1

    .line 11
    if-nez v0, :cond_2c

    .line 12
    .line 13
    :try_start_c
    iget-object v0, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lw4/i;

    .line 16
    .line 17
    iget v4, v0, Lw4/i;->c:I

    .line 18
    .line 19
    const/4 v5, 0x4

    .line 20
    if-ne v4, v5, :cond_22

    .line 21
    .line 22
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_20

    .line 23
    if-eqz v1, :cond_46

    .line 24
    .line 25
    :goto_18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 30
    .line 31
    .line 32
    goto :goto_46

    .line 33
    :catchall_20
    move-exception v0

    .line 34
    goto :goto_7d

    .line 35
    :cond_22
    :try_start_22
    iget-wide v6, v0, Lw4/i;->d:J

    .line 36
    .line 37
    const-wide/16 v8, 0x1

    .line 38
    .line 39
    add-long/2addr v6, v8

    .line 40
    iput-wide v6, v0, Lw4/i;->d:J

    .line 41
    .line 42
    iput v5, v0, Lw4/i;->c:I

    .line 43
    .line 44
    move v0, v3

    .line 45
    :cond_2c
    iget-object v4, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v4, Lw4/i;

    .line 48
    .line 49
    iget-object v4, v4, Lw4/i;->b:Ljava/util/ArrayDeque;

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Ljava/lang/Runnable;

    .line 56
    .line 57
    iput-object v4, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 58
    .line 59
    if-nez v4, :cond_47

    .line 60
    .line 61
    iget-object v0, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Lw4/i;

    .line 64
    .line 65
    iput v3, v0, Lw4/i;->c:I

    .line 66
    .line 67
    monitor-exit v2

    .line 68
    if-eqz v1, :cond_46

    .line 69
    .line 70
    goto :goto_18

    .line 71
    :cond_46
    :goto_46
    return-void

    .line 72
    :cond_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_22 .. :try_end_48} :catchall_20

    .line 73
    :try_start_48
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 74
    .line 75
    .line 76
    move-result v2
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_58

    .line 77
    or-int/2addr v1, v2

    .line 78
    const/4 v2, 0x0

    .line 79
    :try_start_4e
    iget-object v3, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v3, Ljava/lang/Runnable;

    .line 82
    .line 83
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_55
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_55} :catch_5c
    .catchall {:try_start_4e .. :try_end_55} :catchall_5a

    .line 84
    .line 85
    .line 86
    :goto_55
    :try_start_55
    iput-object v2, p0, Ls4/b;->b:Ljava/lang/Object;
    :try_end_57
    .catchall {:try_start_55 .. :try_end_57} :catchall_58

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :catchall_58
    move-exception v0

    .line 90
    goto :goto_7f

    .line 91
    :catchall_5a
    move-exception v0

    .line 92
    goto :goto_7a

    .line 93
    :catch_5c
    move-exception v3

    .line 94
    :try_start_5d
    sget-object v4, Lw4/i;->f:Ljava/util/logging/Logger;

    .line 95
    .line 96
    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 97
    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v7, "Exception while executing runnable "

    .line 104
    .line 105
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v7, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v7, Ljava/lang/Runnable;

    .line 111
    .line 112
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_79
    .catchall {:try_start_5d .. :try_end_79} :catchall_5a

    .line 120
    .line 121
    .line 122
    goto :goto_55

    .line 123
    :goto_7a
    :try_start_7a
    iput-object v2, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 124
    .line 125
    throw v0
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_58

    .line 126
    :goto_7d
    :try_start_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_20

    .line 127
    :try_start_7e
    throw v0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_58

    .line 128
    :goto_7f
    if-eqz v1, :cond_88

    .line 129
    .line 130
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 135
    .line 136
    .line 137
    :cond_88
    throw v0
.end method

.method public final run()V
    .registers 8

    .line 1
    iget v0, p0, Ls4/b;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_38c

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v1, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 12
    .line 13
    :try_start_c
    sget-object v4, Ly/d;->d:Ljava/lang/reflect/Method;

    .line 14
    .line 15
    const/4 v5, 0x2

    .line 16
    if-eqz v4, :cond_26

    .line 17
    .line 18
    const/4 v6, 0x3

    .line 19
    new-array v6, v6, [Ljava/lang/Object;

    .line 20
    .line 21
    aput-object v0, v6, v3

    .line 22
    .line 23
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 24
    .line 25
    aput-object v0, v6, v2

    .line 26
    .line 27
    const-string v0, "AppCompat recreation"

    .line 28
    .line 29
    aput-object v0, v6, v5

    .line 30
    .line 31
    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    goto :goto_58

    .line 35
    :catchall_22
    move-exception v0

    .line 36
    goto :goto_34

    .line 37
    :catch_24
    move-exception v0

    .line 38
    goto :goto_3c

    .line 39
    :cond_26
    sget-object v4, Ly/d;->e:Ljava/lang/reflect/Method;

    .line 40
    .line 41
    new-array v5, v5, [Ljava/lang/Object;

    .line 42
    .line 43
    aput-object v0, v5, v3

    .line 44
    .line 45
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    .line 47
    aput-object v0, v5, v2

    .line 48
    .line 49
    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_33} :catch_24
    .catchall {:try_start_c .. :try_end_33} :catchall_22

    .line 50
    .line 51
    .line 52
    goto :goto_58

    .line 53
    :goto_34
    const-string v1, "ActivityRecreator"

    .line 54
    .line 55
    const-string v2, "Exception while invoking performStopActivity"

    .line 56
    .line 57
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .line 59
    .line 60
    goto :goto_58

    .line 61
    :goto_3c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-class v2, Ljava/lang/RuntimeException;

    .line 66
    .line 67
    if-ne v1, v2, :cond_58

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_58

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v2, "Unable to stop"

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_57

    .line 86
    .line 87
    goto :goto_58

    .line 88
    :cond_57
    throw v0

    .line 89
    :cond_58
    :goto_58
    return-void

    .line 90
    :pswitch_59
    iget-object v0, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v0, Landroid/app/Application;

    .line 93
    .line 94
    iget-object v1, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v1, Ly/c;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :pswitch_65
    iget-object v0, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v0, Ly/c;

    .line 105
    .line 106
    iget-object v1, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 107
    .line 108
    iput-object v1, v0, Ly/c;->a:Ljava/lang/Object;

    .line 109
    .line 110
    return-void

    .line 111
    :pswitch_6e
    iget-object v0, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v0, Lx3/r;

    .line 114
    .line 115
    iget-object v3, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v3, Ln4/f;

    .line 118
    .line 119
    iget-object v4, v3, Ln4/f;->b:Lcom/google/android/gms/common/ConnectionResult;

    .line 120
    .line 121
    iget v5, v4, Lcom/google/android/gms/common/ConnectionResult;->b:I

    .line 122
    .line 123
    if-nez v5, :cond_f1

    .line 124
    .line 125
    iget-object v3, v3, Ln4/f;->c:Lcom/google/android/gms/common/internal/w;

    .line 126
    .line 127
    invoke-static {v3}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iget-object v4, v3, Lcom/google/android/gms/common/internal/w;->c:Lcom/google/android/gms/common/ConnectionResult;

    .line 131
    .line 132
    iget v5, v4, Lcom/google/android/gms/common/ConnectionResult;->b:I

    .line 133
    .line 134
    if-nez v5, :cond_d2

    .line 135
    .line 136
    iget-object v4, v0, Lx3/r;->i:Lx3/l;

    .line 137
    .line 138
    iget-object v3, v3, Lcom/google/android/gms/common/internal/w;->b:Landroid/os/IBinder;

    .line 139
    .line 140
    if-nez v3, :cond_8e

    .line 141
    .line 142
    goto :goto_a4

    .line 143
    :cond_8e
    sget v1, Lcom/google/android/gms/common/internal/a;->c:I

    .line 144
    .line 145
    const-string v1, "com.google.android.gms.common.internal.IAccountAccessor"

    .line 146
    .line 147
    invoke-interface {v3, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    instance-of v6, v5, Lcom/google/android/gms/common/internal/l;

    .line 152
    .line 153
    if-eqz v6, :cond_9e

    .line 154
    .line 155
    move-object v1, v5

    .line 156
    check-cast v1, Lcom/google/android/gms/common/internal/l;

    .line 157
    .line 158
    goto :goto_a4

    .line 159
    :cond_9e
    new-instance v5, Lcom/google/android/gms/common/internal/q0;

    .line 160
    .line 161
    invoke-direct {v5, v3, v1, v2}, Lh4/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 162
    .line 163
    .line 164
    move-object v1, v5

    .line 165
    :goto_a4
    iget-object v2, v0, Lx3/r;->f:Ljava/util/Set;

    .line 166
    .line 167
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    if-eqz v1, :cond_bc

    .line 171
    .line 172
    if-nez v2, :cond_ae

    .line 173
    .line 174
    goto :goto_bc

    .line 175
    :cond_ae
    iput-object v1, v4, Lx3/l;->c:Lcom/google/android/gms/common/internal/l;

    .line 176
    .line 177
    iput-object v2, v4, Lx3/l;->d:Ljava/util/Set;

    .line 178
    .line 179
    iget-boolean v3, v4, Lx3/l;->e:Z

    .line 180
    .line 181
    if-eqz v3, :cond_f6

    .line 182
    .line 183
    iget-object v3, v4, Lx3/l;->a:Lw3/a;

    .line 184
    .line 185
    invoke-interface {v3, v1, v2}, Lw3/a;->getRemoteService(Lcom/google/android/gms/common/internal/l;Ljava/util/Set;)V

    .line 186
    .line 187
    .line 188
    goto :goto_f6

    .line 189
    :cond_bc
    :goto_bc
    new-instance v1, Ljava/lang/Exception;

    .line 190
    .line 191
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v2, "GoogleApiManager"

    .line 195
    .line 196
    const-string v3, "Received null response from onSignInSuccess"

    .line 197
    .line 198
    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    .line 200
    .line 201
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    .line 202
    .line 203
    const/4 v2, 0x4

    .line 204
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4, v1}, Lx3/l;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 208
    .line 209
    .line 210
    goto :goto_f6

    .line 211
    :cond_d2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    new-instance v2, Ljava/lang/Exception;

    .line 216
    .line 217
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 218
    .line 219
    .line 220
    const-string v3, "Sign-in succeeded with resolve account failure: "

    .line 221
    .line 222
    const-string v5, "SignInCoordinator"

    .line 223
    .line 224
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-static {v5, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .line 230
    .line 231
    iget-object v1, v0, Lx3/r;->i:Lx3/l;

    .line 232
    .line 233
    invoke-virtual {v1, v4}, Lx3/l;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 234
    .line 235
    .line 236
    iget-object v0, v0, Lx3/r;->h:Ln4/a;

    .line 237
    .line 238
    invoke-interface {v0}, Lw3/a;->disconnect()V

    .line 239
    .line 240
    .line 241
    goto :goto_fb

    .line 242
    :cond_f1
    iget-object v1, v0, Lx3/r;->i:Lx3/l;

    .line 243
    .line 244
    invoke-virtual {v1, v4}, Lx3/l;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 245
    .line 246
    .line 247
    :cond_f6
    :goto_f6
    iget-object v0, v0, Lx3/r;->h:Ln4/a;

    .line 248
    .line 249
    invoke-interface {v0}, Lw3/a;->disconnect()V

    .line 250
    .line 251
    .line 252
    :goto_fb
    return-void

    .line 253
    :pswitch_fc
    iget-object v0, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v0, Lcom/google/android/gms/common/ConnectionResult;

    .line 256
    .line 257
    iget-object v3, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v3, Lx3/l;

    .line 260
    .line 261
    iget-object v4, v3, Lx3/l;->a:Lw3/a;

    .line 262
    .line 263
    iget-object v5, v3, Lx3/l;->f:Lx3/d;

    .line 264
    .line 265
    iget-object v5, v5, Lx3/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 266
    .line 267
    iget-object v6, v3, Lx3/l;->b:Lx3/a;

    .line 268
    .line 269
    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    check-cast v5, Lx3/j;

    .line 274
    .line 275
    if-nez v5, :cond_115

    .line 276
    .line 277
    goto :goto_152

    .line 278
    :cond_115
    iget v6, v0, Lcom/google/android/gms/common/ConnectionResult;->b:I

    .line 279
    .line 280
    if-nez v6, :cond_14f

    .line 281
    .line 282
    iput-boolean v2, v3, Lx3/l;->e:Z

    .line 283
    .line 284
    invoke-interface {v4}, Lw3/a;->requiresSignIn()Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-eqz v0, :cond_12f

    .line 289
    .line 290
    iget-boolean v0, v3, Lx3/l;->e:Z

    .line 291
    .line 292
    if-eqz v0, :cond_152

    .line 293
    .line 294
    iget-object v0, v3, Lx3/l;->c:Lcom/google/android/gms/common/internal/l;

    .line 295
    .line 296
    if-eqz v0, :cond_152

    .line 297
    .line 298
    iget-object v1, v3, Lx3/l;->d:Ljava/util/Set;

    .line 299
    .line 300
    invoke-interface {v4, v0, v1}, Lw3/a;->getRemoteService(Lcom/google/android/gms/common/internal/l;Ljava/util/Set;)V

    .line 301
    .line 302
    .line 303
    goto :goto_152

    .line 304
    :cond_12f
    :try_start_12f
    invoke-interface {v4}, Lw3/a;->a()Ljava/util/Set;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-interface {v4, v1, v0}, Lw3/a;->getRemoteService(Lcom/google/android/gms/common/internal/l;Ljava/util/Set;)V
    :try_end_136
    .catch Ljava/lang/SecurityException; {:try_start_12f .. :try_end_136} :catch_137

    .line 309
    .line 310
    .line 311
    goto :goto_152

    .line 312
    :catch_137
    move-exception v0

    .line 313
    const-string v2, "GoogleApiManager"

    .line 314
    .line 315
    const-string v3, "Failed to get service from broker. "

    .line 316
    .line 317
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    .line 319
    .line 320
    const-string v0, "Failed to get service from broker."

    .line 321
    .line 322
    invoke-interface {v4, v0}, Lw3/a;->disconnect(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    .line 326
    .line 327
    const/16 v2, 0xa

    .line 328
    .line 329
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v5, v0, v1}, Lx3/j;->m(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    .line 333
    .line 334
    .line 335
    goto :goto_152

    .line 336
    :cond_14f
    invoke-virtual {v5, v0, v1}, Lx3/j;->m(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    .line 337
    .line 338
    .line 339
    :cond_152
    :goto_152
    return-void

    .line 340
    :pswitch_153
    invoke-direct {p0}, Ls4/b;->e()V

    .line 341
    .line 342
    .line 343
    return-void

    .line 344
    :pswitch_157
    invoke-direct {p0}, Ls4/b;->d()V

    .line 345
    .line 346
    .line 347
    return-void

    .line 348
    :pswitch_15b
    invoke-direct {p0}, Ls4/b;->c()V

    .line 349
    .line 350
    .line 351
    return-void

    .line 352
    :pswitch_15f
    iget-object v0, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast v0, Lp7/h;

    .line 355
    .line 356
    iget-object v1, v0, Lp7/h;->c:Ll7/n;

    .line 357
    .line 358
    :cond_165
    :try_start_165
    iget-object v4, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 359
    .line 360
    check-cast v4, Ljava/lang/Runnable;

    .line 361
    .line 362
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_16c
    .catchall {:try_start_165 .. :try_end_16c} :catchall_16d

    .line 363
    .line 364
    .line 365
    goto :goto_173

    .line 366
    :catchall_16d
    move-exception v4

    .line 367
    sget-object v5, Lu6/l;->a:Lu6/l;

    .line 368
    .line 369
    invoke-static {v5, v4}, Ll7/r;->e(Lu6/k;Ljava/lang/Throwable;)V

    .line 370
    .line 371
    .line 372
    :goto_173
    invoke-virtual {v0}, Lp7/h;->v()Ljava/lang/Runnable;

    .line 373
    .line 374
    .line 375
    move-result-object v4

    .line 376
    if-nez v4, :cond_17a

    .line 377
    .line 378
    goto :goto_18a

    .line 379
    :cond_17a
    iput-object v4, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 380
    .line 381
    add-int/2addr v3, v2

    .line 382
    const/16 v4, 0x10

    .line 383
    .line 384
    if-lt v3, v4, :cond_165

    .line 385
    .line 386
    invoke-virtual {v1}, Ll7/n;->u()Z

    .line 387
    .line 388
    .line 389
    move-result v4

    .line 390
    if-eqz v4, :cond_165

    .line 391
    .line 392
    invoke-virtual {v1, v0, p0}, Ll7/n;->t(Lu6/k;Ljava/lang/Runnable;)V

    .line 393
    .line 394
    .line 395
    :goto_18a
    return-void

    .line 396
    :pswitch_18b
    iget-object v0, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 397
    .line 398
    check-cast v0, Lp4/q;

    .line 399
    .line 400
    :try_start_18f
    iget-object v1, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 401
    .line 402
    check-cast v1, Ljava/util/concurrent/Callable;

    .line 403
    .line 404
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    invoke-virtual {v0, v1}, Lp4/q;->m(Ljava/lang/Object;)V
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_19a} :catch_19d
    .catchall {:try_start_18f .. :try_end_19a} :catchall_19b

    .line 409
    .line 410
    .line 411
    goto :goto_1ab

    .line 412
    :catchall_19b
    move-exception v1

    .line 413
    goto :goto_19f

    .line 414
    :catch_19d
    move-exception v1

    .line 415
    goto :goto_1a8

    .line 416
    :goto_19f
    new-instance v2, Ljava/lang/RuntimeException;

    .line 417
    .line 418
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0, v2}, Lp4/q;->l(Ljava/lang/Exception;)V

    .line 422
    .line 423
    .line 424
    goto :goto_1ab

    .line 425
    :goto_1a8
    invoke-virtual {v0, v1}, Lp4/q;->l(Ljava/lang/Exception;)V

    .line 426
    .line 427
    .line 428
    :goto_1ab
    return-void

    .line 429
    :pswitch_1ac
    iget-object v0, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 430
    .line 431
    check-cast v0, Lp4/n;

    .line 432
    .line 433
    :try_start_1b0
    iget-object v1, v0, Lp4/n;->c:Ljava/lang/Object;

    .line 434
    .line 435
    check-cast v1, Lp4/h;

    .line 436
    .line 437
    iget-object v2, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 438
    .line 439
    check-cast v2, Lp4/i;

    .line 440
    .line 441
    invoke-virtual {v2}, Lp4/i;->e()Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    invoke-interface {v1, v2}, Lp4/h;->c(Ljava/lang/Object;)Lp4/q;

    .line 446
    .line 447
    .line 448
    move-result-object v1
    :try_end_1c0
    .catch Lp4/g; {:try_start_1b0 .. :try_end_1c0} :catch_1d8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1b0 .. :try_end_1c0} :catch_1de
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_1c0} :catch_1d6

    .line 449
    sget-object v2, Lp4/k;->b:Lg/r;

    .line 450
    .line 451
    invoke-virtual {v1, v2, v0}, Lp4/q;->c(Ljava/util/concurrent/Executor;Lp4/f;)Lp4/q;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v1, v2, v0}, Lp4/q;->b(Ljava/util/concurrent/Executor;Lp4/e;)Lp4/q;

    .line 455
    .line 456
    .line 457
    new-instance v3, Lp4/n;

    .line 458
    .line 459
    invoke-direct {v3, v2, v0}, Lp4/n;-><init>(Ljava/util/concurrent/Executor;Lp4/c;)V

    .line 460
    .line 461
    .line 462
    iget-object v0, v1, Lp4/q;->b:Lp4/p;

    .line 463
    .line 464
    invoke-virtual {v0, v3}, Lp4/p;->d(Lp4/o;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v1}, Lp4/q;->p()V

    .line 468
    .line 469
    .line 470
    goto :goto_1f7

    .line 471
    :catch_1d6
    move-exception v1

    .line 472
    goto :goto_1da

    .line 473
    :catch_1d8
    move-exception v1

    .line 474
    goto :goto_1e2

    .line 475
    :goto_1da
    invoke-virtual {v0, v1}, Lp4/n;->onFailure(Ljava/lang/Exception;)V

    .line 476
    .line 477
    .line 478
    goto :goto_1f7

    .line 479
    :catch_1de
    invoke-virtual {v0}, Lp4/n;->a()V

    .line 480
    .line 481
    .line 482
    goto :goto_1f7

    .line 483
    :goto_1e2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    instance-of v2, v2, Ljava/lang/Exception;

    .line 488
    .line 489
    if-eqz v2, :cond_1f4

    .line 490
    .line 491
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    check-cast v1, Ljava/lang/Exception;

    .line 496
    .line 497
    invoke-virtual {v0, v1}, Lp4/n;->onFailure(Ljava/lang/Exception;)V

    .line 498
    .line 499
    .line 500
    goto :goto_1f7

    .line 501
    :cond_1f4
    invoke-virtual {v0, v1}, Lp4/n;->onFailure(Ljava/lang/Exception;)V

    .line 502
    .line 503
    .line 504
    :goto_1f7
    return-void

    .line 505
    :pswitch_1f8
    invoke-direct {p0}, Ls4/b;->b()V

    .line 506
    .line 507
    .line 508
    return-void

    .line 509
    :pswitch_1fc
    invoke-direct {p0}, Ls4/b;->a()V

    .line 510
    .line 511
    .line 512
    return-void

    .line 513
    :pswitch_200
    iget-object v0, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 514
    .line 515
    check-cast v0, Lp4/n;

    .line 516
    .line 517
    iget-object v0, v0, Lp4/n;->c:Ljava/lang/Object;

    .line 518
    .line 519
    monitor-enter v0

    .line 520
    :try_start_207
    iget-object v1, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 521
    .line 522
    check-cast v1, Lp4/n;

    .line 523
    .line 524
    iget-object v1, v1, Lp4/n;->d:Ljava/lang/Object;

    .line 525
    .line 526
    check-cast v1, Lp4/d;

    .line 527
    .line 528
    iget-object v2, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 529
    .line 530
    check-cast v2, Lp4/i;

    .line 531
    .line 532
    invoke-interface {v1, v2}, Lp4/d;->onComplete(Lp4/i;)V

    .line 533
    .line 534
    .line 535
    monitor-exit v0

    .line 536
    return-void

    .line 537
    :catchall_218
    move-exception v1

    .line 538
    monitor-exit v0
    :try_end_21a
    .catchall {:try_start_207 .. :try_end_21a} :catchall_218

    .line 539
    throw v1

    .line 540
    :pswitch_21b
    iget-object v0, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 541
    .line 542
    check-cast v0, Lp4/m;

    .line 543
    .line 544
    iget-object v1, v0, Lp4/m;->d:Lp4/q;

    .line 545
    .line 546
    :try_start_221
    iget-object v2, v0, Lp4/m;->c:Lp4/a;

    .line 547
    .line 548
    iget-object v3, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 549
    .line 550
    check-cast v3, Lp4/i;

    .line 551
    .line 552
    invoke-interface {v2, v3}, Lp4/a;->b(Lp4/i;)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v2

    .line 556
    check-cast v2, Lp4/i;
    :try_end_22d
    .catch Lp4/g; {:try_start_221 .. :try_end_22d} :catch_254
    .catch Ljava/lang/Exception; {:try_start_221 .. :try_end_22d} :catch_252

    .line 557
    .line 558
    if-nez v2, :cond_23a

    .line 559
    .line 560
    new-instance v1, Ljava/lang/NullPointerException;

    .line 561
    .line 562
    const-string v2, "Continuation returned null"

    .line 563
    .line 564
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v0, v1}, Lp4/m;->onFailure(Ljava/lang/Exception;)V

    .line 568
    .line 569
    .line 570
    goto :goto_26f

    .line 571
    :cond_23a
    sget-object v1, Lp4/k;->b:Lg/r;

    .line 572
    .line 573
    invoke-virtual {v2, v1, v0}, Lp4/i;->c(Ljava/util/concurrent/Executor;Lp4/f;)Lp4/q;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v2, v1, v0}, Lp4/i;->b(Ljava/util/concurrent/Executor;Lp4/e;)Lp4/q;

    .line 577
    .line 578
    .line 579
    check-cast v2, Lp4/q;

    .line 580
    .line 581
    new-instance v3, Lp4/n;

    .line 582
    .line 583
    invoke-direct {v3, v1, v0}, Lp4/n;-><init>(Ljava/util/concurrent/Executor;Lp4/c;)V

    .line 584
    .line 585
    .line 586
    iget-object v0, v2, Lp4/q;->b:Lp4/p;

    .line 587
    .line 588
    invoke-virtual {v0, v3}, Lp4/p;->d(Lp4/o;)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v2}, Lp4/q;->p()V

    .line 592
    .line 593
    .line 594
    goto :goto_26f

    .line 595
    :catch_252
    move-exception v0

    .line 596
    goto :goto_256

    .line 597
    :catch_254
    move-exception v0

    .line 598
    goto :goto_25a

    .line 599
    :goto_256
    invoke-virtual {v1, v0}, Lp4/q;->l(Ljava/lang/Exception;)V

    .line 600
    .line 601
    .line 602
    goto :goto_26f

    .line 603
    :goto_25a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    instance-of v2, v2, Ljava/lang/Exception;

    .line 608
    .line 609
    if-eqz v2, :cond_26c

    .line 610
    .line 611
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    check-cast v0, Ljava/lang/Exception;

    .line 616
    .line 617
    invoke-virtual {v1, v0}, Lp4/q;->l(Ljava/lang/Exception;)V

    .line 618
    .line 619
    .line 620
    goto :goto_26f

    .line 621
    :cond_26c
    invoke-virtual {v1, v0}, Lp4/q;->l(Ljava/lang/Exception;)V

    .line 622
    .line 623
    .line 624
    :goto_26f
    return-void

    .line 625
    :pswitch_270
    iget-object v0, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 626
    .line 627
    check-cast v0, Lp4/i;

    .line 628
    .line 629
    check-cast v0, Lp4/q;

    .line 630
    .line 631
    iget-boolean v0, v0, Lp4/q;->d:Z

    .line 632
    .line 633
    if-eqz v0, :cond_284

    .line 634
    .line 635
    iget-object v0, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 636
    .line 637
    check-cast v0, Lp4/m;

    .line 638
    .line 639
    iget-object v0, v0, Lp4/m;->d:Lp4/q;

    .line 640
    .line 641
    invoke-virtual {v0}, Lp4/q;->n()V

    .line 642
    .line 643
    .line 644
    goto :goto_2cb

    .line 645
    :cond_284
    :try_start_284
    iget-object v0, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 646
    .line 647
    check-cast v0, Lp4/m;

    .line 648
    .line 649
    iget-object v0, v0, Lp4/m;->c:Lp4/a;

    .line 650
    .line 651
    iget-object v1, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 652
    .line 653
    check-cast v1, Lp4/i;

    .line 654
    .line 655
    invoke-interface {v0, v1}, Lp4/a;->b(Lp4/i;)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v0
    :try_end_292
    .catch Lp4/g; {:try_start_284 .. :try_end_292} :catch_29e
    .catch Ljava/lang/Exception; {:try_start_284 .. :try_end_292} :catch_29c

    .line 659
    iget-object v1, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 660
    .line 661
    check-cast v1, Lp4/m;

    .line 662
    .line 663
    iget-object v1, v1, Lp4/m;->d:Lp4/q;

    .line 664
    .line 665
    invoke-virtual {v1, v0}, Lp4/q;->m(Ljava/lang/Object;)V

    .line 666
    .line 667
    .line 668
    goto :goto_2cb

    .line 669
    :catch_29c
    move-exception v0

    .line 670
    goto :goto_2a0

    .line 671
    :catch_29e
    move-exception v0

    .line 672
    goto :goto_2aa

    .line 673
    :goto_2a0
    iget-object v1, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 674
    .line 675
    check-cast v1, Lp4/m;

    .line 676
    .line 677
    iget-object v1, v1, Lp4/m;->d:Lp4/q;

    .line 678
    .line 679
    invoke-virtual {v1, v0}, Lp4/q;->l(Ljava/lang/Exception;)V

    .line 680
    .line 681
    .line 682
    goto :goto_2cb

    .line 683
    :goto_2aa
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 684
    .line 685
    .line 686
    move-result-object v1

    .line 687
    instance-of v1, v1, Ljava/lang/Exception;

    .line 688
    .line 689
    if-eqz v1, :cond_2c2

    .line 690
    .line 691
    iget-object v1, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 692
    .line 693
    check-cast v1, Lp4/m;

    .line 694
    .line 695
    iget-object v1, v1, Lp4/m;->d:Lp4/q;

    .line 696
    .line 697
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    check-cast v0, Ljava/lang/Exception;

    .line 702
    .line 703
    invoke-virtual {v1, v0}, Lp4/q;->l(Ljava/lang/Exception;)V

    .line 704
    .line 705
    .line 706
    goto :goto_2cb

    .line 707
    :cond_2c2
    iget-object v1, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 708
    .line 709
    check-cast v1, Lp4/m;

    .line 710
    .line 711
    iget-object v1, v1, Lp4/m;->d:Lp4/q;

    .line 712
    .line 713
    invoke-virtual {v1, v0}, Lp4/q;->l(Ljava/lang/Exception;)V

    .line 714
    .line 715
    .line 716
    :goto_2cb
    return-void

    .line 717
    :pswitch_2cc
    iget-object v0, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 718
    .line 719
    check-cast v0, Lorg/apache/cordova/i0;

    .line 720
    .line 721
    iget-object v0, v0, Lorg/apache/cordova/i0;->b:Ljava/util/LinkedList;

    .line 722
    .line 723
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 724
    .line 725
    .line 726
    move-result v0

    .line 727
    if-nez v0, :cond_2ef

    .line 728
    .line 729
    iget-object v0, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 730
    .line 731
    check-cast v0, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;

    .line 732
    .line 733
    iput-boolean v3, v0, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;->c:Z

    .line 734
    .line 735
    iget-object v1, v0, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;->a:Lorg/apache/cordova/h0;

    .line 736
    .line 737
    iget-boolean v0, v0, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;->b:Z

    .line 738
    .line 739
    check-cast v1, Lk1/h;

    .line 740
    .line 741
    iget-object v1, v1, Lk1/h;->b:Ljava/lang/Object;

    .line 742
    .line 743
    check-cast v1, Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 744
    .line 745
    iget-object v1, v1, Lorg/apache/cordova/engine/SystemWebViewEngine;->a:Lorg/apache/cordova/engine/SystemWebView;

    .line 746
    .line 747
    if-eqz v1, :cond_2ef

    .line 748
    .line 749
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    .line 750
    .line 751
    .line 752
    :cond_2ef
    return-void

    .line 753
    :pswitch_2f0
    iget-object v0, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 754
    .line 755
    check-cast v0, Lorg/apache/cordova/i0;

    .line 756
    .line 757
    invoke-virtual {v0}, Lorg/apache/cordova/i0;->e()Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    if-eqz v0, :cond_309

    .line 762
    .line 763
    iget-object v1, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 764
    .line 765
    check-cast v1, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;

    .line 766
    .line 767
    iget-object v1, v1, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;->a:Lorg/apache/cordova/v;

    .line 768
    .line 769
    const-string v2, "javascript:"

    .line 770
    .line 771
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    invoke-interface {v1, v0, v3}, Lorg/apache/cordova/v;->loadUrl(Ljava/lang/String;Z)V

    .line 776
    .line 777
    .line 778
    :cond_309
    return-void

    .line 779
    :pswitch_30a
    iget-object v0, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 780
    .line 781
    check-cast v0, Lorg/apache/cordova/i0;

    .line 782
    .line 783
    invoke-virtual {v0}, Lorg/apache/cordova/i0;->e()Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v0

    .line 787
    if-eqz v0, :cond_31d

    .line 788
    .line 789
    iget-object v2, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 790
    .line 791
    check-cast v2, Lorg/apache/cordova/NativeToJsMessageQueue$EvalBridgeMode;

    .line 792
    .line 793
    iget-object v2, v2, Lorg/apache/cordova/NativeToJsMessageQueue$EvalBridgeMode;->a:Lorg/apache/cordova/v;

    .line 794
    .line 795
    invoke-interface {v2, v0, v1}, Lorg/apache/cordova/v;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 796
    .line 797
    .line 798
    :cond_31d
    return-void

    .line 799
    :pswitch_31e
    iget-object v0, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 800
    .line 801
    check-cast v0, Lorg/apache/cordova/CordovaWebViewImpl;

    .line 802
    .line 803
    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebViewImpl;->stopLoading()V

    .line 804
    .line 805
    .line 806
    const-string v1, "CordovaWebViewImpl"

    .line 807
    .line 808
    const-string v2, "CordovaWebView: TIMEOUT ERROR!"

    .line 809
    .line 810
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    .line 812
    .line 813
    new-instance v1, Lorg/json/JSONObject;

    .line 814
    .line 815
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 816
    .line 817
    .line 818
    :try_start_331
    const-string v2, "errorCode"

    .line 819
    .line 820
    const/4 v3, -0x6

    .line 821
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 822
    .line 823
    .line 824
    const-string v2, "description"

    .line 825
    .line 826
    const-string v3, "The connection to the server was unsuccessful."

    .line 827
    .line 828
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 829
    .line 830
    .line 831
    const-string v2, "url"

    .line 832
    .line 833
    iget-object v3, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 834
    .line 835
    check-cast v3, Ljava/lang/String;

    .line 836
    .line 837
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_347
    .catch Lorg/json/JSONException; {:try_start_331 .. :try_end_347} :catch_347

    .line 838
    .line 839
    .line 840
    :catch_347
    iget-object v0, v0, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

    .line 841
    .line 842
    const-string v2, "onReceivedError"

    .line 843
    .line 844
    invoke-virtual {v0, v2, v1}, Lorg/apache/cordova/l0;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    .line 846
    .line 847
    return-void

    .line 848
    :pswitch_34f
    iget-object v0, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 849
    .line 850
    check-cast v0, Lg0/g;

    .line 851
    .line 852
    iget-object v1, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 853
    .line 854
    invoke-virtual {v0, v1}, Lg0/g;->accept(Ljava/lang/Object;)V

    .line 855
    .line 856
    .line 857
    return-void

    .line 858
    :pswitch_359
    iget-object v0, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 859
    .line 860
    check-cast v0, Lk1/h;

    .line 861
    .line 862
    iget-object v1, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 863
    .line 864
    check-cast v1, Landroid/graphics/Typeface;

    .line 865
    .line 866
    iget-object v0, v0, Lk1/h;->b:Ljava/lang/Object;

    .line 867
    .line 868
    check-cast v0, Le6/b;

    .line 869
    .line 870
    if-eqz v0, :cond_36a

    .line 871
    .line 872
    invoke-virtual {v0, v1}, Le6/b;->c(Landroid/graphics/Typeface;)V

    .line 873
    .line 874
    .line 875
    :cond_36a
    return-void

    .line 876
    :pswitch_36b
    iget-object v0, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 877
    .line 878
    check-cast v0, Ls4/a;

    .line 879
    .line 880
    iget-object v1, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 881
    .line 882
    check-cast v1, Ls4/c;

    .line 883
    .line 884
    :try_start_373
    invoke-static {v1}, Lb2/k;->e(Ls4/c;)Ljava/lang/Object;

    .line 885
    .line 886
    .line 887
    move-result-object v1
    :try_end_377
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_373 .. :try_end_377} :catch_382
    .catch Ljava/lang/RuntimeException; {:try_start_373 .. :try_end_377} :catch_37d
    .catch Ljava/lang/Error; {:try_start_373 .. :try_end_377} :catch_37b

    .line 888
    invoke-interface {v0, v1}, Ls4/a;->onSuccess(Ljava/lang/Object;)V

    .line 889
    .line 890
    .line 891
    goto :goto_38a

    .line 892
    :catch_37b
    move-exception v1

    .line 893
    goto :goto_37e

    .line 894
    :catch_37d
    move-exception v1

    .line 895
    :goto_37e
    invoke-interface {v0, v1}, Ls4/a;->onFailure(Ljava/lang/Throwable;)V

    .line 896
    .line 897
    .line 898
    goto :goto_38a

    .line 899
    :catch_382
    move-exception v1

    .line 900
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 901
    .line 902
    .line 903
    move-result-object v1

    .line 904
    invoke-interface {v0, v1}, Ls4/a;->onFailure(Ljava/lang/Throwable;)V

    .line 905
    .line 906
    .line 907
    :goto_38a
    return-void

    .line 908
    nop

    .line 909
    :pswitch_data_38c
    .packed-switch 0x0
        :pswitch_36b
        :pswitch_359
        :pswitch_34f
        :pswitch_31e
        :pswitch_30a
        :pswitch_2f0
        :pswitch_2cc
        :pswitch_270
        :pswitch_21b
        :pswitch_200
        :pswitch_1fc
        :pswitch_1f8
        :pswitch_1ac
        :pswitch_18b
        :pswitch_15f
        :pswitch_15b
        :pswitch_157
        :pswitch_153
        :pswitch_fc
        :pswitch_6e
        :pswitch_65
        :pswitch_59
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    iget v0, p0, Ls4/b;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_7c

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :sswitch_a
    iget-object v0, p0, Ls4/b;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/lang/Runnable;

    .line 14
    .line 15
    const-string v1, "}"

    .line 16
    .line 17
    if-eqz v0, :cond_24

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, "SequentialExecutorWorker{running="

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_55

    .line 37
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "SequentialExecutorWorker{state="

    .line 40
    .line 41
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v2, Lw4/i;

    .line 47
    .line 48
    iget v2, v2, Lw4/i;->c:I

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    if-eq v2, v3, :cond_49

    .line 52
    .line 53
    const/4 v3, 0x2

    .line 54
    if-eq v2, v3, :cond_46

    .line 55
    .line 56
    const/4 v3, 0x3

    .line 57
    if-eq v2, v3, :cond_43

    .line 58
    .line 59
    const/4 v3, 0x4

    .line 60
    if-eq v2, v3, :cond_40

    .line 61
    .line 62
    const-string v2, "null"

    .line 63
    .line 64
    goto :goto_4b

    .line 65
    :cond_40
    const-string v2, "RUNNING"

    .line 66
    .line 67
    goto :goto_4b

    .line 68
    :cond_43
    const-string v2, "QUEUED"

    .line 69
    .line 70
    goto :goto_4b

    .line 71
    :cond_46
    const-string v2, "QUEUING"

    .line 72
    .line 73
    goto :goto_4b

    .line 74
    :cond_49
    const-string v2, "IDLE"

    .line 75
    .line 76
    :goto_4b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :goto_55
    return-object v0

    .line 87
    :sswitch_56
    new-instance v0, Lc5/h;

    .line 88
    .line 89
    const-class v1, Ls4/b;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-direct {v0, v1}, Lc5/h;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Ls4/b;->c:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v1, Ls4/a;

    .line 101
    .line 102
    new-instance v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 103
    .line 104
    const/16 v3, 0x19

    .line 105
    .line 106
    const/4 v4, 0x0

    .line 107
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/y4;-><init>(IZ)V

    .line 108
    .line 109
    .line 110
    iget-object v3, v0, Lc5/h;->d:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v3, Lcom/google/android/gms/internal/measurement/y4;

    .line 113
    .line 114
    iput-object v2, v3, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 115
    .line 116
    iput-object v2, v0, Lc5/h;->d:Ljava/lang/Object;

    .line 117
    .line 118
    iput-object v1, v2, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 119
    .line 120
    invoke-virtual {v0}, Lc5/h;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    return-object v0

    .line 125
    :sswitch_data_7c
    .sparse-switch
        0x0 -> :sswitch_56
        0x11 -> :sswitch_a
    .end sparse-switch
.end method
