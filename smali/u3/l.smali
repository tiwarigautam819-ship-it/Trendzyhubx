###### Class u3.l (u3.l)
.class public final Lu3/l;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public a:I

.field public final b:Landroid/os/Messenger;

.field public c:Lcom/google/android/gms/internal/measurement/y4;

.field public final d:Ljava/util/ArrayDeque;

.field public final e:Landroid/util/SparseArray;

.field public final synthetic f:Lu3/n;


# direct methods
.method public constructor <init>(Lu3/n;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu3/l;->f:Lu3/n;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lu3/l;->a:I

    .line 8
    .line 9
    new-instance p1, Landroid/os/Messenger;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/measurement/r0;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lu3/k;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lu3/k;-><init>(Lu3/l;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lu3/l;->b:Landroid/os/Messenger;

    .line 32
    .line 33
    new-instance p1, Ljava/util/ArrayDeque;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lu3/l;->d:Ljava/util/ArrayDeque;

    .line 39
    .line 40
    new-instance p1, Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lu3/l;->e:Landroid/util/SparseArray;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lu3/l;->b(Ljava/lang/String;Ljava/lang/SecurityException;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 4
    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_7
    move-exception p1

    .line 9
    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    .line 10
    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;Ljava/lang/SecurityException;)V
    .registers 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    const-string v0, "MessengerIpcClient"

    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1d

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "Disconnected: "

    .line 16
    .line 17
    const-string v3, "MessengerIpcClient"

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    goto :goto_1d

    .line 27
    :catchall_1a
    move-exception p1

    .line 28
    goto/16 :goto_90

    .line 29
    .line 30
    :cond_1d
    :goto_1d
    iget v0, p0, Lu3/l;->a:I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1a

    .line 31
    .line 32
    if-eqz v0, :cond_8a

    .line 33
    .line 34
    const/4 v2, 0x4

    .line 35
    const/4 v3, 0x2

    .line 36
    const/4 v4, 0x1

    .line 37
    if-eq v0, v4, :cond_30

    .line 38
    .line 39
    if-eq v0, v3, :cond_30

    .line 40
    .line 41
    if-eq v0, v1, :cond_2c

    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :cond_2c
    :try_start_2c
    iput v2, p0, Lu3/l;->a:I
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_1a

    .line 46
    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :cond_30
    :try_start_30
    const-string v0, "MessengerIpcClient"

    .line 50
    .line 51
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_3f

    .line 56
    .line 57
    const-string v0, "MessengerIpcClient"

    .line 58
    .line 59
    const-string v1, "Unbinding service"

    .line 60
    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_3f
    iput v2, p0, Lu3/l;->a:I

    .line 65
    .line 66
    iget-object v0, p0, Lu3/l;->f:Lu3/n;

    .line 67
    .line 68
    invoke-static {}, La4/b;->b()La4/b;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-object v0, v0, Lu3/n;->a:Landroid/content/Context;

    .line 73
    .line 74
    invoke-virtual {v1, v0, p0}, La4/b;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 75
    .line 76
    .line 77
    new-instance v0, Lcom/google/firebase/messaging/x;

    .line 78
    .line 79
    invoke-direct {v0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lu3/l;->d:Ljava/util/ArrayDeque;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    :goto_57
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-eqz p2, :cond_67

    .line 93
    .line 94
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    check-cast p2, Lu3/m;

    .line 99
    .line 100
    invoke-virtual {p2, v0}, Lu3/m;->b(Lcom/google/firebase/messaging/x;)V

    .line 101
    .line 102
    .line 103
    goto :goto_57

    .line 104
    :cond_67
    iget-object p1, p0, Lu3/l;->d:Ljava/util/ArrayDeque;

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 107
    .line 108
    .line 109
    const/4 p1, 0x0

    .line 110
    :goto_6d
    iget-object p2, p0, Lu3/l;->e:Landroid/util/SparseArray;

    .line 111
    .line 112
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    if-ge p1, p2, :cond_83

    .line 117
    .line 118
    iget-object p2, p0, Lu3/l;->e:Landroid/util/SparseArray;

    .line 119
    .line 120
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    check-cast p2, Lu3/m;

    .line 125
    .line 126
    invoke-virtual {p2, v0}, Lu3/m;->b(Lcom/google/firebase/messaging/x;)V

    .line 127
    .line 128
    .line 129
    add-int/lit8 p1, p1, 0x1

    .line 130
    .line 131
    goto :goto_6d

    .line 132
    :cond_83
    iget-object p1, p0, Lu3/l;->e:Landroid/util/SparseArray;

    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V
    :try_end_88
    .catchall {:try_start_30 .. :try_end_88} :catchall_1a

    .line 135
    .line 136
    .line 137
    monitor-exit p0

    .line 138
    return-void

    .line 139
    :cond_8a
    :try_start_8a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 140
    .line 141
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 142
    .line 143
    .line 144
    throw p1

    .line 145
    :goto_90
    monitor-exit p0
    :try_end_91
    .catchall {:try_start_8a .. :try_end_91} :catchall_1a

    .line 146
    throw p1
.end method

.method public final declared-synchronized c()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lu3/l;->a:I

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-ne v0, v1, :cond_38

    .line 6
    .line 7
    iget-object v0, p0, Lu3/l;->d:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_38

    .line 14
    .line 15
    iget-object v0, p0, Lu3/l;->e:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_38

    .line 22
    .line 23
    const-string v0, "MessengerIpcClient"

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_28

    .line 30
    .line 31
    const-string v0, "MessengerIpcClient"

    .line 32
    .line 33
    const-string v1, "Finished handling requests, unbinding"

    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    goto :goto_28

    .line 39
    :catchall_26
    move-exception v0

    .line 40
    goto :goto_3a

    .line 41
    :cond_28
    :goto_28
    const/4 v0, 0x3

    .line 42
    iput v0, p0, Lu3/l;->a:I

    .line 43
    .line 44
    iget-object v0, p0, Lu3/l;->f:Lu3/n;

    .line 45
    .line 46
    invoke-static {}, La4/b;->b()La4/b;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v0, v0, Lu3/n;->a:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v1, v0, p0}, La4/b;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_26

    .line 53
    .line 54
    .line 55
    monitor-exit p0

    .line 56
    return-void

    .line 57
    :cond_38
    monitor-exit p0

    .line 58
    return-void

    .line 59
    :goto_3a
    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_26

    .line 60
    throw v0
.end method

.method public final declared-synchronized d(Lu3/m;)Z
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lu3/l;->a:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_22

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_2b

    .line 7
    .line 8
    if-eq v0, v2, :cond_24

    .line 9
    .line 10
    if-eq v0, v1, :cond_e

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_e
    :try_start_e
    iget-object v0, p0, Lu3/l;->d:Ljava/util/ArrayDeque;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lu3/l;->f:Lu3/n;

    .line 21
    .line 22
    iget-object p1, p1, Lu3/n;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 23
    .line 24
    new-instance v0, Lu3/j;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, p0, v1}, Lu3/j;-><init>(Lu3/l;I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_22

    .line 31
    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return v2

    .line 35
    :catchall_22
    move-exception p1

    .line 36
    goto :goto_86

    .line 37
    :cond_24
    :try_start_24
    iget-object v0, p0, Lu3/l;->d:Ljava/util/ArrayDeque;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_22

    .line 40
    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return v2

    .line 44
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lu3/l;->d:Ljava/util/ArrayDeque;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    iget p1, p0, Lu3/l;->a:I

    .line 50
    .line 51
    if-nez p1, :cond_80

    .line 52
    .line 53
    const-string p1, "MessengerIpcClient"

    .line 54
    .line 55
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_43

    .line 60
    .line 61
    const-string p1, "MessengerIpcClient"

    .line 62
    .line 63
    const-string v0, "Starting bind to GmsCore"

    .line 64
    .line 65
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_43
    iput v2, p0, Lu3/l;->a:I

    .line 69
    .line 70
    new-instance p1, Landroid/content/Intent;

    .line 71
    .line 72
    const-string v0, "com.google.android.c2dm.intent.REGISTER"

    .line 73
    .line 74
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v0, "com.google.android.gms"

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_51
    .catchall {:try_start_2b .. :try_end_51} :catchall_22

    .line 80
    .line 81
    .line 82
    :try_start_51
    invoke-static {}, La4/b;->b()La4/b;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v1, p0, Lu3/l;->f:Lu3/n;

    .line 87
    .line 88
    iget-object v1, v1, Lu3/n;->a:Landroid/content/Context;

    .line 89
    .line 90
    invoke-virtual {v0, v1, p1, p0, v2}, La4/b;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_67

    .line 95
    .line 96
    const-string p1, "Unable to bind to service"

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Lu3/l;->a(Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/SecurityException; {:try_start_51 .. :try_end_64} :catch_65
    .catchall {:try_start_51 .. :try_end_64} :catchall_22

    .line 99
    .line 100
    .line 101
    goto :goto_7e

    .line 102
    :catch_65
    move-exception p1

    .line 103
    goto :goto_79

    .line 104
    :cond_67
    :try_start_67
    iget-object p1, p0, Lu3/l;->f:Lu3/n;

    .line 105
    .line 106
    iget-object p1, p1, Lu3/n;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 107
    .line 108
    new-instance v0, Lu3/j;

    .line 109
    .line 110
    const/4 v1, 0x1

    .line 111
    invoke-direct {v0, p0, v1}, Lu3/j;-><init>(Lu3/l;I)V

    .line 112
    .line 113
    .line 114
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 115
    .line 116
    const-wide/16 v3, 0x1e

    .line 117
    .line 118
    invoke-interface {p1, v0, v3, v4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 119
    .line 120
    .line 121
    goto :goto_7e

    .line 122
    :goto_79
    const-string v0, "Unable to bind to service"

    .line 123
    .line 124
    invoke-virtual {p0, v0, p1}, Lu3/l;->b(Ljava/lang/String;Ljava/lang/SecurityException;)V
    :try_end_7e
    .catchall {:try_start_67 .. :try_end_7e} :catchall_22

    .line 125
    .line 126
    .line 127
    :goto_7e
    monitor-exit p0

    .line 128
    return v2

    .line 129
    :cond_80
    :try_start_80
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 130
    .line 131
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 132
    .line 133
    .line 134
    throw p1

    .line 135
    :goto_86
    monitor-exit p0
    :try_end_87
    .catchall {:try_start_80 .. :try_end_87} :catchall_22

    .line 136
    throw p1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 1
    const/4 p1, 0x2

    .line 2
    const-string v0, "MessengerIpcClient"

    .line 3
    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_e

    .line 9
    .line 10
    const-string p1, "Service connected"

    .line 11
    .line 12
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :cond_e
    iget-object p1, p0, Lu3/l;->f:Lu3/n;

    .line 16
    .line 17
    iget-object p1, p1, Lu3/n;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    .line 19
    new-instance v0, Ls4/b;

    .line 20
    .line 21
    const/16 v1, 0xf

    .line 22
    .line 23
    invoke-direct {v0, p0, v1, p2}, Ls4/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 1
    const/4 p1, 0x2

    .line 2
    const-string v0, "MessengerIpcClient"

    .line 3
    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_e

    .line 9
    .line 10
    const-string p1, "Service disconnected"

    .line 11
    .line 12
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :cond_e
    iget-object p1, p0, Lu3/l;->f:Lu3/n;

    .line 16
    .line 17
    iget-object p1, p1, Lu3/n;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    .line 19
    new-instance v0, Lu3/j;

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-direct {v0, p0, v1}, Lu3/j;-><init>(Lu3/l;I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

###### Class u3.k (u3.k)
.class public final synthetic Lu3/k;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lu3/l;


# direct methods
.method public synthetic constructor <init>(Lu3/l;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu3/k;->a:Lu3/l;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 6

    .line 1
    const-string v0, "Received response for unknown request: "

    .line 2
    .line 3
    const-string v1, "MessengerIpcClient"

    .line 4
    .line 5
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_20

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "Received response to request: "

    .line 17
    .line 18
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v3, "MessengerIpcClient"

    .line 29
    .line 30
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_20
    iget-object v1, p0, Lu3/k;->a:Lu3/l;

    .line 34
    .line 35
    monitor-enter v1

    .line 36
    :try_start_23
    iget-object v3, v1, Lu3/l;->e:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lu3/m;

    .line 43
    .line 44
    if-nez v3, :cond_42

    .line 45
    .line 46
    const-string p1, "MessengerIpcClient"

    .line 47
    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    monitor-exit v1

    .line 64
    goto :goto_8f

    .line 65
    :catchall_40
    move-exception p1

    .line 66
    goto :goto_91

    .line 67
    :cond_42
    iget-object v0, v1, Lu3/l;->e:Landroid/util/SparseArray;

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Lu3/l;->c()V

    .line 73
    .line 74
    .line 75
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_23 .. :try_end_4b} :catchall_40

    .line 76
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string v0, "unsupported"

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_64

    .line 88
    .line 89
    const-string p1, "Not supported by GmsCore"

    .line 90
    .line 91
    new-instance v0, Lcom/google/firebase/messaging/x;

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    invoke-direct {v0, p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v0}, Lu3/m;->b(Lcom/google/firebase/messaging/x;)V

    .line 98
    .line 99
    .line 100
    goto :goto_8f

    .line 101
    :cond_64
    iget v0, v3, Lu3/m;->e:I

    .line 102
    .line 103
    packed-switch v0, :pswitch_data_94

    .line 104
    .line 105
    .line 106
    const-string v0, "data"

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-nez p1, :cond_73

    .line 113
    .line 114
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 115
    .line 116
    :cond_73
    invoke-virtual {v3, p1}, Lu3/m;->c(Landroid/os/Bundle;)V

    .line 117
    .line 118
    .line 119
    goto :goto_8f

    .line 120
    :pswitch_77
    const-string v0, "ack"

    .line 121
    .line 122
    const/4 v1, 0x0

    .line 123
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    const/4 v0, 0x0

    .line 128
    if-eqz p1, :cond_85

    .line 129
    .line 130
    invoke-virtual {v3, v0}, Lu3/m;->c(Landroid/os/Bundle;)V

    .line 131
    .line 132
    .line 133
    goto :goto_8f

    .line 134
    :cond_85
    const-string p1, "Invalid response to one way request"

    .line 135
    .line 136
    new-instance v1, Lcom/google/firebase/messaging/x;

    .line 137
    .line 138
    invoke-direct {v1, p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v1}, Lu3/m;->b(Lcom/google/firebase/messaging/x;)V

    .line 142
    .line 143
    .line 144
    :goto_8f
    const/4 p1, 0x1

    .line 145
    return p1

    .line 146
    :goto_91
    :try_start_91
    monitor-exit v1
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_40

    .line 147
    throw p1

    .line 148
    nop

    .line 149
    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_77
    .end packed-switch
.end method
