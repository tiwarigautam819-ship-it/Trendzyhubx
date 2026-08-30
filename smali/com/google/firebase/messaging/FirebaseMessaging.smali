###### Class com.google.firebase.messaging.FirebaseMessaging (com.google.firebase.messaging.FirebaseMessaging)
.class public Lcom/google/firebase/messaging/FirebaseMessaging;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final j:J

.field public static k:Lcom/google/firebase/messaging/b0;

.field public static l:Lg5/a;

.field public static m:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field public final a:Lt4/g;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/google/android/gms/common/internal/g;

.field public final d:Lcom/google/firebase/messaging/j;

.field public final e:Lcom/google/firebase/messaging/p;

.field public final f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final g:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final h:Lcom/google/firebase/messaging/s;

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:J

    .line 10
    .line 11
    new-instance v0, Lcom/google/firebase/messaging/l;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/l;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Lg5/a;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Lt4/g;Lg5/a;Lg5/a;Lh5/e;Lg5/a;Ld5/d;)V
    .registers 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    new-instance v3, Lcom/google/firebase/messaging/s;

    .line 6
    .line 7
    invoke-virtual {v2}, Lt4/g;->a()V

    .line 8
    .line 9
    .line 10
    iget-object v7, v2, Lt4/g;->a:Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    iput v8, v3, Lcom/google/firebase/messaging/s;->c:I

    .line 17
    .line 18
    iput-object v7, v3, Lcom/google/firebase/messaging/s;->e:Ljava/lang/Object;

    .line 19
    .line 20
    new-instance v1, Lcom/google/android/gms/common/internal/g;

    .line 21
    .line 22
    move-object/from16 v4, p2

    .line 23
    .line 24
    move-object/from16 v5, p3

    .line 25
    .line 26
    move-object/from16 v6, p4

    .line 27
    .line 28
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/common/internal/g;-><init>(Lt4/g;Lcom/google/firebase/messaging/s;Lg5/a;Lg5/a;Lh5/e;)V

    .line 29
    .line 30
    .line 31
    new-instance v4, Lc4/a;

    .line 32
    .line 33
    const-string v5, "Firebase-Messaging-Task"

    .line 34
    .line 35
    invoke-direct {v4, v5}, Lc4/a;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v4}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    new-instance v5, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 43
    .line 44
    new-instance v6, Lc4/a;

    .line 45
    .line 46
    const-string v9, "Firebase-Messaging-Init"

    .line 47
    .line 48
    invoke-direct {v6, v9}, Lc4/a;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 v9, 0x1

    .line 52
    invoke-direct {v5, v9, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 53
    .line 54
    .line 55
    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 56
    .line 57
    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 58
    .line 59
    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 60
    .line 61
    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance v6, Lc4/a;

    .line 65
    .line 66
    const-string v11, "Firebase-Messaging-File-Io"

    .line 67
    .line 68
    invoke-direct {v6, v11}, Lc4/a;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 v11, 0x0

    .line 72
    const/4 v12, 0x1

    .line 73
    const-wide/16 v13, 0x1e

    .line 74
    .line 75
    move-object/from16 v17, v6

    .line 76
    .line 77
    invoke-direct/range {v10 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-boolean v8, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Z

    .line 84
    .line 85
    sput-object p5, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Lg5/a;

    .line 86
    .line 87
    iput-object v2, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lt4/g;

    .line 88
    .line 89
    new-instance v6, Lcom/google/firebase/messaging/p;

    .line 90
    .line 91
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object v0, v6, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    .line 95
    .line 96
    move-object/from16 v11, p6

    .line 97
    .line 98
    iput-object v11, v6, Lcom/google/firebase/messaging/p;->b:Ljava/lang/Object;

    .line 99
    .line 100
    iput-object v6, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Lcom/google/firebase/messaging/p;

    .line 101
    .line 102
    invoke-virtual {v2}, Lt4/g;->a()V

    .line 103
    .line 104
    .line 105
    iget-object v6, v2, Lt4/g;->a:Landroid/content/Context;

    .line 106
    .line 107
    iput-object v6, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 108
    .line 109
    new-instance v11, Lcom/google/firebase/messaging/k;

    .line 110
    .line 111
    invoke-direct {v11}, Lcom/google/firebase/messaging/k;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-object v3, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->h:Lcom/google/firebase/messaging/s;

    .line 115
    .line 116
    iput-object v1, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Lcom/google/android/gms/common/internal/g;

    .line 117
    .line 118
    new-instance v12, Lcom/google/firebase/messaging/j;

    .line 119
    .line 120
    invoke-direct {v12, v4}, Lcom/google/firebase/messaging/j;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 121
    .line 122
    .line 123
    iput-object v12, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Lcom/google/firebase/messaging/j;

    .line 124
    .line 125
    iput-object v5, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 126
    .line 127
    iput-object v10, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 128
    .line 129
    invoke-virtual {v2}, Lt4/g;->a()V

    .line 130
    .line 131
    .line 132
    instance-of v2, v7, Landroid/app/Application;

    .line 133
    .line 134
    if-eqz v2, :cond_8d

    .line 135
    .line 136
    check-cast v7, Landroid/app/Application;

    .line 137
    .line 138
    invoke-virtual {v7, v11}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 139
    .line 140
    .line 141
    goto :goto_a5

    .line 142
    :cond_8d
    new-instance v2, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v4, "Context "

    .line 145
    .line 146
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v4, " was not an application, can\'t register for lifecycle callbacks. Some notification events may be dropped as a result."

    .line 153
    .line 154
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    const-string v4, "FirebaseMessaging"

    .line 162
    .line 163
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    :goto_a5
    new-instance v2, Lcom/google/firebase/messaging/m;

    .line 167
    .line 168
    invoke-direct {v2, v0, v8}, Lcom/google/firebase/messaging/m;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 172
    .line 173
    .line 174
    new-instance v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 175
    .line 176
    new-instance v4, Lc4/a;

    .line 177
    .line 178
    const-string v7, "Firebase-Messaging-Topics-Io"

    .line 179
    .line 180
    invoke-direct {v4, v7}, Lc4/a;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-direct {v2, v9, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 184
    .line 185
    .line 186
    sget v4, Lcom/google/firebase/messaging/g0;->j:I

    .line 187
    .line 188
    new-instance v4, Lcom/google/firebase/messaging/f0;

    .line 189
    .line 190
    move-object/from16 p4, v0

    .line 191
    .line 192
    move-object/from16 p6, v1

    .line 193
    .line 194
    move-object/from16 p3, v2

    .line 195
    .line 196
    move-object/from16 p5, v3

    .line 197
    .line 198
    move-object/from16 p1, v4

    .line 199
    .line 200
    move-object/from16 p2, v6

    .line 201
    .line 202
    invoke-direct/range {p1 .. p6}, Lcom/google/firebase/messaging/f0;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/s;Lcom/google/android/gms/common/internal/g;)V

    .line 203
    .line 204
    .line 205
    move-object/from16 v2, p1

    .line 206
    .line 207
    move-object/from16 v1, p3

    .line 208
    .line 209
    invoke-static {v1, v2}, Lj7/g;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lp4/q;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    new-instance v2, Lcom/google/firebase/messaging/n;

    .line 214
    .line 215
    invoke-direct {v2, v0, v8}, Lcom/google/firebase/messaging/n;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v5, v2}, Lp4/q;->c(Ljava/util/concurrent/Executor;Lp4/f;)Lp4/q;

    .line 219
    .line 220
    .line 221
    new-instance v1, Lcom/google/firebase/messaging/m;

    .line 222
    .line 223
    invoke-direct {v1, v0, v9}, Lcom/google/firebase/messaging/m;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 227
    .line 228
    .line 229
    return-void
.end method

.method public static b(Ljava/lang/Runnable;J)V
    .registers 7

    .line 1
    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->m:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 5
    .line 6
    if-nez v1, :cond_19

    .line 7
    .line 8
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 9
    .line 10
    new-instance v2, Lc4/a;

    .line 11
    .line 12
    const-string v3, "TAG"

    .line 13
    .line 14
    invoke-direct {v2, v3}, Lc4/a;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-direct {v1, v3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->m:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 22
    .line 23
    goto :goto_19

    .line 24
    :catchall_17
    move-exception p0

    .line 25
    goto :goto_22

    .line 26
    :cond_19
    :goto_19
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->m:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 27
    .line 28
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    .line 30
    invoke-virtual {v1, p0, p1, p2, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_17

    .line 36
    throw p0
.end method

.method public static declared-synchronized c()Lcom/google/firebase/messaging/FirebaseMessaging;
    .registers 2

    .line 1
    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-static {}, Lt4/g;->c()Lt4/g;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance(Lt4/g;)Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 9
    .line 10
    .line 11
    move-result-object v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 12
    monitor-exit v0

    .line 13
    return-object v1

    .line 14
    :catchall_d
    move-exception v1

    .line 15
    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    .line 16
    throw v1
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Lcom/google/firebase/messaging/b0;
    .registers 3

    .line 1
    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Lcom/google/firebase/messaging/b0;

    .line 5
    .line 6
    if-nez v1, :cond_11

    .line 7
    .line 8
    new-instance v1, Lcom/google/firebase/messaging/b0;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/google/firebase/messaging/b0;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Lcom/google/firebase/messaging/b0;

    .line 14
    .line 15
    goto :goto_11

    .line 16
    :catchall_f
    move-exception p0

    .line 17
    goto :goto_15

    .line 18
    :cond_11
    :goto_11
    sget-object p0, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Lcom/google/firebase/messaging/b0;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    .line 23
    throw p0
.end method

.method public static declared-synchronized getInstance(Lt4/g;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .registers 3

    .line 1
    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    const-class v1, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lt4/g;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 11
    .line 12
    const-string v1, "Firebase Messaging component is not present"

    .line 13
    .line 14
    invoke-static {v1, p0}, Lcom/google/android/gms/common/internal/d0;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :catchall_12
    move-exception p0

    .line 20
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    .line 21
    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->e()Lcom/google/firebase/messaging/a0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->l(Lcom/google/firebase/messaging/a0;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_d

    .line 10
    .line 11
    iget-object v0, v0, Lcom/google/firebase/messaging/a0;->a:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_d
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lt4/g;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/google/firebase/messaging/s;->c(Lt4/g;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Lcom/google/firebase/messaging/j;

    .line 21
    .line 22
    const-string v3, "Making new request for: "

    .line 23
    .line 24
    const-string v4, "Joining ongoing request for: "

    .line 25
    .line 26
    monitor-enter v2

    .line 27
    :try_start_1a
    iget-object v5, v2, Lcom/google/firebase/messaging/j;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v5, Ls/e;

    .line 30
    .line 31
    invoke-virtual {v5, v1}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Lp4/i;

    .line 36
    .line 37
    const/4 v6, 0x3

    .line 38
    if-eqz v5, :cond_45

    .line 39
    .line 40
    const-string v0, "FirebaseMessaging"

    .line 41
    .line 42
    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_43

    .line 47
    .line 48
    const-string v0, "FirebaseMessaging"

    .line 49
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_1a .. :try_end_40} :catchall_41

    .line 63
    .line 64
    .line 65
    goto :goto_43

    .line 66
    :catchall_41
    move-exception v0

    .line 67
    goto :goto_a9

    .line 68
    :cond_43
    :goto_43
    monitor-exit v2

    .line 69
    goto :goto_99

    .line 70
    :cond_45
    :try_start_45
    const-string v4, "FirebaseMessaging"

    .line 71
    .line 72
    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_5e

    .line 77
    .line 78
    const-string v4, "FirebaseMessaging"

    .line 79
    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    :cond_5e
    iget-object v3, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Lcom/google/android/gms/common/internal/g;

    .line 96
    .line 97
    iget-object v4, v3, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v4, Lt4/g;

    .line 100
    .line 101
    invoke-static {v4}, Lcom/google/firebase/messaging/s;->c(Lt4/g;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    const-string v5, "*"

    .line 106
    .line 107
    new-instance v6, Landroid/os/Bundle;

    .line 108
    .line 109
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/common/internal/g;->k(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lp4/q;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/internal/g;->e(Lp4/q;)Lp4/q;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    iget-object v4, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 121
    .line 122
    new-instance v5, Lcom/google/firebase/messaging/o;

    .line 123
    .line 124
    const/4 v6, 0x0

    .line 125
    invoke-direct {v5, p0, v1, v0, v6}, Lcom/google/firebase/messaging/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v4, v5}, Lp4/q;->k(Ljava/util/concurrent/Executor;Lp4/h;)Lp4/q;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iget-object v3, v2, Lcom/google/firebase/messaging/j;->a:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v3, Ljava/util/concurrent/Executor;

    .line 135
    .line 136
    new-instance v4, Lb2/d;

    .line 137
    .line 138
    const/4 v5, 0x2

    .line 139
    invoke-direct {v4, v2, v5, v1}, Lb2/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v3, v4}, Lp4/q;->j(Ljava/util/concurrent/Executor;Lp4/a;)Lp4/q;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    iget-object v0, v2, Lcom/google/firebase/messaging/j;->b:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v0, Ls/e;

    .line 149
    .line 150
    invoke-virtual {v0, v1, v5}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_98
    .catchall {:try_start_45 .. :try_end_98} :catchall_41

    .line 151
    .line 152
    .line 153
    monitor-exit v2

    .line 154
    :goto_99
    :try_start_99
    invoke-static {v5}, Lj7/g;->a(Lp4/i;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Ljava/lang/String;
    :try_end_9f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_99 .. :try_end_9f} :catch_a2
    .catch Ljava/lang/InterruptedException; {:try_start_99 .. :try_end_9f} :catch_a0

    .line 159
    .line 160
    return-object v0

    .line 161
    :catch_a0
    move-exception v0

    .line 162
    goto :goto_a3

    .line 163
    :catch_a2
    move-exception v0

    .line 164
    :goto_a3
    new-instance v1, Ljava/io/IOException;

    .line 165
    .line 166
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 167
    .line 168
    .line 169
    throw v1

    .line 170
    :goto_a9
    :try_start_a9
    monitor-exit v2
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_41

    .line 171
    throw v0
.end method

.method public final e()Lcom/google/firebase/messaging/a0;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->d(Landroid/content/Context;)Lcom/google/firebase/messaging/b0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "[DEFAULT]"

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lt4/g;

    .line 10
    .line 11
    invoke-virtual {v2}, Lt4/g;->a()V

    .line 12
    .line 13
    .line 14
    iget-object v3, v2, Lt4/g;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_18

    .line 21
    .line 22
    const-string v1, ""

    .line 23
    .line 24
    goto :goto_1c

    .line 25
    :cond_18
    invoke-virtual {v2}, Lt4/g;->d()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :goto_1c
    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lt4/g;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/google/firebase/messaging/s;->c(Lt4/g;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    monitor-enter v0

    .line 36
    :try_start_23
    iget-object v3, v0, Lcom/google/firebase/messaging/b0;->a:Landroid/content/SharedPreferences;

    .line 37
    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, "|T|"

    .line 47
    .line 48
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, "|*"

    .line 55
    .line 56
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v1}, Lcom/google/firebase/messaging/a0;->b(Ljava/lang/String;)Lcom/google/firebase/messaging/a0;

    .line 69
    .line 70
    .line 71
    move-result-object v1
    :try_end_47
    .catchall {:try_start_23 .. :try_end_47} :catchall_49

    .line 72
    monitor-exit v0

    .line 73
    return-object v1

    .line 74
    :catchall_49
    move-exception v1

    .line 75
    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    .line 76
    throw v1
.end method

.method public final f()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Lcom/google/android/gms/common/internal/g;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/common/internal/g;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lu3/b;

    .line 6
    .line 7
    iget-object v1, v0, Lu3/b;->c:Lk6/b;

    .line 8
    .line 9
    invoke-virtual {v1}, Lk6/b;->d()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const v2, 0xe5ee4e0

    .line 14
    .line 15
    .line 16
    if-lt v1, v2, :cond_38

    .line 17
    .line 18
    iget-object v0, v0, Lu3/b;->b:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v0}, Lu3/n;->a(Landroid/content/Context;)Lu3/n;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 25
    .line 26
    new-instance v2, Lu3/m;

    .line 27
    .line 28
    monitor-enter v0

    .line 29
    :try_start_1c
    iget v3, v0, Lu3/n;->d:I

    .line 30
    .line 31
    add-int/lit8 v4, v3, 0x1

    .line 32
    .line 33
    iput v4, v0, Lu3/n;->d:I
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_35

    .line 34
    .line 35
    monitor-exit v0

    .line 36
    const/4 v4, 0x1

    .line 37
    const/4 v5, 0x5

    .line 38
    invoke-direct {v2, v3, v5, v1, v4}, Lu3/m;-><init>(IILandroid/os/Bundle;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Lu3/n;->b(Lu3/m;)Lp4/q;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget-object v1, Lu3/h;->c:Lu3/h;

    .line 46
    .line 47
    sget-object v2, Lu3/d;->c:Lu3/d;

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lp4/q;->i(Ljava/util/concurrent/Executor;Lp4/a;)Lp4/q;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto :goto_43

    .line 54
    :catchall_35
    move-exception v1

    .line 55
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    .line 56
    throw v1

    .line 57
    :cond_38
    new-instance v0, Ljava/io/IOException;

    .line 58
    .line 59
    const-string v1, "SERVICE_NOT_AVAILABLE"

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lj7/g;->k(Ljava/lang/Exception;)Lp4/q;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :goto_43
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 69
    .line 70
    new-instance v2, Lcom/google/firebase/messaging/n;

    .line 71
    .line 72
    const/4 v3, 0x1

    .line 73
    invoke-direct {v2, p0, v3}, Lcom/google/firebase/messaging/n;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1, v2}, Lp4/q;->c(Ljava/util/concurrent/Executor;Lp4/f;)Lp4/q;

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final g()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Lcom/google/firebase/messaging/p;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-virtual {v0}, Lcom/google/firebase/messaging/p;->e()V

    .line 5
    .line 6
    .line 7
    iget-object v1, v0, Lcom/google/firebase/messaging/p;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lcom/getcapacitor/n;

    .line 10
    .line 11
    if-eqz v1, :cond_1b

    .line 12
    .line 13
    iget-object v2, v0, Lcom/google/firebase/messaging/p;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Ld5/d;

    .line 16
    .line 17
    check-cast v2, Lv4/j;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Lv4/j;->b(Lcom/getcapacitor/n;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, v0, Lcom/google/firebase/messaging/p;->c:Ljava/lang/Object;

    .line 24
    .line 25
    goto :goto_1b

    .line 26
    :catchall_19
    move-exception v1

    .line 27
    goto :goto_47

    .line 28
    :cond_1b
    :goto_1b
    iget-object v1, v0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lt4/g;

    .line 33
    .line 34
    invoke-virtual {v1}, Lt4/g;->a()V

    .line 35
    .line 36
    .line 37
    iget-object v1, v1, Lt4/g;->a:Landroid/content/Context;

    .line 38
    .line 39
    const-string v2, "com.google.firebase.messaging"

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "auto_init"

    .line 51
    .line 52
    const/4 v3, 0x1

    .line 53
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 54
    .line 55
    .line 56
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v1, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->j()V

    .line 64
    .line 65
    .line 66
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 67
    .line 68
    iput-object v1, v0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_19

    .line 69
    .line 70
    monitor-exit v0

    .line 71
    return-void

    .line 72
    :goto_47
    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_19

    .line 73
    throw v1
.end method

.method public final declared-synchronized h(Z)V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iput-boolean p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_5
    move-exception p1

    .line 7
    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    .line 8
    throw p1
.end method

.method public final i()Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lz7/l;->k(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v2, 0x1d

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x3

    .line 12
    const-string v5, "FirebaseMessaging"

    .line 13
    .line 14
    if-lt v1, v2, :cond_67

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 25
    .line 26
    if-ne v1, v2, :cond_51

    .line 27
    .line 28
    const-class v1, Landroid/app/NotificationManager;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/app/NotificationManager;

    .line 35
    .line 36
    invoke-static {v0}, La4/a;->i(Landroid/app/NotificationManager;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "com.google.android.gms"

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_72

    .line 47
    .line 48
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_3a

    .line 53
    .line 54
    const-string v0, "GMS core is set for proxying"

    .line 55
    .line 56
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_3a
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lt4/g;

    .line 60
    .line 61
    const-class v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lt4/g;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_45

    .line 68
    .line 69
    goto :goto_4f

    .line 70
    :cond_45
    invoke-static {}, Lz7/d;->b()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_72

    .line 75
    .line 76
    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Lg5/a;

    .line 77
    .line 78
    if-eqz v0, :cond_72

    .line 79
    .line 80
    :goto_4f
    const/4 v0, 0x1

    .line 81
    return v0

    .line 82
    :cond_51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v2, "error retrieving notification delegate for package "

    .line 85
    .line 86
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    return v3

    .line 104
    :cond_67
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_72

    .line 109
    .line 110
    const-string v0, "Platform doesn\'t support proxying."

    .line 111
    .line 112
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    :cond_72
    return v3
.end method

.method public final j()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->e()Lcom/google/firebase/messaging/a0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->l(Lcom/google/firebase/messaging/a0;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1b

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_b
    iget-boolean v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Z

    .line 13
    .line 14
    if-nez v0, :cond_17

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->k(J)V
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_15

    .line 19
    .line 20
    .line 21
    goto :goto_17

    .line 22
    :catchall_15
    move-exception v0

    .line 23
    goto :goto_19

    .line 24
    :cond_17
    :goto_17
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_15

    .line 27
    throw v0

    .line 28
    :cond_1b
    return-void
.end method

.method public final declared-synchronized k(J)V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x2

    .line 3
    .line 4
    mul-long/2addr v0, p1

    .line 5
    const-wide/16 v2, 0x1e

    .line 6
    .line 7
    :try_start_6
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    sget-wide v2, Lcom/google/firebase/messaging/FirebaseMessaging;->j:J

    .line 12
    .line 13
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    new-instance v2, Lcom/google/firebase/messaging/c0;

    .line 18
    .line 19
    invoke-direct {v2, p0, v0, v1}, Lcom/google/firebase/messaging/c0;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;J)V

    .line 20
    .line 21
    .line 22
    invoke-static {v2, p1, p2}, Lcom/google/firebase/messaging/FirebaseMessaging;->b(Ljava/lang/Runnable;J)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Z
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1d

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_1d
    move-exception p1

    .line 31
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    .line 32
    throw p1
.end method

.method public final l(Lcom/google/firebase/messaging/a0;)Z
    .registers 9

    .line 1
    if-eqz p1, :cond_20

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->h:Lcom/google/firebase/messaging/s;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/messaging/s;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    iget-wide v3, p1, Lcom/google/firebase/messaging/a0;->c:J

    .line 14
    .line 15
    sget-wide v5, Lcom/google/firebase/messaging/a0;->d:J

    .line 16
    .line 17
    add-long/2addr v3, v5

    .line 18
    cmp-long v1, v1, v3

    .line 19
    .line 20
    if-gtz v1, :cond_20

    .line 21
    .line 22
    iget-object p1, p1, Lcom/google/firebase/messaging/a0;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_1e

    .line 29
    .line 30
    goto :goto_20

    .line 31
    :cond_1e
    const/4 p1, 0x0

    .line 32
    return p1

    .line 33
    :cond_20
    :goto_20
    const/4 p1, 0x1

    .line 34
    return p1
.end method

###### Class com.google.firebase.messaging.f0 (com.google.firebase.messaging.f0)
.class public final synthetic Lcom/google/firebase/messaging/f0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final synthetic c:Lcom/google/firebase/messaging/FirebaseMessaging;

.field public final synthetic d:Lcom/google/firebase/messaging/s;

.field public final synthetic e:Lcom/google/android/gms/common/internal/g;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/s;Lcom/google/android/gms/common/internal/g;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/messaging/f0;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/firebase/messaging/f0;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/firebase/messaging/f0;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/firebase/messaging/f0;->d:Lcom/google/firebase/messaging/s;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/firebase/messaging/f0;->e:Lcom/google/android/gms/common/internal/g;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 9

    .line 1
    iget-object v5, p0, Lcom/google/firebase/messaging/f0;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v6, p0, Lcom/google/firebase/messaging/f0;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/firebase/messaging/f0;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/firebase/messaging/f0;->d:Lcom/google/firebase/messaging/s;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/firebase/messaging/f0;->e:Lcom/google/android/gms/common/internal/g;

    .line 10
    .line 11
    const-class v3, Lcom/google/firebase/messaging/e0;

    .line 12
    .line 13
    monitor-enter v3

    .line 14
    :try_start_d
    sget-object v0, Lcom/google/firebase/messaging/e0;->d:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    if-eqz v0, :cond_1a

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/firebase/messaging/e0;

    .line 23
    .line 24
    goto :goto_1b

    .line 25
    :catchall_18
    move-exception v0

    .line 26
    goto :goto_3c

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    :goto_1b
    if-nez v0, :cond_34

    .line 29
    .line 30
    const-string v0, "com.google.android.gms.appid"

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    invoke-virtual {v5, v0, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v7, Lcom/google/firebase/messaging/e0;

    .line 38
    .line 39
    invoke-direct {v7, v0, v6}, Lcom/google/firebase/messaging/e0;-><init>(Landroid/content/SharedPreferences;Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7}, Lcom/google/firebase/messaging/e0;->b()V

    .line 43
    .line 44
    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 46
    .line 47
    invoke-direct {v0, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/google/firebase/messaging/e0;->d:Ljava/lang/ref/WeakReference;
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_18

    .line 51
    .line 52
    move-object v0, v7

    .line 53
    :cond_34
    monitor-exit v3

    .line 54
    move-object v3, v0

    .line 55
    new-instance v0, Lcom/google/firebase/messaging/g0;

    .line 56
    .line 57
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/messaging/g0;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/s;Lcom/google/firebase/messaging/e0;Lcom/google/android/gms/common/internal/g;Landroid/content/Context;Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :goto_3c
    :try_start_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_18

    .line 62
    throw v0
.end method

###### Class com.google.firebase.messaging.m (com.google.firebase.messaging.m)
.class public final synthetic Lcom/google/firebase/messaging/m;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/firebase/messaging/FirebaseMessaging;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;I)V
    .registers 3

    .line 1
    iput p2, p0, Lcom/google/firebase/messaging/m;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/firebase/messaging/m;->b:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/firebase/messaging/m;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_2e

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/messaging/m;->b:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1}, Lz7/l;->k(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Lcom/google/android/gms/common/internal/g;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->i()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-static {v1, v2, v3}, La2/c;->j(Landroid/content/Context;Lcom/google/android/gms/common/internal/g;Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->i()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1e

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->f()V

    .line 29
    .line 30
    .line 31
    :cond_1e
    return-void

    .line 32
    :pswitch_1f
    iget-object v0, p0, Lcom/google/firebase/messaging/m;->b:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 33
    .line 34
    iget-object v1, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Lcom/google/firebase/messaging/p;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/google/firebase/messaging/p;->f()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2c

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->j()V

    .line 43
    .line 44
    .line 45
    :cond_2c
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1f
    .end packed-switch
.end method
