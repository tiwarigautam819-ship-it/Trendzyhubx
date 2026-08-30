###### Class com.google.firebase.iid.FirebaseInstanceIdReceiver (com.google.firebase.iid.FirebaseInstanceIdReceiver)
.class public final Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static a:Ljava/lang/ref/SoftReference;

.field public static b:Ljava/lang/ref/SoftReference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Landroid/content/Intent;)I
    .registers 4

    .line 1
    const-string v0, "pending_intent"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroid/app/PendingIntent;

    .line 8
    .line 9
    const-string v2, "CloudMessagingReceiver"

    .line 10
    .line 11
    if-eqz v1, :cond_15

    .line 12
    .line 13
    :try_start_c
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_f
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_c .. :try_end_f} :catch_10

    .line 14
    .line 15
    .line 16
    goto :goto_15

    .line 17
    :catch_10
    const-string v1, "Notification pending intent canceled"

    .line 18
    .line 19
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_15
    :goto_15
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_1f

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_24

    .line 32
    :cond_1f
    new-instance v1, Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 35
    .line 36
    .line 37
    :goto_24
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string v0, "com.google.firebase.messaging.NOTIFICATION_DISMISS"

    .line 42
    .line 43
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_4a

    .line 48
    .line 49
    new-instance p0, Landroid/content/Intent;

    .line 50
    .line 51
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {p0}, Lz7/d;->i(Landroid/content/Intent;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_48

    .line 63
    .line 64
    const-string v0, "_nd"

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {p0, v0}, Lz7/d;->h(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_48
    const/4 p0, -0x1

    .line 74
    return p0

    .line 75
    :cond_4a
    const-string p0, "Unknown notification action"

    .line 76
    .line 77
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    const/16 p0, 0x1f4

    .line 81
    .line 82
    return p0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .line 1
    if-nez p2, :cond_3

    .line 2
    .line 3
    return-void

    .line 4
    :cond_3
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    .line 5
    .line 6
    .line 7
    move-result v4

    .line 8
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    .line 9
    .line 10
    .line 11
    move-result-object v5

    .line 12
    const-class v1, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_e
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->a:Ljava/lang/ref/SoftReference;

    .line 16
    .line 17
    if-eqz v0, :cond_1c

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 24
    .line 25
    goto :goto_1d

    .line 26
    :catchall_19
    move-exception v0

    .line 27
    move-object p1, v0

    .line 28
    goto :goto_43

    .line 29
    :cond_1c
    const/4 v0, 0x0

    .line 30
    :goto_1d
    if-nez v0, :cond_35

    .line 31
    .line 32
    new-instance v0, Lc4/a;

    .line 33
    .line 34
    const-string v2, "firebase-iid-executor"

    .line 35
    .line 36
    invoke-direct {v0, v2}, Lc4/a;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v2, Ljava/lang/ref/SoftReference;

    .line 48
    .line 49
    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    sput-object v2, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->a:Ljava/lang/ref/SoftReference;

    .line 53
    .line 54
    :cond_35
    move-object v6, v0

    .line 55
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_e .. :try_end_37} :catchall_19

    .line 56
    new-instance v0, Lu3/i;

    .line 57
    .line 58
    move-object v1, p0

    .line 59
    move-object v3, p1

    .line 60
    move-object v2, p2

    .line 61
    invoke-direct/range {v0 .. v5}, Lu3/i;-><init>(Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;Landroid/content/Intent;Landroid/content/Context;ZLandroid/content/BroadcastReceiver$PendingResult;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :goto_43
    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_19

    .line 69
    throw p1
.end method

###### Class u3.i (u3.i)
.class public final synthetic Lu3/i;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Z

.field public final synthetic d:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;Landroid/content/Intent;Landroid/content/Context;ZLandroid/content/BroadcastReceiver$PendingResult;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lu3/i;->a:Landroid/content/Intent;

    .line 5
    .line 6
    iput-object p3, p0, Lu3/i;->b:Landroid/content/Context;

    .line 7
    .line 8
    iput-boolean p4, p0, Lu3/i;->c:Z

    .line 9
    .line 10
    iput-object p5, p0, Lu3/i;->d:Landroid/content/BroadcastReceiver$PendingResult;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lu3/i;->a:Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v2, v1, Lu3/i;->b:Landroid/content/Context;

    .line 6
    .line 7
    iget-boolean v3, v1, Lu3/i;->c:Z

    .line 8
    .line 9
    iget-object v4, v1, Lu3/i;->d:Landroid/content/BroadcastReceiver$PendingResult;

    .line 10
    .line 11
    :try_start_a
    const-string v5, "wrapped_intent"

    .line 12
    .line 13
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    instance-of v6, v5, Landroid/content/Intent;

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    if-eqz v6, :cond_1b

    .line 21
    .line 22
    check-cast v5, Landroid/content/Intent;

    .line 23
    .line 24
    goto :goto_1c

    .line 25
    :catchall_18
    move-exception v0

    .line 26
    goto/16 :goto_d6

    .line 27
    .line 28
    :cond_1b
    move-object v5, v7

    .line 29
    :goto_1c
    if-eqz v5, :cond_24

    .line 30
    .line 31
    invoke-static {v5}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->a(Landroid/content/Intent;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    goto/16 :goto_c7

    .line 36
    .line 37
    :cond_24
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const/16 v6, 0x1f4

    .line 42
    .line 43
    if-nez v5, :cond_2f

    .line 44
    .line 45
    :cond_2c
    :goto_2c
    move v0, v6

    .line 46
    goto/16 :goto_c7

    .line 47
    .line 48
    :cond_2f
    new-instance v5, Lu3/a;

    .line 49
    .line 50
    invoke-direct {v5, v0}, Lu3/a;-><init>(Landroid/content/Intent;)V

    .line 51
    .line 52
    .line 53
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    .line 54
    .line 55
    const/4 v9, 0x1

    .line 56
    invoke-direct {v8, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 57
    .line 58
    .line 59
    const-class v10, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;

    .line 60
    .line 61
    monitor-enter v10
    :try_end_3d
    .catchall {:try_start_a .. :try_end_3d} :catchall_18

    .line 62
    :try_start_3d
    sget-object v11, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->b:Ljava/lang/ref/SoftReference;

    .line 63
    .line 64
    if-eqz v11, :cond_4b

    .line 65
    .line 66
    invoke-virtual {v11}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    check-cast v7, Ljava/util/concurrent/Executor;

    .line 71
    .line 72
    goto :goto_4b

    .line 73
    :catchall_48
    move-exception v0

    .line 74
    goto/16 :goto_d4

    .line 75
    .line 76
    :cond_4b
    :goto_4b
    if-nez v7, :cond_74

    .line 77
    .line 78
    new-instance v7, Lc4/a;

    .line 79
    .line 80
    const-string v11, "pscm-ack-executor"

    .line 81
    .line 82
    invoke-direct {v7, v11}, Lc4/a;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance v11, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 86
    .line 87
    sget-object v16, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 88
    .line 89
    new-instance v17, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 90
    .line 91
    invoke-direct/range {v17 .. v17}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 92
    .line 93
    .line 94
    const/4 v12, 0x1

    .line 95
    const/4 v13, 0x1

    .line 96
    const-wide/16 v14, 0x3c

    .line 97
    .line 98
    move-object/from16 v18, v7

    .line 99
    .line 100
    invoke-direct/range {v11 .. v18}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v11, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 104
    .line 105
    .line 106
    invoke-static {v11}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    new-instance v9, Ljava/lang/ref/SoftReference;

    .line 111
    .line 112
    invoke-direct {v9, v7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    sput-object v9, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->b:Ljava/lang/ref/SoftReference;

    .line 116
    .line 117
    :cond_74
    monitor-exit v10
    :try_end_75
    .catchall {:try_start_3d .. :try_end_75} :catchall_48

    .line 118
    :try_start_75
    new-instance v9, Lg0/m;

    .line 119
    .line 120
    invoke-direct {v9, v2, v5, v8}, Lg0/m;-><init>(Landroid/content/Context;Lu3/a;Ljava/util/concurrent/CountDownLatch;)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v7, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_7d
    .catchall {:try_start_75 .. :try_end_7d} :catchall_18

    .line 124
    .line 125
    .line 126
    :try_start_7d
    new-instance v5, Lcom/google/firebase/messaging/j;

    .line 127
    .line 128
    invoke-direct {v5, v2}, Lcom/google/firebase/messaging/j;-><init>(Landroid/content/Context;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5, v0}, Lcom/google/firebase/messaging/j;->b(Landroid/content/Intent;)Lp4/q;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v0}, Lj7/g;->a(Lp4/i;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Ljava/lang/Integer;

    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 142
    .line 143
    .line 144
    move-result v0
    :try_end_90
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7d .. :try_end_90} :catch_94
    .catch Ljava/lang/InterruptedException; {:try_start_7d .. :try_end_90} :catch_92
    .catchall {:try_start_7d .. :try_end_90} :catchall_18

    .line 145
    move v6, v0

    .line 146
    goto :goto_9c

    .line 147
    :catch_92
    move-exception v0

    .line 148
    goto :goto_95

    .line 149
    :catch_94
    move-exception v0

    .line 150
    :goto_95
    :try_start_95
    const-string v2, "FirebaseMessaging"

    .line 151
    .line 152
    const-string v5, "Failed to send message to service."

    .line 153
    .line 154
    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9c
    .catchall {:try_start_95 .. :try_end_9c} :catchall_18

    .line 155
    .line 156
    .line 157
    :goto_9c
    :try_start_9c
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 158
    .line 159
    const-wide/16 v9, 0x1

    .line 160
    .line 161
    invoke-virtual {v0, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 162
    .line 163
    .line 164
    move-result-wide v9

    .line 165
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 166
    .line 167
    invoke-virtual {v8, v9, v10, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-nez v0, :cond_2c

    .line 172
    .line 173
    const-string v0, "CloudMessagingReceiver"

    .line 174
    .line 175
    const-string v2, "Message ack timed out"

    .line 176
    .line 177
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catch Ljava/lang/InterruptedException; {:try_start_9c .. :try_end_b3} :catch_b5
    .catchall {:try_start_9c .. :try_end_b3} :catchall_18

    .line 178
    .line 179
    .line 180
    goto/16 :goto_2c

    .line 181
    .line 182
    :catch_b5
    move-exception v0

    .line 183
    :try_start_b6
    const-string v2, "CloudMessagingReceiver"

    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    const-string v5, "Message ack failed: "

    .line 190
    .line 191
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    goto/16 :goto_2c

    .line 199
    .line 200
    :goto_c7
    if-eqz v3, :cond_ce

    .line 201
    .line 202
    if-eqz v4, :cond_ce

    .line 203
    .line 204
    invoke-virtual {v4, v0}, Landroid/content/BroadcastReceiver$PendingResult;->setResultCode(I)V
    :try_end_ce
    .catchall {:try_start_b6 .. :try_end_ce} :catchall_18

    .line 205
    .line 206
    .line 207
    :cond_ce
    if-eqz v4, :cond_d3

    .line 208
    .line 209
    invoke-virtual {v4}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 210
    .line 211
    .line 212
    :cond_d3
    return-void

    .line 213
    :goto_d4
    :try_start_d4
    monitor-exit v10
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_48

    .line 214
    :try_start_d5
    throw v0
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_18

    .line 215
    :goto_d6
    if-eqz v4, :cond_db

    .line 216
    .line 217
    invoke-virtual {v4}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 218
    .line 219
    .line 220
    :cond_db
    throw v0
.end method
