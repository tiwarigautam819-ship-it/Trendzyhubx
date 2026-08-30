###### Class com.google.firebase.messaging.c0 (com.google.firebase.messaging.c0)
.class public final Lcom/google/firebase/messaging/c0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:J

.field public final b:Landroid/os/PowerManager$WakeLock;

.field public final c:Lcom/google/firebase/messaging/FirebaseMessaging;

.field public final d:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;J)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 5
    .line 6
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    .line 8
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 9
    .line 10
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v7, Lc4/a;

    .line 14
    .line 15
    const-string v1, "firebase-iid-executor"

    .line 16
    .line 17
    invoke-direct {v7, v1}, Lc4/a;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x1

    .line 22
    const-wide/16 v3, 0x1e

    .line 23
    .line 24
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/google/firebase/messaging/c0;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/firebase/messaging/c0;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 30
    .line 31
    iput-wide p2, p0, Lcom/google/firebase/messaging/c0;->a:J

    .line 32
    .line 33
    iget-object p1, p1, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 34
    .line 35
    const-string p2, "power"

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroid/os/PowerManager;

    .line 42
    .line 43
    const/4 p2, 0x1

    .line 44
    const-string p3, "fiid-sync"

    .line 45
    .line 46
    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/google/firebase/messaging/c0;->b:Landroid/os/PowerManager$WakeLock;

    .line 51
    .line 52
    const/4 p2, 0x0

    .line 53
    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/c0;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "connectivity"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 12
    .line 13
    if-eqz v0, :cond_13

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    :goto_14
    if-eqz v0, :cond_1e

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1e

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    return v0

    .line 31
    :cond_1e
    const/4 v0, 0x0

    .line 32
    return v0
.end method

.method public final b()Z
    .registers 6

    .line 1
    const-string v0, "FirebaseMessaging"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    iget-object v2, p0, Lcom/google/firebase/messaging/c0;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 5
    .line 6
    invoke-virtual {v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->a()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-nez v2, :cond_13

    .line 11
    .line 12
    const-string v2, "Token retrieval failed: null"

    .line 13
    .line 14
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :catch_11
    move-exception v2

    .line 19
    goto :goto_27

    .line 20
    :cond_13
    const/4 v2, 0x3

    .line 21
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1f

    .line 26
    .line 27
    const-string v2, "Token successfully retrieved"

    .line 28
    .line 29
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1f} :catch_11
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_1f} :catch_21

    .line 30
    .line 31
    .line 32
    :cond_1f
    const/4 v0, 0x1

    .line 33
    return v0

    .line 34
    :catch_21
    const-string v2, "Token retrieval failed with SecurityException. Will retry token retrieval"

    .line 35
    .line 36
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :goto_27
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, "SERVICE_NOT_AVAILABLE"

    .line 45
    .line 46
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_51

    .line 51
    .line 52
    const-string v4, "INTERNAL_SERVER_ERROR"

    .line 53
    .line 54
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_51

    .line 59
    .line 60
    const-string v4, "InternalServerError"

    .line 61
    .line 62
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_44

    .line 67
    .line 68
    goto :goto_51

    .line 69
    :cond_44
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    if-nez v3, :cond_50

    .line 74
    .line 75
    const-string v2, "Token retrieval failed without exception message. Will retry token retrieval"

    .line 76
    .line 77
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    return v1

    .line 81
    :cond_50
    throw v2

    .line 82
    :cond_51
    :goto_51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v4, "Token retrieval failed: "

    .line 85
    .line 86
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v2, ". Will retry token retrieval"

    .line 97
    .line 98
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    return v1
.end method

