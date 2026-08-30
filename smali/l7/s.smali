###### Class l7.s (l7.s)
.class public final Ll7/s;
.super Ll7/b0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static volatile _thread:Ljava/lang/Thread;

.field private static volatile debugStatus:I

.field public static final i:Ll7/s;

.field public static final j:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Ll7/s;

    .line 2
    .line 3
    invoke-direct {v0}, Ll7/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ll7/s;->i:Ll7/s;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Ll7/c0;->x(Z)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    .line 14
    const-wide/16 v1, 0x3e8

    .line 15
    .line 16
    :try_start_f
    const-string v3, "kotlinx.coroutines.DefaultExecutor.keepAlive"

    .line 17
    .line 18
    invoke-static {v3, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v1
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_15} :catch_16

    .line 22
    goto :goto_1a

    .line 23
    :catch_16
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_1a
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    sput-wide v0, Ll7/s;->j:J

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final declared-synchronized D()V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    sget v0, Ll7/s;->debugStatus:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_23

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x3

    .line 6
    if-eq v0, v1, :cond_c

    .line 7
    .line 8
    if-ne v0, v2, :cond_a

    .line 9
    .line 10
    goto :goto_c

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    :goto_c
    const/4 v0, 0x1

    .line 14
    :goto_d
    if-nez v0, :cond_11

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :cond_11
    :try_start_11
    sput v2, Ll7/s;->debugStatus:I

    .line 19
    .line 20
    sget-object v0, Ll7/b0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Ll7/b0;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 27
    .line 28
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_23

    .line 32
    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_23
    move-exception v0

    .line 37
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    .line 38
    throw v0
.end method

.method public final run()V
    .registers 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v0, Ll7/x0;->a:Ljava/lang/ThreadLocal;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_8
    monitor-enter p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_4e

    .line 10
    :try_start_9
    sget v0, Ll7/s;->debugStatus:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_8f

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x2

    .line 15
    const/4 v6, 0x1

    .line 16
    if-eq v0, v5, :cond_16

    .line 17
    .line 18
    if-ne v0, v4, :cond_14

    .line 19
    .line 20
    goto :goto_16

    .line 21
    :cond_14
    move v0, v3

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    :goto_16
    move v0, v6

    .line 24
    :goto_17
    if-eqz v0, :cond_29

    .line 25
    .line 26
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_4e

    .line 27
    sput-object v2, Ll7/s;->_thread:Ljava/lang/Thread;

    .line 28
    .line 29
    invoke-virtual {v1}, Ll7/s;->D()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ll7/b0;->B()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_8a

    .line 37
    .line 38
    invoke-virtual {v1}, Ll7/s;->w()Ljava/lang/Thread;

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_29
    :try_start_29
    sput v6, Ll7/s;->debugStatus:I

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_8f

    .line 45
    .line 46
    .line 47
    :try_start_2e
    monitor-exit p0

    .line 48
    const-wide v7, 0x7fffffffffffffffL

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    move-wide v9, v7

    .line 54
    :cond_35
    :goto_35
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ll7/b0;->C()J

    .line 58
    .line 59
    .line 60
    move-result-wide v11

    .line 61
    cmp-long v0, v11, v7

    .line 62
    .line 63
    const-wide/16 v13, 0x0

    .line 64
    .line 65
    if-nez v0, :cond_6b

    .line 66
    .line 67
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 68
    .line 69
    .line 70
    move-result-wide v15

    .line 71
    cmp-long v0, v9, v7

    .line 72
    .line 73
    if-nez v0, :cond_50

    .line 74
    .line 75
    sget-wide v9, Ll7/s;->j:J
    :try_end_4c
    .catchall {:try_start_2e .. :try_end_4c} :catchall_4e

    .line 76
    .line 77
    add-long/2addr v9, v15

    .line 78
    goto :goto_50

    .line 79
    :catchall_4e
    move-exception v0

    .line 80
    goto :goto_92

    .line 81
    :cond_50
    :goto_50
    sub-long v15, v9, v15

    .line 82
    .line 83
    cmp-long v0, v15, v13

    .line 84
    .line 85
    if-gtz v0, :cond_65

    .line 86
    .line 87
    sput-object v2, Ll7/s;->_thread:Ljava/lang/Thread;

    .line 88
    .line 89
    invoke-virtual {v1}, Ll7/s;->D()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ll7/b0;->B()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_8a

    .line 97
    .line 98
    invoke-virtual {v1}, Ll7/s;->w()Ljava/lang/Thread;

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_65
    cmp-long v0, v11, v15

    .line 103
    .line 104
    if-lez v0, :cond_6c

    .line 105
    .line 106
    move-wide v11, v15

    .line 107
    goto :goto_6c

    .line 108
    :cond_6b
    move-wide v9, v7

    .line 109
    :cond_6c
    :goto_6c
    cmp-long v0, v11, v13

    .line 110
    .line 111
    if-lez v0, :cond_35

    .line 112
    .line 113
    :try_start_70
    sget v0, Ll7/s;->debugStatus:I
    :try_end_72
    .catchall {:try_start_70 .. :try_end_72} :catchall_4e

    .line 114
    .line 115
    if-eq v0, v5, :cond_79

    .line 116
    .line 117
    if-ne v0, v4, :cond_77

    .line 118
    .line 119
    goto :goto_79

    .line 120
    :cond_77
    move v0, v3

    .line 121
    goto :goto_7a

    .line 122
    :cond_79
    :goto_79
    move v0, v6

    .line 123
    :goto_7a
    if-eqz v0, :cond_8b

    .line 124
    .line 125
    sput-object v2, Ll7/s;->_thread:Ljava/lang/Thread;

    .line 126
    .line 127
    invoke-virtual {v1}, Ll7/s;->D()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Ll7/b0;->B()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_8a

    .line 135
    .line 136
    invoke-virtual {v1}, Ll7/s;->w()Ljava/lang/Thread;

    .line 137
    .line 138
    .line 139
    :cond_8a
    return-void

    .line 140
    :cond_8b
    :try_start_8b
    invoke-static {v1, v11, v12}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_4e

    .line 141
    .line 142
    .line 143
    goto :goto_35

    .line 144
    :catchall_8f
    move-exception v0

    .line 145
    :try_start_90
    monitor-exit p0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    .line 146
    :try_start_91
    throw v0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_4e

    .line 147
    :goto_92
    sput-object v2, Ll7/s;->_thread:Ljava/lang/Thread;

    .line 148
    .line 149
    invoke-virtual {v1}, Ll7/s;->D()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ll7/b0;->B()Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-nez v2, :cond_a0

    .line 157
    .line 158
    invoke-virtual {v1}, Ll7/s;->w()Ljava/lang/Thread;

    .line 159
    .line 160
    .line 161
    :cond_a0
    throw v0
.end method

.method public final shutdown()V
    .registers 2

    .line 1
    const/4 v0, 0x4

    .line 2
    sput v0, Ll7/s;->debugStatus:I

    .line 3
    .line 4
    invoke-super {p0}, Ll7/b0;->shutdown()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final w()Ljava/lang/Thread;
    .registers 3

    .line 1
    sget-object v0, Ll7/s;->_thread:Ljava/lang/Thread;

    .line 2
    .line 3
    if-nez v0, :cond_20

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_5
    sget-object v0, Ll7/s;->_thread:Ljava/lang/Thread;

    .line 7
    .line 8
    if-nez v0, :cond_1c

    .line 9
    .line 10
    new-instance v0, Ljava/lang/Thread;

    .line 11
    .line 12
    const-string v1, "kotlinx.coroutines.DefaultExecutor"

    .line 13
    .line 14
    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Ll7/s;->_thread:Ljava/lang/Thread;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    .line 24
    .line 25
    .line 26
    goto :goto_1c

    .line 27
    :catchall_1a
    move-exception v0

    .line 28
    goto :goto_1e

    .line 29
    :cond_1c
    :goto_1c
    monitor-exit p0

    .line 30
    return-object v0

    .line 31
    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1a

    .line 32
    throw v0

    .line 33
    :cond_20
    return-object v0
.end method

.method public final z(Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    sget v0, Ll7/s;->debugStatus:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eq v0, v1, :cond_9

    .line 5
    .line 6
    invoke-super {p0, p1}, Ll7/b0;->z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_9
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    .line 11
    .line 12
    const-string v0, "DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method