.method public final run()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/c0;->b:Landroid/os/PowerManager$WakeLock;

    .line 2
    .line 3
    const-string v1, "Topic sync or token retrieval failed on hard failure exceptions: "

    .line 4
    .line 5
    invoke-static {}, Lcom/google/firebase/messaging/y;->u()Lcom/google/firebase/messaging/y;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/google/firebase/messaging/c0;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 10
    .line 11
    iget-object v4, v3, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v2, v4}, Lcom/google/firebase/messaging/y;->w(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_15

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 20
    .line 21
    .line 22
    :cond_15
    const/4 v2, 0x0

    .line 23
    :try_start_16
    monitor-enter v3
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_17} :catch_39
    .catchall {:try_start_16 .. :try_end_17} :catchall_36

    .line 24
    const/4 v4, 0x1

    .line 25
    :try_start_18
    iput-boolean v4, v3, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Z
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_86

    .line 26
    .line 27
    :try_start_1a
    monitor-exit v3

    .line 28
    iget-object v4, v3, Lcom/google/firebase/messaging/FirebaseMessaging;->h:Lcom/google/firebase/messaging/s;

    .line 29
    .line 30
    invoke-virtual {v4}, Lcom/google/firebase/messaging/s;->e()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_3b

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->h(Z)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_26} :catch_39
    .catchall {:try_start_1a .. :try_end_26} :catchall_36

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/google/firebase/messaging/y;->u()Lcom/google/firebase/messaging/y;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, v3, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/y;->w(Landroid/content/Context;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_b5

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catchall_36
    move-exception v1

    .line 56
    goto/16 :goto_b6

    .line 57
    .line 58
    :catch_39
    move-exception v4

    .line 59
    goto :goto_89

    .line 60
    :cond_3b
    :try_start_3b
    invoke-static {}, Lcom/google/firebase/messaging/y;->u()Lcom/google/firebase/messaging/y;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    iget-object v5, v3, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 65
    .line 66
    invoke-virtual {v4, v5}, Lcom/google/firebase/messaging/y;->v(Landroid/content/Context;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_67

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/google/firebase/messaging/c0;->a()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-nez v4, :cond_67

    .line 77
    .line 78
    new-instance v4, Lq2/d;

    .line 79
    .line 80
    invoke-direct {v4}, Lq2/d;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object p0, v4, Lq2/d;->b:Ljava/lang/Object;

    .line 84
    .line 85
    invoke-virtual {v4}, Lq2/d;->b()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_57} :catch_39
    .catchall {:try_start_3b .. :try_end_57} :catchall_36

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lcom/google/firebase/messaging/y;->u()Lcom/google/firebase/messaging/y;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iget-object v2, v3, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/y;->w(Landroid/content/Context;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_b5

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_67
    :try_start_67
    invoke-virtual {p0}, Lcom/google/firebase/messaging/c0;->b()Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_71

    .line 109
    .line 110
    invoke-virtual {v3, v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->h(Z)V

    .line 111
    .line 112
    .line 113
    goto :goto_76

    .line 114
    :cond_71
    iget-wide v4, p0, Lcom/google/firebase/messaging/c0;->a:J

    .line 115
    .line 116
    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/messaging/FirebaseMessaging;->k(J)V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_76} :catch_39
    .catchall {:try_start_67 .. :try_end_76} :catchall_36

    .line 117
    .line 118
    .line 119
    :goto_76
    invoke-static {}, Lcom/google/firebase/messaging/y;->u()Lcom/google/firebase/messaging/y;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget-object v2, v3, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/y;->w(Landroid/content/Context;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_b5

    .line 130
    .line 131
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :catchall_86
    move-exception v4

    .line 136
    :try_start_87
    monitor-exit v3
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    .line 137
    :try_start_88
    throw v4
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_89} :catch_39
    .catchall {:try_start_88 .. :try_end_89} :catchall_36

    .line 138
    :goto_89
    :try_start_89
    const-string v5, "FirebaseMessaging"

    .line 139
    .line 140
    new-instance v6, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v1, ". Won\'t retry the operation."

    .line 153
    .line 154
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->h(Z)V
    :try_end_a6
    .catchall {:try_start_89 .. :try_end_a6} :catchall_36

    .line 165
    .line 166
    .line 167
    invoke-static {}, Lcom/google/firebase/messaging/y;->u()Lcom/google/firebase/messaging/y;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    iget-object v2, v3, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/y;->w(Landroid/content/Context;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_b5

    .line 178
    .line 179
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 180
    .line 181
    .line 182
    :cond_b5
    return-void

    .line 183
    :goto_b6
    invoke-static {}, Lcom/google/firebase/messaging/y;->u()Lcom/google/firebase/messaging/y;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    iget-object v3, v3, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 188
    .line 189
    invoke-virtual {v2, v3}, Lcom/google/firebase/messaging/y;->w(Landroid/content/Context;)Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_c5

    .line 194
    .line 195
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 196
    .line 197
    .line 198
    :cond_c5
    throw v1
.end method
